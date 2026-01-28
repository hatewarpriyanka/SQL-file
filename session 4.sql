create schema customer_info;
use customer_info;
create table student(
roll_no int,
name varchar(30),
place varchar(30)
);

show tables;
drop table student;

create table teacher(
teacher_id int,
teacher_name varchar(30),
subject varchar(30)
);

describe teacher;

drop schema customer_info;

create schema humans;
use humans;
create table student(
student_id int primary key,
name varchar(30) not null,
email varchar(30) unique,
age int check(age>=18),
city varchar(30) default 'Mumbai'
);
describe student;

show tables;

alter table student change student_id s_id int;

alter table student modify s_id float;

alter table student add column experience int;

alter table student add column phone int after email;

alter table student drop column phone;

rename table student to student_info;



truncate table student_info;

/*
This is comment
*/
#This is a comment



