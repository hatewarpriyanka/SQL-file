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










