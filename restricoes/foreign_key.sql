create table produtos7(
    cod_prod integer primary key,
    nome text,
    preco numeric
);

CREATE TABLE pedidos (
                         cod_pedido integer PRIMARY KEY,
                         cod_prod integer REFERENCES produtos7 (cod_prod),
                         quantidade integer
);

CREATE TABLE clientes(
                         cliente_id INT GENERATED ALWAYS AS IDENTITY,
                         cliente_nome VARCHAR(255) NOT NULL,
                         PRIMARY KEY(cliente_id)
);

CREATE TABLE contatos(
                         contato_id INT GENERATED ALWAYS AS IDENTITY,
                         cliente_id INT,
                         contato_nome VARCHAR(255) NOT NULL,
                         phone VARCHAR(15),
                         email VARCHAR(100),
                         PRIMARY KEY(contato_id),
                         CONSTRAINT fk_cliente
                             FOREIGN KEY(cliente_id)
                                 REFERENCES clientes(cliente_id)
);

INSERT INTO clientes(cliente_nome)
VALUES('XPTO Inc'),
      ('XPTO LTDA');

INSERT INTO contatos(cliente_id, contato_nome, phone, email)
VALUES(1,'Vitor','(55)-111-1234','vitor@teste.com'),
      (1,'VMZ','(55)-111-1235','vmz@teste.com'),
      (2,'Joao','(55)-222-1234','joao@teste.com');
