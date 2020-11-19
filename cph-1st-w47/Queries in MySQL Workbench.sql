
-- 1. Queries in MySQL Workbench
-- b
USE sakila;
-- c
select * from actor;
-- d
select * from actor where last_name = "Cage";
-- e
select * from actor where first_name != "Zero" and first_name != "Nick";
-- f
select * from actor where first_name in ("NICK", "JOHNNY", "JAMES", "MORGAN", "WHOOPI");
-- g
select * from actor where actor_id >= 50 and actor_id <= 150;
-- h
select * from actor where first_name like "c%";
-- i
select * from actor order by first_name;
-- j
select * from actor order by last_name desc;
-- k
select count(*) from actor;
-- l
select count(distinct first_name) from actor;
-- m
SELECT 
    *
FROM
    film
        JOIN
    film_category
		on
	film.film_id = film_category.film_id
WHERE
    film_category.category_id IN (11);
-- n
SELECT 
    *
FROM
    film
        JOIN
    film_category
		on
	film.film_id = film_category.film_id
WHERE
    film_category.category_id IN (11);