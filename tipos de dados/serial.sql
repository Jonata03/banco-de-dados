CREATE TABLE frutas
(
    id   SERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL
);

drop table frutas;

INSERT INTO frutas(nome)
VALUES ('Laranja');

INSERT INTO frutas(id, nome)
VALUES (DEFAULT, 'Maca');

SELECT *
FROM frutas;

SELECT currval(pg_get_serial_sequence('frutas', 'id'));

INSERT INTO frutas(nome)
VALUES ('Banana')
RETURNING id;

SELECT *
FROM frutas;