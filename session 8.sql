select count(*) from Students_new
select count(distinct previous_company) from Students_new
use EdTech
select * from Students_new
--doubt
select count(*) from Students_new where enrollment_date like '14-12-2022'


-- group by
select source_of_joining, count(*) from Students_new group by source_of_joining

select student_location, count(*) from Students_new group by student_location

-- does not work
select student_location, count(*) from Students_new group by source_of_joining

-- grouping based on two columns
select student_location, source_of_joining from Students_new
select student_location, source_of_joining, count(*) from Students_new group by student_location, source_of_joining

select course_id, count(*) from Students_new group by course_id

select enrollment_date, course_id, count(*) from Students_new group by enrollment_date, course_id

--- min and max
select min(years_of_Exp) from Students_new
select max(years_of_Exp) from Students_new
-- does not work
select min(years_of_Exp),first_name from Students_new

select * from Students_new

select first_name,years_of_exp from Students_new order by years_of_Exp 

-- each source of joining i want to get max experience 
select source_of_joining, years_of_exp from Students_new

select source_of_joining, max(years_of_exp) from Students_new group by source_of_joining

---sum
select source_of_joining, sum(years_of_Exp) from Students_new group by source_of_joining

--avg
select source_of_joining,avg(years_of_Exp) from Students_new group by source_of_joining

select student_location,avg(years_of_Exp) from Students_new group by student_location

select previous_company,avg(years_of_Exp) from Students_new group by previous_company



