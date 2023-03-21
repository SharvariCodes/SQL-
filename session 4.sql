USE Test_database
CREATE TABLE Employee_updated_new_one(
firstname varchar(50) not null,
middlename varchar(50),
lastname varchar(50) not null,
age int not null,
salary float not null,
loc varchar(40) not null default 'san deigo',
id int PRIMARY KEY )

--ERT INTO Employee_updated_new VALUES('mary','jane','smith',22,10000,'austin',01)
--SERT INTO Employee_updated_new VALUES('mary','jane','smith',22,10000,'austin',01)

INSERT INTO Employee_updated_new_one VALUES('sarah','jessica','parker',24,10000,'dallas',02)
INSERT INTO Employee_updated_new_one VALUES('mark','jacob','rober',27,10000,'san francisco',03)
INSERT INTO Employee_updated_new_one VALUES('chandler','muriel','bing',29,10000,'new york',04)
INSERT INTO Employee_updated_new_one VALUES('amanda','rose','jones',22,10000,'los angeles',05)
--SERT INTO Employee_updated_new(firstname,lastname, age, salary, loc) VALUES('jennie','ruby',22,10000,'georgia'),('micheal','jackson',22,10000,'virginia')

select * from Employee_updated_new_one

select firstname, lastname from Employee_updated_new_one

--selecting specific rows using where clause 
select * from Employee_updated_new_one where age > 25

select * from Employee_updated_new_one where firstname = 'chandler'

--ALias for column names
select firstname as name, lastname as surname from Employee_updated_new_one

--update
update Employee_updated_new_one set firstname='Monica' where lastname='bing'
select * from Employee_updated_new_one
update Employee_updated_new_one set loc='atlanta' where firstname='sarah'

-- updating salary
update Employee_updated_new_one set salary = salary + 5000

update Employee_updated_new_one set	loc='dallas' where firstname='amanda' and lastname='jones'

--delete
delete from Employee_updated_new_one where id =2

delete from Employee_updated_new_one

-- alter
alter table Employee_updated_new_one add jobtitle varchar(50)

alter table Employee_updated_new_one drop column jobtitle

--alter table Employee_updated_new_one modify column firstname varchar(30)
--alter table Employee_updated_new_one drop primary key(id)

--truncate
truncate table Employee_updated_new_one