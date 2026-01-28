create schema employee;
use employee;
drop table employee_sales;
create table employee_sales(
sale_id int auto_increment primary key,
employee_name varchar(50),
department varchar(50),
product varchar(50),
region varchar(50),
sale_amount int,
sale_date date
);

describe employee_sales;

insert into employee_sales (employee_name, department, product, region, sale_amount, sale_date)
values ('Rohan', 'Electronics', 'Laptop', 'Mumbai', 55000, '2025-01-01');

insert into employee_sales(employee_name, department, product, region, sale_amount, sale_date)
values ('Anjali', 'Furniture', 'Chair', 'Pune', 12000, '2025-03-01'),
('Karan', 'Electronics', 'Mobile', 'Delhi', 25000, '2025-01-02'),
('Neha', 'Stationery', 'Notebook', 'Mumbai', 3000, '2025-01-03');

select * from employee_sales;

select employee_name, department from employee_sales;

select employee_name, department as dept from employee_sales;

-- Display employee_name and region for all sales.
select employee_name, region from employee_sales;

-- Display all records from the employee_sales table.
select * from employee_sales;

-- Display only employee_name, product, and sale_amount.
select employee_name, product, sale_amount from employee_sales;

-- Display employee_name and region for all sales.
select employee_name, region from employee_sales;

-- Display all records but rename sale_amount as Amount.
select sale_id, employee_name, department, product, region, sale_amount as Amount, sale_date from employee_sales;

-- Display all sales where only product and sale date are shown.
select product, sale_date from employee_sales;

select * from employee_sales;

select * from employee_sales where region='Mumbai';

-- Show all sales with sale_amount greater than 20,000.
select * from employee_sales where sale_amount>20000;

-- Show all sales that happened on 2025-01-02.
select * from employee_sales where sale_date = '2025-01-02';

-- Show all sales with sale_amount between 10,000 and 30,000.
select * from employee_sales where sale_amount>=10000 and sale_amount<=30000;

-- Show all sales that are not from the Stationery department.
select * from employee_sales where department!='stationery';
select * from employee_sales;

-- find all employee whose name start with 'A'
  select * from employee_sales where employee_name like 'A%';
 
--- find all whose name end with 
  select * from employee_sales where employee_name like '%n';
  
  --- find all product that contain the word 'top'
    select * from employee_sales where prodcut  like '%top%';

-- find all employee name with exractly 5 characters 
    select * from employee_sales where employee_name  like '_____'

--- find the product name whose start with 'lap'
    select * from employee_sales where product like 'lap%';
select * from employee_sales;

---display all unique deaartment
select distinct department from employee_sales;

---display all unique region
select distinct region from employee_sales;

---display all unique deaartment and region combination
select distinct department, region  from employee_sales;

-- display the all product sold.
select distinct product from employee_sales;


--- display the all recored sorted by sale_amount (lowerst to highest)
 select * from employee_sales order by sale_amount;

--- display the all recored sorted by sale_amount (highest to lowerst)
 select * from employee_sales order by sale_amount desc;

select * from employee_sales;

--- display the all recored sorted by sale_date (latest date frist )
 select * from employee_sales order by sales_date desc;

--- display the all recored sorted by department allphabatically.
 select * from employee_sales order by department;
 
 --- display the all recored sorted by department, and with each department by hoghest sales amount.
  select * from employee_sales order by department asc, sale_amount desc;
 
--- display the frist  3 recoreds.
 select * from employee_sales limit 3;
 
--- display the top 2 highest sales.
 select * from employee_sales order by sale_amount desc limit 2;

--- display the latest  3 sales recoreds.
 select * from employee_sales order by sale_date desc limit 3;

--- display recoreds 2 to 4 from table.
select * from employee_sales limit 1,4;

--- display recoreds  3 to  5from table.
select * from employee_sales limit 3,5;

select * from employee_sales;

insert into employee_sales(employee_name, department, product, region, sale_amount, sale_date)
values ('Anjali', 'Furniture', 'Chair', 'Pune', 12000, '2025-03-01'),
('Karan', 'Electronics', 'Mobile', 'Delhi', 25000, '2025-01-02'),
('Neha', 'Stationery', 'Notebook', 'Mumbai', 3000, '2025-01-03');


select * from employee_sales

--add column - payment mode to the exisiting table with constrain not null 
alter table employee_sales add column payment_mode varchar (30) not null;

describe employee_sales;

---add multilpe table column - discount , remarks
alter table employee_sales add column discount int,remark vanchar (50);


add the colume a specific position - email after eployee_name
alter table employee_sales add column email vanchar (30) after employee_name;

describe employee_sales;

change the data type of sale_amount to decimal 
when you want to change name as well data type use change keyword.
alter table employee_sales modify sale_amount decimal;

--- increses cloumn employee_name lenght to 100 size 
alter table employee_sales modify employee_name varchar (100);

-- add not null contrain depatment 
alter table employee_sales modify department varchar (30) not null;

select * from employee_sales;

update employee_sales 
set sale_amount = 45000
where sale_id -3;

----update the region to banglore name rohan
update employee_sales set region="bangalore" where employee_name="Rohan";
select * from employee_sales;

----update both sale_amount and region for the recored with sale_id - 5
update employee_sales set sale_amount= 15000, region='nagpur' where sale_id-5;

-----increses the sale amount by 2000 for all electronic sales in delhi.
update employee_sales set sale_amount=sale_amount+2000, department='electronic' where region='pune';
select * from employee_sales;

--update employee_sales region to kolkata for all employee whose name start with 'A'
update employee_sales set region='kolkata' where employee_name like'A%';

select * from employee_sales;
