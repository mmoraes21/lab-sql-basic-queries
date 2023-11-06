/*Display all available tables in the Sakila database*/
SHOW TABLES;
/*Retrieve all the data from the tables `actor`, `film` and `customer`.*/
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.actor;
/*Retrieve the following columns from their respective tables:
	- 3.1 Titles of all films from the `film` table*/
SELECT title FROM sakila.film;
/*3.2 List of languages used in films, with the column aliased as `language` from the `language` table*/
SELECT * FROM sakila.language;
SELECT name AS language FROM sakila.language;
/*3.3 List of first names of all employees from the `staff` table*/
SELECT * FROM sakila.staff;
SELECT first_name FROM sakila.staff;
/*4. Retrieve unique release years.*/
SELECT * FROM sakila.film;
SELECT DISTINCT release_year FROM sakila.film;
/*5. Counting records for database insights:
	- 5.1 Determine the number of stores that the company has.*/
SELECT * FROM sakila.store;
SELECT COUNT(store_id) FROM sakila.store;
/*- 5.2 Determine the number of employees that the company has.*/
SELECT * FROM sakila.staff;
SELECT COUNT(store_id) FROM sakila.staff;
/*- 5.3 Determine how many films are available for rent and how many have been rented.*/
SELECT * FROM sakila.rental;
SELECT DISTINCT COUNT(inventory_id) FROM sakila.rental;
SELECT DISTINCT COUNT(return_date) FROM sakila.rental;
SELECT * FROM sakila.inventory;
/*5.4 Determine the number of distinct last names of the actors in the database.*/
SELECT * FROM sakila.actor;
SELECT COUNT(DISTINCT(last_name)) FROM sakila.actor;
/*Retrieve the 10 longest films.*/
SELECT MAX(length), title FROM sakila.film GROUP BY length, title LIMIT 10;
/*Use filtering techniques in order to:
	- 7.1 Retrieve all actors with the first name "SCARLETT".*/
    SELECT * FROM sakila.actor;
    SELECT first_name, last_name FROM sakila.actor WHERE first_name = "SCARLETT"