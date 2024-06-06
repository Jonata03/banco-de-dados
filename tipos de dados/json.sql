create table pedidos
(
    id serial not null primary key,
    info json not null
);

INSERT INTO pedidos (info)
VALUES ('{
  "cliente": "John Doe",
  "itens": {
    "produto": "Beer",
    "qnt": 6
  }
}');


INSERT INTO pedidos (info)
VALUES ('{
  "cliente": "Lily Bush",
  "itens": {
    "produto": "Diaper",
    "qnt": 24
  }
}'),
       ('{
         "cliente": "Josh William",
         "itens": {
           "produto": "Toy Car",
           "qnt": 1
         }
       }'),
       ('{
         "cliente": "Mary Clark",
         "itens": {
           "produto": "Toy Train",
           "qnt": 2
         }
       }');

select *
from pedidos;

SELECT info -> 'cliente' AS cliente
FROM pedidos;

SELECT info ->> 'cliente' AS cliente
FROM pedidos;

SELECT info -> 'itens' ->> 'produto' as produtos
FROM pedidos
order by produtos;
-- o indicador precisa ser explicito (->>) pq o order by nao consegue ordenar uma String json e o db entra em ambiguidade