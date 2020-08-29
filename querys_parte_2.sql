-- COUNT
select count(*) from Customers;

select count(CustomerId) as total
from Customers
where City='London';

select city,count(CustomerId) as totales
from Customers
group by city;

-- MIN
select min(BirthDate) from Employees;

select min(BirthDay) 
from Employees 
where City='Seattle';

select city,min(BirthDate)
from Employees
group by city;

--MAX
select max(BirthDate) from Employees;

select max(BirthDay) 
from Employees 
where City='Seattle';

select city,max(BirthDate)
from Employees
group by city;

--SUM
select sum(freight) as carga 
from Orders;

select sum(freight) as kg
from Orders
where shipCountry=’Germany’;

select shipCountry,sum(freight) as kg
from Orders
group by shipCountry;

--AVG
select avg(freight) as carga_promedio 
from Orders;

--Having
select ShipCity,sum(freight) as carga from Orders
group by shipCity
having sum(freight)>100;

select city,count(CustomerId) as totales
from Customers
group by city
having count(CustomerId)>1;

--UPDATE
update customers 
set CompanyName='Moth Academy' 
where CustomerId='ALFKI';

update customers 
set CompanyName='Moth Academy',
    ContactName='Julio Morales'
where CustomerId='ALFKI';

update customers set CompanyName='Moth Academy';

--DELETE
delete from customers 
where CompanyName='Moth Academy'
and   ContactName='Julio';

delete from customers;

--TRUNCATE
truncate table customers;

-- drop table
drop table customers;


