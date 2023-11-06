use sakila;

select *
from customer;

#1 First, create a view that summarizes rental information for each customer. 
# The view should include the customer's ID, name, email address, and total number of rentals (rental_count).

CREATE VIEW rental_info AS
SELECT customer_id, first_name, last_name, email, count(rental_id) as rental_count
FROM customer
inner join rental
using (customer_id)
group by customer_id;
                    
                    
#2 Create a Temporary Table that calculates the total amount paid by each customer (total_paid). 
# The Temporary Table should use RENTAL_count to join with the payment table and calculate the total amount paid by each customer.

CREATE TEMPORARY TABLE total_paid as
select rental_info.customer_id, sum(amount) as total_amount_paid
from rental_info
inner join payment
using (customer_id)
group by customer_id;

select * from total_paid;


#3 Step 3: Create a CTE and the Customer Summary Report
# Create a CTE that joins the rental summary View with the customer payment summary Temporary Table created in Step 2. 
# The CTE should include the customer's name, email address, rental count, and total amount paid.

with CTE_CustomerRentalSummary as (
    select first_name, last_name, email, rental_count, total_amount_paid
    from rental_info
    inner join total_paid
    using (customer_id));


