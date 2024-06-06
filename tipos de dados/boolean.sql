CREATE TABLE estoque_disponivel
(
    produto_id INT PRIMARY KEY,
    disponivel BOOLEAN NOT NULL
);

INSERT
INTO estoque_disponivel (produto_id, disponivel)
VALUES (100, TRUE),
	(200, FALSE),
	(300, 't'),
	(400, '1'),
	(500, 'y'),
	(600, 'yes'),
	(700, 'no'),
	(800, '0');

select * from estoque_disponivel where  disponivel;

update estoque_disponivel set disponivel = 'true' where not disponivel;