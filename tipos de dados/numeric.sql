create table produtos (
    id serial primary key,
    nome varchar(50),
    preco numeric(5,2)
);

insert into produtos (nome, preco) values ('phone', 500.508765),( 'notebook', 100.508765);

select * from produtos;

update produtos set preco  = 'NaN' where id =1;