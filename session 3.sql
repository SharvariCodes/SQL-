USE Test_database
CREATE TABLE Employee_updated_new(
firstname varchar(50) not null,
middlename varchar(50),
lastname varchar(50) not null,
age int not null,
salary float not null,
loc varchar(40) not null default 'san deigo',
id int PRIMARY KEY
)

INSERT INTO Employee_updated_new VALUES('mary','jane','smith',22,10000,'austin',01)
--SERT INTO Employee_updated_new VALUES('mary','jane','smith',22,10000,'austin',01)
INSERT INTO Employee_updated_new VALUES('sarah','jessica','parker',24,10000,'dallas',02)
INSERT INTO Employee_updated_new VALUES('mark','jacob','rober',27,10000,'san francisco',03)
INSERT INTO Employee_updated_new VALUES('chandler','muriel','bing',29,10000,'new york',04)
INSERT INTO Employee_updated_new VALUES('amanda','rose','jones',22,10000,'los angeles',05)
--SERT INTO Employee_updated_new(firstname,lastname, age, salary, loc) VALUES('jennie','ruby',22,10000,'georgia'),('micheal','jackson',22,10000,'virginia')

SELECT * FROM Employee_updated_new

DROP TABLE Employee_updated_new