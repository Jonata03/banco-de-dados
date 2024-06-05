CREATE TABLE produtos
(
    cód_prod int,
    nome     text,
    preco    numeric CHECK (preco > 0)
);
CREATE TABLE produtos2
(
    cód_prod int,
    nome     text,
    preco    numeric constraint  chk_preco_positivo CHECK (preco > 0)
);

CREATE TABLE produtos3
(
    cód_prod int,
    nome     text,
    preco    numeric CHECK (preco > 0),
    preco_com_desconto    numeric CHECK (preco_com_desconto > 0),
    check (preco > preco_com_desconto)
);


