do $$
begin
  raise info 'mensagem de informação %', now() ;
  raise log 'mensagem de log %', now();
  raise debug 'mensagem debug %', now();
  raise warning 'mensagem de aviso %', now();
  raise notice 'mensagem de notificação %', now();
end $$;

CREATE TABLE meuesquema.comentarios (id serial PRIMARY KEY, comentario text, última_alteração timestamp);

INSERT INTO meuesquema.comentarios (comentario, última_alteração ) VALUES ('Oi, isso é um teste de uma função!', now());

CREATE FUNCTION meuesquema.função_void(identificacao int, comment text) RETURNS void AS $$
DECLARE
    curtime timestamp := now();
BEGIN
    UPDATE meuesquema.comentarios SET última_alteração = curtime, comentario = comment
    WHERE comentarios.id = identificacao;
END;
$$ LANGUAGE plpgsql;


CREATE FUNCTION meuesquema.notice(identificacao int, comment text) RETURNS void AS $$
DECLARE
    curtime timestamp := now();
BEGIN
    RAISE NOTICE 'Atualizando registro id = %',identificacao;
    UPDATE meuesquema.comentarios SET última_alteração = curtime, comentario = comment
    WHERE comentarios.id = identificacao;
END;
$$ LANGUAGE plpgsql;


-- classes de operadores

create or replace function normalize_si(text) returns text as
    $$
    begin return
        substring($1, 9, 2) ||
        substring($1, 7, 2) ||
        substring($1, 5, 2) ||
        substring($1, 1, 4);
    end ;
    $$
language 'plpgsql' immutable;

select normalize_si(' 1118090878');