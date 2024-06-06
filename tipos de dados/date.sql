create table documentos(
    documetno_id serial primary key ,
    testo_cabecalho varchar(255) not null,
    data_postagem date not null default current_date
);

select * from documentos;

CREATE TABLE funcionarios (
                              funcionario_id serial PRIMARY KEY,
                              primeiro_nome VARCHAR (255),
                              ultimo_nome VARCHAR (355),
                              nascimento_data DATE NOT NULL,
                              admissão_data DATE NOT NULL
);


select now()::date;
select current_date;

drop table funcionarios;

select funcionario_id, primeiro_nome,ultimo_nome, age(nascimento_data) from funcionarios;

INSERT INTO funcionarios (primeiro_nome, ultimo_nome, nascimento_data, admissão_data)
VALUES ('Shannon','Freeman','1980-01-01','2005-01-01'),
       ('Sheila','Wells','1978-02-05','2003-01-01'),
       ('Ethel','Webb','1975-01-01','2001-01-01'),
       ('mauro','Webb','1975-07-12','2001-01-01');