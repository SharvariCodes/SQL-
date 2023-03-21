Create database EdTech
Use EdTech
Create table Students(
--udent_id int,
student_fname varchar(30) not null,
student_lname varchar(30) not null,
--udent_mname varchar(30),
student_emailid varchar(30) not null,
student_phone varchar(30) not null,
--udent_alternate_phone varchar(30) not null,
--rollment_date timestamp not null,
years_of_Exp int not null,
student_company varchar(30),
batch_date varchar(30) not null,
source_of_joining varchar(30) not null,
student_location varchar(30) not null
)

alter table Students drop column student_id
alter table Students add student_id int identity(1,1)
alter table Students add constraint pk_student_id primary key(student_id)
alter table Students add constraint uk_student_emailid unique(student_emailid)

	insert into Students(student_fname, student_lname, student_emailid, student_phone, years_of_Exp,
						batch_date, source_of_joining, student_location)
		   values('Sharvari','Jahagirdar', 'jahagirdarsharvari@gmail.com', '3456789019', 0, 12-01-2022,'youtube','xyz', 
				   'Bangalore')
			   
	insert into Students(student_fname, student_lname, student_emailid, student_phone, years_of_Exp,
						batch_date, source_of_joining, student_location)
		   values('Amit','Joshi', 'amitjoshi@gmail.com', '41740139',2, 12-01-2022,'friend', 'ywe', 
				   'Hyderabad')
 
	insert into Students(student_fname, student_lname, student_emailid, student_phone, years_of_Exp,
						batch_date, source_of_joining, student_location)
		   values('Anisha','Mishra', 'anishamishra@gmail.com', '729092375', 0, 12-01-2022,'linkedin', 'abc', 
				   'Delhi')
			   
	insert into Students(student_fname, student_lname, student_emailid, student_phone, years_of_Exp,
						batch_date, source_of_joining, student_location)
		   values('Sumit','Kulkarni', 'sumitkulkarni@gmail.com', '3347091471', 5, 12-01-2022,'linkedin', 'mno', 
				   'Mumbai')
			 
	insert into Students(student_fname, student_lname, student_emailid, student_phone, years_of_Exp,
						batch_date, source_of_joining, student_location)
		   values('Rahul','Sharma', 'rahulsharma@gmail.com', '7420571940', 7, 12-01-2022,'website', 'vyw',
				   'Bangalore')

drop table Students