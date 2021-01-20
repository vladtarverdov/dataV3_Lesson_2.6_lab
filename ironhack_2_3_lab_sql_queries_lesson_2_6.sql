Use sakila;
-- 1
SELECT DISTINCT realease_year
FROM film
ORDER BY release_year desc;
-- 2
SELECT title
FROM film
WHERE title LIKE '%ARMAGEDDON%';
-- 3
SELECT title
FROM film
WHERE title LIKE '%APOLLO';
-- 4
SELECT length
FROM film
ORDER BY length DESC
LIMIT 10;
-- 5
SELECT COUNT(special_features)
FROM film
WHERE 	special_features LIKE '%Behind%';
-- 6
ALTER TABLE staff
DROP COLUMN picture;
-- 7
select *
from customer
where first_name = 'Tammy' AND last_name = 'Sanders';

INSERT INTO staff (staff_id,first_name,last_name,address_id,email,store_id,active,username)
VALUES (3, 'Tammy', 'Sanders', 79, 'TAMMY.SANDERS@sakilacustomer.org',2,1,'Tammy');

select *
from staff

-- 8
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select *
from rental;

select * from inventory
where film_id = 1;

select DISTINCT(rental_id)
from rental
order by rental_id desc
limit 1;

INSERT INTO rental(rental_id,rental_date,inventory_id,customer_id,staff_id)
VALUES (16050,'2021-01-20',1,130,1);

SELECT *
FROM rental
ORDER BY rental_id DESC
LIMIT 1;

-- 9 
SELECT *
FROM customer
WHERE active = 0;

CREATE TABLE deleted_users(customer_id int, email varchar(255), date date);
INSERT INTO deleted_users(customer_id,email,date)
VALUES(16,SANDRA.MARTIN@sakilacustomer.org,'2021-01-20')
VALUES(64,JUDITH.COX@sakilacustomer.org,'2021-01-20')
VALUES(124,SHEILA.WELLS@sakilacustomer.org,'2021-01-20')
VALUES(169,ERICA.MATTHEWS@sakilacustomer.org,'2021-01-20')
VALUES(241,HEIDI.LARSON@sakilacustomer.org,'2021-01-20')
VALUES(271,PENNY.NEAL@sakilacustomer.org,'2021-01-20')
VALUES(315,KENNETH.GOODEN@sakilacustomer.org,'2021-01-20')
VALUES(368,HARRY.ARCE@sakilacustomer.org,'2021-01-20')
VALUES(406,NATHAN.RUNYON@sakilacustomer.org,'2021-01-20')
VALUES(446,THEODORE.CULP@sakilacustomer.org,'2021-01-20')
VALUES(482,MAURICE.CRAWLEY@sakilacustomer.org,'2021-01-20')
VALUES(510,BEN.EASTER@sakilacustomer.org,'2021-01-20')
VALUES(534,CHRISTIAN.JUNG@sakilacustomer.org,'2021-01-20')
VALUES(558,JIMMIE.EGGLESTON@sakilacustomer.org,'2021-01-20')
VALUES(592,TERRANCE.ROUSH@sakilacustomer.org,'2021-01-20')

DELETE FROM customer 
WHERE customer_id IN (16,64,124,169,241,271,315,368,406,446,482,510,534,558,592);