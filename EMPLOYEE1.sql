create table EMPLOYEE1(
EMPLOYEE_ID numeric (6),
LAST_NAME varchar(26),
JOB_ID varchar(10),
SALARY numeric(8,2),
COMM_PCT numeric(4,2),
MGR_ID numeric(6),
DEPARTMENT_ID numeric(4),
primary key(EMPLOYEE_ID)
);
insert into EMPLOYEE1 values
(198,'Connell','SH_CLERK',2600,2.5,124,50),
(199,'Grant','SH_CLERK',2600,2.2,124,50),
(200,'Whalen','AD_ASSt',4400,1.3,101,10),
(201,'Hartstein','IT_PROGS',6000,null,100,20),
(202,'Fay','AC_MGR',6500,null,210,20),
(204,'Baer','AD_PREs',3500,1.5,101,90),
(205,'Higgins','AC_MGR',2300,null,101,60),
(206,'Gitz','IT_PROGS',5000,null,103,60),
(100,'Kibg','AD_ASST',8956,0.3,108,100),
(101,'Kochar','SH_CLERK',3400,1.3,118,30);
select EMPLOYEE_ID, LAST_NAME, JOB_ID from employee1;
select * from EMPLOYEE1 where DEPARTMENT_ID=60;
select* from EMPLOYEE1 where LAST_NAME='KING';
select JOB_ID as job_title from EMPLOYEE1 group by JOB_ID;
select LAST_NAME, SALARY,SALARY+300 as increase_salary from EMPLOYEE1;
select LAST_NAME , SALARY , (salary*COMM_PCT)+100 as annual_commppensation from EMPLOYEE1;
select*from EMPLOYEE1 where COMM_PCT !=null;
select*from EMPLOYEE1 where COMM_PCT <=0;
select last_name ,salary from EMPLOYEE1 where salary between 4000 and 7000;
select * from EMPLOYEE1 where salary=6000 or salary=6500 or salary=7000;
select*from EMPLOYEE1 where salary !=5000;
select*from EMPLOYEE1 where JOB_ID='SH_CLERK';
update EMPLOYEE1 set JOB_ID='GRADE_A' where salary >5000;
select* FROM EMPLOYEE1 where JOB_ID ='SH_CLERK' or JOB_ID='IT_PROGS'OR JOB_ID='AD_ASST';
select* FROM EMPLOYEE1 where JOB_ID ='SH_CLERK' and SALARY <3000;



