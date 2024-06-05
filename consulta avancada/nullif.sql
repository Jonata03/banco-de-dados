CREATE TABLE postagens
(
    id            serial primary key,
    titulo        VARCHAR(255) NOT NULL,
    trecho        VARCHAR(150),
    corpo         TEXT,
    criado_em     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP
);
INSERT INTO postagens (titulo, trecho, corpo)
VALUES ('test post 1', 'teste de post trecho 1', 'teste de post corpo 1'),
       ('test post 2', '', 'teste de post corpo 2'),
       ('test post 3', null, 'teste de post corpo 3');

select id, titulo, coalesce(nullif(trecho, ''), left(corpo, 40))
from postagens;

CREATE TABLE membros
(
    ID            serial PRIMARY KEY,
    primeiro_nome VARCHAR(50) NOT NULL,
    ultimo_nome   VARCHAR(50) NOT NULL,
    genero        SMALLINT    NOT NULL -- 1: male, 2 female
);

INSERT INTO membros (primeiro_nome,
                     ultimo_nome,
                     genero)
VALUES ('John', 'Doe', 1),
       ('David', 'Dave', 1),
       ('Bush', 'Lily', 2);

SELECT (SUM(
                CASE
                    WHEN genero = 1 THEN
                        1
                    ELSE
                        0
                    END
        ) / SUM(
                CASE
                    WHEN genero = 2 THEN
                        1
                    ELSE
                        0
                    END
            )) * 100 AS "Masculino/feminino"
FROM membros;