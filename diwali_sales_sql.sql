---- Diwali Sales ANALYSIS --
CREATE TABLE Sales(
	User_ID Int ,
	Cust_name varchar(30),
	Product_ID varchar(20),
	Gender varchar(5),
	Age_Group varchar(10),
	Age int,
	Marital_Status int,
	State varchar(20),
	Zone varchar(20),
	Occupation varchar(20),
	Product_Category varchar(50),
	Orders	int,
	Amount	float

);
select * from sales;
--listing customer name along with their occupation---
select cust_name, Occupation from sales;

--Showing all unique occupations---
select distinct(occupation) from sales;
--count of unique occupation--
select count(distinct(occupation)) from sales;

--Get all customers from Andhra Pradesh---
select * from sales
where state = 'Andhra Pradesh';

--Find customers aged between 25 and 35:--
select * from sales where age between 25 and 35;

--List female customers in the IT Sector:

select * from sales where gender = 'F' and occupation = 'IT Sector';

--tOTAL AMOUNT SPENT BY EACH STATE---
SELECT sum(amount), state from sales 
group by state;

---Average number of orders by age group:--
select avg(orders), age_group from sales
group by age_group;

--Count of customers by marital status:--
select count(*), Marital_Status from sales
group by Marital_Status;


--Top 5 highest paying customers ---
select amount , cust_name from sales
order by amount desc
limit 5;

--States with the highest average spend per customer:

select state, avg(amount) from sales
group by state
order by avg(amount) desc
limit 5;

--Find duplicate users (same User_ID appearing more than once):---
select user_id, count(*) from sales
group by user_id
having count(*) >1;

---Customers who made more than 2 orders:---
select cust_name , count(Orders) from sales

GROUP BY cust_name
having count(Orders) > 2;

select * from sales where orders >2;

--Occupation-wise total revenue and average orders:--

Select occupation, Sum(amount), avg(Orders) from sales
group by occupation;



----Using Window function-----
--Ranking customers by spend within each state--
select cust_name, state, amount,
rank() over( partition by state order by amount desc) as rank_in_state from sales;
--- rank function skips the gaps. For eg: if 2 person spend the same amount they will be ranked the samei.e. 1,1 and the next rank will be 3 instead of 2. However, it works exactlt opposite in case of denserank().

select cust_name, state, amount,
dense_rank() over (partition by state order by amount desc) as rank_in_state from sales;

----  Assign a unique row number for customers by state---
select cust_name, state, amount,
Row_NUMBER() over (partition by state order by amount desc) as row_number from sales;

------- Divide customers into quartiles based on spend-----
SELECT cust_name,amount, NTILE(4) over (order by amount desc)
from sales;

-- Compare customer’s amount with previous and next customer--
Select amount, cust_name, LAG(amount) over (order by amount desc) as previous_amount,
LEAD(amount) over (order by amount desc) as Next_amount  from sales;

 ----Cumulative distribution of spend----
SELECT Cust_name, Amount,
       CUME_DIST() OVER (ORDER BY Amount DESC) AS Cumulative_Distribution
FROM Sales;




 







