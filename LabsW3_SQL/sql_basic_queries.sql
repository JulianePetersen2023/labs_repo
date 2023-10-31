use sakila;        #sql basic queries

show tables;

# Retrieve all the data from the tables actor, film and customer.
select *
from actor, film, customer;

# Retrieve the following columns from their respective tables:
# 3.1 Titles of all films from the film table
# 3.2 List of languages used in films, with the column aliased as language from the language table
# 3.3 List of first names of all employees from the staff table
select title
from film;

select `name`
from `language`;

select first_name
from staff;

# Retrieve unique release years.
select distinct release_year
from film;

# Counting records for database insights:
# 5.1 Determine the number of stores that the company has.
# 5.2 Determine the number of employees that the company has.
# 5.4 Determine the number of distinct last names of the actors in the database.
select count(store_id)
from store;

select count(staff_id)
from staff;

select distinct last_name
from actor;

# Retrieve the 10 longest films.
select length
from film
order by length desc
limit 10;

# Use filtering techniques in order to:
# 7.1 Retrieve all actors with the first name "SCARLETT".
select first_name
from actor
where first_name = "SCARLETT";

# LAB 2
#1.1 Determine the shortest and longest movie durations and name the values as max_duration and min_duration.
select max(length) as max_duration 
from film;

select min(length) as min_duration
from film;

# 1.2. Express the average movie duration in hours and minutes. Don't use decimals.
# Hint: Look for floor and round functions.
select round(avg(length)) 
from film;

# 2.1 Calculate the number of days that the company has been operating.
# Hint: To do this, use the rental table, and the DATEDIFF() function to subtract 
# the earliest date in the rental_date column from the latest date.
select datediff(max(rental_date), min(rental_date)) 
from rental;

# 2.2 Retrieve rental information and add two additional columns 
# to show the month and weekday of the rental. Return 20 rows of results.
alter table rental 
add column `month` varchar (40),
add column weekday varchar (40);

select `month`, weekday
from rental
limit 20;

# 3. Retrieve the film titles and their rental duration. If any rental duration value is NULL, 
# replace it with the string 'Not Available'. Sort the results of the film title in ascending order.
select title, rental_duration, IFNULL(rental_duration, 'Not Available')
from film;

# Next, you need to analyze the films in the collection to gain some more insights. Using the film table, determine:
#1.1 The total number of films that have been released.
#1.2 The number of films for each rating.
#1.3 The number of films for each rating, sorting the results in descending order of the number of films. 

select count(film_id)
from film;

select rating, count(film_id) as films
from film
group by rating;

select rating, count(film_id) as films
from film
group by rating
order by count(film_id) desc;

# Using the film table, determine:
# 2.1 The mean film duration for each rating, and sort the results in descending order of the mean duration. 
# Round off the average lengths to two decimal places. This will help identify popular movie lengths for each category.
# 2.2 Identify which ratings have a mean duration of over two hours in order to help select films for customers 
# who prefer longer movies.

select rating, round(avg(length), 2) 
from film
group by rating
order by avg(length) desc;

select rating, round(avg(length), 2) as avg_length
from film
group by rating
having avg_length > 120;


