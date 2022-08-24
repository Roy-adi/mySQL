create table employee(
emp_ID int ,
emp_name varchar(20),
salary int,
primary key(emp_ID)
);
alter table employee add column contact int;
truncate table employee;
drop table employee;
insert into employee (emp_ID,emp_name,salary) values (1,'Adi1',100); 
insert into employee (emp_ID,emp_name,salary) values (2,'Adi2',200);
insert into employee (emp_ID,emp_name,salary) values (3,'Adi3',300);
insert into employee (emp_ID,emp_name,salary) values (4,'Adi4',400);
insert into employee (emp_ID,emp_name,salary) values (5,'Adi4',500);    
update employee  set emp_name = 'Aditya' where emp_ID=1;
delete from employee where emp_ID in (5);
