CREATE TABLE pessoa_fisica
(
    id_pessoa SERIAL,
    nome      VARCHAR(80),
    sobrenome VARCHAR(200),
    sexo      CHAR(1),
    cpf       CHAR(11),
    PRIMARY KEY (id_pessoa)
);

INSERT INTO pessoa_fisica (id_pessoa, nome, sobrenome, sexo, cpf)
VALUES (1, 'Joao', 'Alves', 'M', 33333333333);


create function get_pessoas() returns setof pessoa_fisica as
$$
begin
    return query select * from pessoa_fisica;
end;
$$ language 'plpgsql';

select get_pessoas();

create function ver_tempo_filme(len_from int, len_to int)
    returns int
    language plpgsql as
$$
declare
    film_count integer;
begin
    select count(*)
    into film_count
    from film
    where length between len_from and len_to;
    return film_count;
end;
$$;

select length from film