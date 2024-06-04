create table projeto(
        id int,
        numero_ident int,
        nome varchar(40)
);

alter table projeto add constraint pk_id primary key (id);
alter table projeto drop primary key;

create table meu_projeto(
    projeto_id int auto_increment primary key ,
    id int,
    marco_nome varchar(100),
    constraint fk_projeto foreign key (id) references projeto (id)
);
create table meu_projeto(
    projeto_id int auto_increment primary key ,
    id int,
    marco_nome varchar(100),
);

alter table meu_projeto add constraint  fk_projeto foreign key(id) references projeto(id);
drop table meu_projeto
