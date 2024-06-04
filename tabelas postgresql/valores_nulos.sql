insert into categories (title) values ('limão');

select * from categories;

select title, description from categories where description is null;

select title, description from categories where description is not null;

insert into categories (title, description) values ('damasco','frutas');

select * from categories order by description nulls last;

-- atualizando e removendo dados

create temp table temp_categories as select * from categories;
 select * from temp_categories;

UPDATE temp_categories SET title = 'pessego' WHERE id = 4;

DELETE FROM temp_categories WHERE id = 1;

DELETE FROM temp_categories WHERE description IS NULL;


DELETE FROM temp_categories;
INSERT INTO temp_categories SELECT * FROM categories;