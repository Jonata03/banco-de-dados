CREATE TABLE contatos (
                          contato_id uuid DEFAULT uuid_generate_v4(),
                          primeiro_nome VARCHAR NOT NULL,
                          ultimo_nome VARCHAR NOT NULL,
                          email VARCHAR NOT NULL,
                          tel VARCHAR,
                          PRIMARY KEY (contato_id)
);

INSERT INTO contatos (
    primeiro_nome,
    ultimo_nome,
    email,
    tel
)
VALUES
    (
        'Vitor',
        'Smith',
        'vitor.smith@teste.com',
        '408-237-2345'
    ),
    (
        'Joao',
        'Smith',
        'joao.smith@teste.com',
        '408-237-2344'
    ),
    (
        'Lucas',
        'Smith',
        'lucas.smith@teste.com',
        '408-237-2343'
    );

drop table contatos;

select * from contatos;