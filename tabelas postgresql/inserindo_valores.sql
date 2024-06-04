CREATE TABLE users
(
    id       int GENERATED ALWAYS AS IDENTITY,
    username text NOT NULL,
    gecos    text,
    email    text NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username)
);
drop table users;

INSERT INTO USERS (username, gecos, email)
values ('username', 'tomagecos', 'meuEmail');

select * from users;

CREATE TABLE categories
(
    id          int GENERATED ALWAYS AS IDENTITY,
    title       text,
    description text,
    PRIMARY KEY (id)
);

insert into categories (title,description) values ('maça', 'frutas'), ('laranja','frutas'),('alface','vegetal');

select * from categories;

select * from categories where description = 'vegetal';
select * from categories where description ='frutas' and title='laranja';
select * from categories where description ='frutas' order by title desc;