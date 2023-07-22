show tables;

# To get a description of the table:
desc sales;

# To select all the columns from a table:
select * from sales;

# To select specific columns form a table:
select SaleDate, Amount, Customers from sales;

# The columns can be rearranged:
select Amount, Customers, GeoID from sales;

# Calculations
select SaleDate, Amount, Boxes, Amount / Boxes 'Amount per box' from sales; 

# Filtering the data:
select * from sales
where Amount > 10000;

# Sorting the data in ascending order:
select * from sales
where Amount > 10000
order by Amount;

# Sorting the data in descending order:
select * from sales
where Amount > 10000
order by Amount desc;

# Filtering and sorting the data with multiple criterias:
select * from sales
where GeoID = 'G1'
order by PID, Amount desc;

select * from sales
where amount > 10000 and saledate >= '2022-01-01';

select amount, saledate from sales
where amount > 10000 and year(saledate) = 2022
order by amount desc;

# Selecting specific data:
select * from sales
where boxes > 0 and boxes<=50;

# Selecting specific data using 'between' keyword:
select * from sales
where boxes between 0 and 50;

# Selecting data for a specific weekday:
select SaleDate, amount, boxes, weekday(saledate) as 'Day of week' 
from sales
where weekday(saledate) = 4;

# The 'people' table
select * from people
where Team = 'Delish' or Team = 'Jucies';

# The 'in' clause:
select * from people
where team in ('Delish', 'Jucies');

# Pattern matchin / the 'like' operator:
select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';

# 'case' operator:
select saledate, amount,
	case 	when amount < 1000 then 'under 1k'
			when amount < 5000 then 'under 5k'
			when amount < 10000 then 'under 10k'
		else '10k or more'
		end as 'Amount Category'
 from sales;

