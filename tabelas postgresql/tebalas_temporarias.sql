begin work;
create temp table if not exists temp_users
(
    pk       int GENERATED ALWAYS AS IDENTITY,
    username text NOT NULL,
    gecos    text,
    email    text NOT NULL,
    PRIMARY KEY (pk),
    UNIQUE (username)
) on commit drop;
drop table temp_users;

commit work;

CREATE UNLOGGED TABLE if not exists unlogged_users
(
    pk       int GENERATED ALWAYS AS IDENTITY,
    username text NOT NULL,
    gecos    text,
    email    text NOT NULL,
    PRIMARY KEY (pk),
    UNIQUE (username)
);

CREATE TYPE usuario_basico AS(
    usuario varchar(50),
    pwd     varchar(10)
);
CREATE TABLE super_usuario OF usuario_basico(
    CONSTRAINT pk_sui PRIMARY KEY(usuario)
);

ALTER TYPE usuario_basico ADD ATTRIBUTE telefone varchar(10) CASCADE;