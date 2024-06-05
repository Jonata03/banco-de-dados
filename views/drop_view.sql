create view filme_master as select film_id,title,release_year,length,name category
    from film inner join film_category using (film_id) inner join category using(category_id);

create view horror_filme as select film_id, title, release_year,length
    from filme_master where category = 'Horror';

create view comedy_filme as select film_id, title, release_year,length
    from filme_master where category = 'Comedy';

drop view horror_filme;

CREATE VIEW film_category_stat AS
SELECT
    name,
    COUNT(film_id)
FROM category
         INNER JOIN film_category USING (category_id)
         INNER JOIN film USING (film_id)
GROUP BY name;


CREATE VIEW film_length_stat AS
SELECT
    name,
    SUM(length) film_length
FROM category
         INNER JOIN film_category USING (category_id)
         INNER JOIN film USING (film_id)
GROUP BY name;
drop view filme_master cascade;
DROP VIEW film_length_stat, film_category_stat;