USE Test_database
CREATE TABLE Employee(
firstname varchar(50),
middlename varchar(50),
lastname varchar(50),
age int,
salary float,
loc varchar(40)
)
INSERT INTO Employee VALUES('mary','jane','smith',22,10000,'austin')
INSERT INTO Employee VALUES('sarah','jessica','parker',24,10000,'dallas')
INSERT INTO Employee VALUES('mark','jacob','rober',27,10000,'san francisco')
INSERT INTO Employee VALUES('chandler','muriel','bing',29,10000,'new york')
INSERT INTO Employee VALUES('amanda','rose','jones',22,10000,'los angeles')
INSERT INTO Employee(firstname,lastname, age, salary, loc) VALUES('jennie','ruby',22,10000,'georgia'),('micheal','jackson',22,10000,'virginia')
--- recommended practice below
INSERT INTO Employee(firstname,middlename,lastname, age, salary, loc) VALUES('mary','jane','smith',22,10000,'austin')

SELECT * FROM Employee

CREATE TABLE Employee_updated(
firstname varchar(50) not null,
middlename varchar(50),
lastname varchar(50) not null,
age int not null,
salary float not null,
loc varchar(40) not null default 'san deigo'
)


