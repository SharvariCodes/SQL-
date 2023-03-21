use EdTech
create table Students_new(
student_id int not null,
course_id int not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
email varchar(30) not null,
student_phone varchar(30) not null,
years_of_exp int not null,
previous_company varchar(30),
enrollment_date varchar(30) not null,
source_of_joining varchar(30) not null,
student_location varchar(30) not null

primary key(student_id)
)
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (1, 3, 'Merv', 'Le Surf', 'mlesurf0@ucla.edu', '198-475-6422', 3, 'Realmix', '16/12/2022', 'Span', 'Heqian');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (2, 2, 'Bertie', 'Camden', 'bcamden1@salon.com', '815-716-6854', 0, 'Agivu', '20/12/2022', 'Tres-Zap', 'Feitoria');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (3, 2, 'Herbie', 'Upwood', 'hupwood2@sina.com.cn', '898-662-9670', 4, 'Thoughtblab', '13/12/2022', 'Regrant', 'Bang Kruai');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (4, 3, 'Maryanna', 'Seeney', 'mseeney3@example.com', '859-988-7642', 4, 'Trilith', '17/12/2022', 'Alphazap', 'Kedungringin');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (5, 4, 'Elmo', 'Janaszkiewicz', 'ejanaszkiewicz4@goodreads.com', '364-810-9808', 1, 'Divavu', '21/12/2022', 'Biodex', 'Vitoria-Gasteiz');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (6, 2, 'Henryetta', 'Broschke', 'hbroschke5@cdc.gov', '440-284-6964', 4, 'Mydeo', '14/12/2022', 'Tres-Zap', 'San Carlos');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (7, 2, 'Courtenay', 'Magowan', 'cmagowan6@kickstarter.com', '502-981-3657', 1, 'Devpoint', '17/12/2022', 'Trippledex', 'Sunfang');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (8, 3, 'Deidre', 'Leglise', 'dleglise7@wsj.com', '720-374-7421', 0, 'Dablist', '27/12/2022', 'Redhold', 'Sinjhoro');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (9, 1, 'Truman', 'Raspison', 'traspison8@livejournal.com', '619-327-1772', 0, 'Kazio', '14/12/2022', 'Job', 'Shengao');
insert into Students_new (student_id, course_id, first_name, last_name, email, student_phone, years_of_exp, previous_company, enrollment_date, source_of_joining, student_location) values (10, 3, 'Terza', 'Meers', 'tmeers9@ucoz.com', '819-135-3104', 3, 'Topicware', '19/12/2022', 'Lotstring', 'Dingzigu');

select * from Students_new

Create table Courses_new(
course_id int not null,
course_name varchar(30) not null,
course_duration int not null,
course_fee int not null
)

insert into Courses_new (course_id, course_name, course_duration, course_fee) values (1, 'web development', 6, 7963);
insert into Courses_new (course_id, course_name, course_duration, course_fee) values (2, 'big data course', 4, 8766);
insert into Courses_new (course_id, course_name, course_duration, course_fee) values (3, 'data science', 2, 1944);
insert into Courses_new (course_id, course_name, course_duration, course_fee) values (4, 'analytics program', 3, 3094);

select * from Courses_new
alter table Courses_new add constraint pk_course_id primary key(course_id)
alter table Students_new add constraint course_id foreign key(course_id) references Courses_new(course_id)

select previous_company from Students_new
update Students_new set previous_company = 'TCS' where student_id = 1
update Students_new set previous_company = 'TCS' where student_id = 5
update Students_new set previous_company = 'TCS' where student_id = 9
update Students_new set previous_company = 'Wipro' where student_id = 2
update Students_new set previous_company = 'Wipro' where student_id = 8
update Students_new set previous_company = 'Infosys' where student_id = 7
update Students_new set previous_company = 'Infosys' where student_id = 3
update Students_new set previous_company = 'Delloite' where student_id = 4
update Students_new set previous_company = 'Accenture' where student_id = 10
update Students_new set previous_company = 'TCS' where student_id = 6

update Students_new set source_of_joining = 'Linkedin' where student_id = 1
update Students_new set source_of_joining = 'Linkedin' where student_id = 5
update Students_new set source_of_joining = 'Linkedin' where student_id = 9
update Students_new set source_of_joining = 'referral' where student_id = 2
update Students_new set source_of_joining = 'referral' where student_id = 8
update Students_new set source_of_joining = 'Linkedin' where student_id = 7
update Students_new set source_of_joining = 'website' where student_id = 3
update Students_new set source_of_joining = 'Linkedin' where student_id = 4
update Students_new set source_of_joining = 'referral' where student_id = 10
update Students_new set source_of_joining = 'website' where student_id = 6

update Students_new set student_location = 'Bengaluru' where student_id = 1
update Students_new set student_location = 'Mumbai' where student_id = 5
update Students_new set student_location = 'Hyderabad' where student_id = 9
update Students_new set student_location = 'Mumbai' where student_id = 2
update Students_new set student_location = 'Bengaluru' where student_id = 8
update Students_new set student_location = 'Delhi' where student_id = 7
update Students_new set student_location = 'Delhi' where student_id = 3
update Students_new set student_location = 'Bengaluru' where student_id = 4
update Students_new set student_location = 'Bengaluru' where student_id = 10
update Students_new set student_location = 'Delhi' where student_id = 6

select * from Students_new








