create table CUSTOMER(
cust_ID varchar(5) not null,
First_Name varchar(15),
last_Name varchar(15),
Area char(2),
Phone numeric,
DOB int,
Payment int,
primary key(cust_ID)
);
select * from CUSTOMER;
alter table customer add column System_Date date;
INSERT INTO CUSTOMER(cust_ID,First_Name,last_Name,Area,Phone,DOB,Payment)
values ("A02",'Vandana','Ray','MU','5560379',87,1000.75);
insert into customer values ("A03",'Ravi','Shridhar','NA','25425269',89,500.05);
insert into customer values ("A01",'Ivan','Ross','SA','5616463',86,800.50);
insert into customer values ("A04",'Basu','Navindi','BA','61254001',56,860);

select * from customer order by DOB;
delete from CUSTOMER where cust_ID in ('A01', 'A03');
update customer set Phone = 554764 where cust_ID=('A01');
update customer set DOB  = 75 where cust_ID=('A02');
delete from customer;
