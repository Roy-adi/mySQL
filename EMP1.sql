create table emp1(
ID numeric(2),
emp_Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);

alter table emp1 modify Basic integer(6);

alter table emp1 modify emp_Name varchar(15);
#CREATING ANOTHER TABLE
create table EMP_trainee(
Emp_id numeric(2),
emp_Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2),
primary key(Emp_id)
);

insert into emp1 values
(1,'rohit',6700,'Manager',24),
(2,'sunil',6200,'Engineer',27),
(3,'Payal',6300,'Engineer',25),
(4,'Kunal',6700,'Trainee',28),
(5,'Sunita',6230,'Trainee',26),
(6,'bimal',7000,'Trainee',25);

insert into EMP_trainee select*from emp1 where Designation='Trainee';
#7.Display the structure of both the tables.
select * from  emp1,EMP_trainee;
alter table emp1 add Skill varchar(15)after Age;
alter table emp1 add DOJ date after Age;
SET SQL_SAFE_UPDATES = 0;
update emp1 set Skill='CE'where id=1;
update emp1 set Skill='ME'where id=2;
update emp1 set Skill='ECE'where id=3;
update emp1 set Skill='IT'where id=4;
update emp1 set Skill='CSE'where id=5;
update emp1 set Skill='EE'where id=6;
update emp1 set DOJ='2000-01-26' where ID=1;
update emp1 set DOJ='2000-02-26'where ID=2;
update emp1 set DOJ='2000-03-26'where ID=3;
update emp1 set DOJ='2000-04-26'where ID=4;
update emp1 set DOJ='2000-05-26'where ID=5;
update emp1 set DOJ='2000-06-26'where ID=6;
alter table emp_trainee modify Designation varchar(40);
update EMP_trainee set Designation='Programmer_Trainee';
#10. Update more than one row in one query in EMP1 table.
update emp1 set Age='22'where ID=1;
#11. Change the data type of ID in EMP1 table to varchar2 and increase the data size to5.
alter table emp1 modify ID varchar(5);
#.Display both the tables EMP1 and EMP_trainee.
select * from emp1,EMP_trainee;
#.Rename the column Age of EMP1 table to Age_in_Years.
alter table emp1 rename column Age to Age_in_Years;
#14.Delete the details of all the trainees from the EMP1 table.
delete from emp1 where Designation='Trainee';
#15.Drop the Age column from the EMP_trainee table.
alter table EMP_trainee DROP COLUMN Age;
#17. Rename the table EMP to EMP_Mgr_Engr.
alter table emp1 rename EMP_Mgr_Engr;
#18.Drop the table EMP_Trainee.
DROP table EMP_trainee;
#19. Truncate EMP_Mgr_Engr table.
TRUNCATE TABLE EMP_Mgr_Engr;
select * from emp_mgr_engr;
