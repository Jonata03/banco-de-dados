select * from categories where id in (1,2);
select * from categories where id not in (1,2);

CREATE TABLE posts (
                       id int GENERATED ALWAYS AS IDENTITY,
                       title text NOT NULL,
                       content text,
                       author int,
                       category int,
                       reply_to int,
                       created_on timestamp,
                       last_edited_on timestamp,
                       editabled boolean,
                       PRIMARY KEY( id )
);

insert into posts(title, content, author, category) values('minha laranja','minha laranja é a melhor laranja do mundo',1,2);
insert into posts(title, content, author, category) values('minha maça','minha maça é a melhor laranja do mundo',1,1);
insert into posts(title, content, author, category, reply_to) values('Re:minha laranja','Não! É a minha laranja a melhor laranja do mundo',2,1,2);

select id, title, content, author, category
from posts where exists (
    select 1 from categories where title ='laranja' and posts.category=id
 );

drop table posts;