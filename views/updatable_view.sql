 create view eua_cidade as select city,country_id from city where country_id = 103;
 INSERT INTO eua_cidade (city, country_id)
 VALUES('San Jose', 103);

 DELETE
 FROM
     eua_cidade
 WHERE city = 'San Jose';
drop view  eua_cidade;
 CREATE VIEW eua_cidade AS SELECT
                               city_id,
                               city,
                               country_id
                           FROM
                               city
                           WHERE
                               country_id = 103
                           ORDER BY
                               city;

 INSERT INTO eua_cidade (city, country_id)
 VALUES ('Birmingham', 102);

 CREATE OR REPLACE VIEW eua_cidade AS SELECT city_id, city, country_id FROM city WHERE country_id = 103
    ORDER BY city WITH CHECK OPTION;

 INSERT INTO eua_cidade (city, country_id)
 VALUES ('Cambridge', 102);

  SELECT city_id, city, country_id FROM city WHERE country_id = 103
    ORDER BY city

