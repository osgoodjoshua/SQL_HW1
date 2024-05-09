-- 1. How many actors are there with the last name ‘Wahlberg’? Answer: 2
select * from actor;
select last_name from actor where last_name like 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99? Answer: 5,602
select * from payment;
select count(amount) from payment where amount >= 3.99 and amount <= 5.99;


-- 3. What film does the store have the most of? (search in inventory) Answer: I recieved 71 titles that had 8 in stock
select * from inventory;
select film_id, count(film_id) as film_count from inventory
group by film_id order by film_count desc;


-- 4. How many customers have the last name ‘William’? Answer: 0
select * from customer;
select first_name, last_name from customer where last_name like 'William';


-- 5. What store employee (get the id) sold the most rentals? Answer: Staff ID #2
select * from payment;
select staff_id, sum(amount) as total_amt from payment
group by staff_id order by sum(amount);


-- 6. How many different district names are there? Answer: 378
select * from address;
select count(distinct district) from address;


-- 7. What film has the most actors in it? (use film_actor table and get film_id) Answer: 508 "Lambs Cincinatti"
select * from film_actor;
select count(actor_id) as total_actors, film_id from film_actor
group by film_id order by total_actors desc;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) Answer: 13
select * from customer;
select store_id, last_name from customer
where store_id = '1' and last_name like '%es';


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250) Answer: None (Not really clear on what the question is asking.)
select * from payment;
select customer_id, amount, count(payment_id) as rentals from payment
where customer_id >= 380 and customer_id <= 430
group by customer_id, amount order by customer_id desc;


-- 10. Within the film table, how many rating categories are there? And what rating has the most 
-- movies total?  Answer: 5 categories; PG-13
select * from film;
select rating, count(film_id) from film
group by rating order by count(film_id) desc;


