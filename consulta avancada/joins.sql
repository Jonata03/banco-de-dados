select c.id,c.title,p.id,p.category,p.title from categories c,posts p where c.id=p.category;
select c.id,c.title,p.id,p.category,p.title from categories c inner join posts p on c.id=p.category;

-- left join

select c.*,p.category, p.title from categories c left join posts p on c.id=p.category;

select c.* from categories c left join posts p on p.category= c.id where p.category is null;

-- right join

select c.*,p.category, p.title from posts p left join categories c on c.id=p.category;

-- full outer join

CREATE TABLE tags (
                      id int GENERATED ALWAYS AS IDENTITY,
                      tag text,
                      parent int,
                      PRIMARY KEY( id )
);

CREATE TABLE j_posts_tags (
                              tag_id int,
                              post_id int,
                              PRIMARY KEY( post_id )
);

insert into tags (tag,parent) values ('frutas',NULL);
insert into tags (tag,parent) values ('vegetais',NULL);

insert into j_posts_tags values (1,2),(1,3);

select * from tags;

select jpt.*,t.*,p.title from j_posts_tags jpt inner join tags t on jpt.tag_id=t.id inner join posts p on jpt.post_id=p.id;

select jpt.*,t.*,p.title from j_posts_tags jpt full outer join tags t on jpt.tag_id=t.id full outer join posts p on jpt.post_id=p.id;

select distinct p1.title,p1.author,p1.category from posts p1 where p1.author=1;

select distinct p2.title,p2.author,p2.category from posts p2 where p2.author=2;

select distinct p2.title,p2.author,p2.category from posts p1,posts p2 where p1.category=p2.category and p1.author<>p2.author and p1.author=1 and p2.author=2;

select distinct p2.title,p2.author,p2.category from posts p1 inner join posts p2 on ( p1.category=p2.category and p1.author<>p2.author) where p1.author=1 and p2.author=2;
