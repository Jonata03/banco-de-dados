CREATE TABLE itens (
                       ID serial PRIMARY KEY,
                       produto VARCHAR (100) NOT NULL,
                       preço NUMERIC NOT NULL,
                       desconto NUMERIC
);
INSERT INTO itens (produto, preço, desconto)
VALUES ('A', 1000 ,10),
       ('B', 1500 ,20),
       ('C', 800 ,5),
       ('D', 500, NULL);

SELECT produto, (
    preço - CASE
                WHEN desconto IS NULL THEN
                    0
                ELSE
                    desconto
        END
    ) AS preço_total
FROM itens;

SELECT
    produto,
    (preço - COALESCE(desconto,0)) AS preço_total
FROM
    itens;