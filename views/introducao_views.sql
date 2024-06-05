SELECT cu.customer_id                       AS id,
       cu.first_name || ' ' || cu.last_name AS nome,
       a.address                            AS "endereco",
       a.postal_code                        AS "cod postal",
       a.phone                              AS "tel",
       city.city                            AS "cidade",
       country.country                      AS "pais",
       CASE
           WHEN cu.activebool THEN 'ativo'
           ELSE ''
           END                              AS notes,
       cu.store_id                          AS sid
FROM customer cu
         INNER JOIN address a USING (address_id)
         INNER JOIN city USING (city_id)
         INNER JOIN country USING (country_id);

create view cliente_master as
SELECT cs.customer_id                       AS id,
       cs.first_name || ' ' || cs.last_name AS nome,
       a.address                            AS "endereco",
       a.postal_code                        AS "cod postal",
       a.phone                              AS "tel",
       city.city                            AS "cidade",
       country.country                      AS "pais",
       CASE
           WHEN cs.activebool THEN 'ativo'
           ELSE ''
           END                              AS notes,
       cs.store_id                          AS sid
FROM customer cs
         INNER JOIN address a USING (address_id)
         INNER JOIN city USING (city_id)
         INNER JOIN country USING (country_id);

select * from cliente_master;

CREATE VIEW cliente_master2 AS
SELECT cs.customer_id AS id,
       cs.first_name || ' ' || cs.last_name AS nome,
       a.address AS "endereco",
       a.postal_code AS "cod postal",
       a.phone AS "tel",
       city.city AS "cidade",
       country.country AS "pais",
       CASE
           WHEN cs.activebool THEN 'ativo'
           ELSE ''
           END AS notes,
       cs.store_id AS sid,
       cs.email
FROM customer cs
         INNER JOIN address a USING (address_id)
         INNER JOIN city USING (city_id)
         INNER JOIN country USING (country_id);

alter view cliente_master2 rename to cliente_master;

drop view cliente_master;