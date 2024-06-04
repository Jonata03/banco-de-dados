create table tabela_teste(
    id SERIAL
);
create table frutas(
    id serial primary key,
    name varchar not null
);

insert into frutas(name) values ('laranja');
insert into frutas(id,name) values(default,'maça');

insert into frutas(name) values ('banana') returning id;

CREATE TABLE teams2 (
                        id SERIAL UNIQUE,
                        name VARCHAR(90)
);

ALTER SEQUENCE teams2_id_seq RESTART WITH 3 INCREMENT BY 3;

INSERT INTO teams2 (name) VALUES ('Crystal Palace');
INSERT INTO teams2 (name) VALUES ('Leeds United');

SELECT * FROM teams2;

SELECT LASTVAL()