---Calculates the total size of the customer base.

select COUNT(customer_id) as total_customers from customers;


---Calculates the total number of orders placed.

select COUNT(transaction_id) as total_transactions from transactions;


---Calculates the total gross revenue generated.

select SUM(amount) as total_sales from transactions;


---Analyzes customer payment preferences by counting transactions per method.

select payment_method, COUNT(transaction_id) as total_payment_method from transactions group by payment_method;


---Filters and lists customer profiles located specifically in the Marmara region.

select * from customers where region = 'Marmara';


---Analyzes total revenue contribution based on customer loyalty tiers (Gold, Silver, etc.).

select customers.membership_type, SUM(transactions.amount) as total_sales from customers inner join transactions on customers.customer_id = transactions.customer_id group by customers.membership_type;


---Identifies and lists the top 5 highest-value transactions.

select TOP 5 customer_id, amount from transactions order by amount DESC;


---Ranks product categories from highest to lowest based on total sales performance.

select category, SUM(amount) as total_amount from transactions group by category order by total_amount DESC;


---Segments and lists high-value (VIP) customers who spent over 5,000 units in total.

select customer_id, SUM(amount) as total_amount from transactions group by customer_id having SUM(amount) > 5000 order by total_amount DESC;


---Filters and displays only the highly popular payment methods used more than 3 times.

select payment_method, COUNT(transaction_id) as total_method from transactions group by payment_method having COUNT(transaction_id) > 3 order by total_method DESC;


---Ranks and displays the total spending of individual Gold members from highest to lowest.

select customers.customer_name, transactions.payment_method, SUM(amount) as total_amount from customers inner join transactions on customers.customer_id = transactions.customer_id where payment_method = 'Gold' group by payment_method, customer_name order by total_amount DESC;