show databases;

USE sakila;

SELECT * FROM actor WHERE actor_id % 10 = 0;

SELECT * FROM film;

SELECT * FROM actor;

SELECT description FROM film WHERE film_id = 100;

SELECT * FROM film WHERE rating = 'R';

SELECT * FROM film WHERE rating != 'R';

SELECT * FROM film WHERE special_features = 'deleted scenes';

SELECT * FROM film ORDER BY length LIMIT 10;

SELECT DISTINCT last_name FROM actor;

SELECT * FROM film WHERE special_features LIKE "%Deleted Scenes%";

SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(*) > 1;

SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(*) < 2;

SELECT actor.actor_id, actor.first_name, actor.last_name,
       count(actor_id) as film_count
FROM actor JOIN film_actor USING (actor_id)
group by actor_id
order by film_count desc
limit 1;

select film.title, store.store_id, inventory.inventory_id
from inventory join store using (store_id) join film using (film_id)
where film.title = 'Academy Dinosaur' and store.store_id = 1;

SELECT * FROM inventory JOIN rental ON inventory.inventory_id = rental.inventory_id WHERE inventory.film_id = (
SELECT film_id FROM film WHERE title = "Academy Dinosaur"
);











