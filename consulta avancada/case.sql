select sum(
               case when rental_rate = 0.99 then 1 else 0 end
       ) as "Econômico",
       sum(
               case when rental_rate = 2.99 then 1 else 0 end
       ) as "Popular",
       sum(
               case when rental_rate = 4.99 then 1 else 0 end
       )as "Premium" from film;