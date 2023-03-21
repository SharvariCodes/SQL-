select * from Students_new where student_location = 'Bengaluru'

--not equal to
select * from Students_new where student_location !='Bengaluru'
 
 -- all courses which have word data
 select * from courses_new where course_name like '%data%'

  -- all courses which do not have word data
 select * from courses_new where course_name like '%data%'

-- all the students from bengaluru who joined through linkedin and have less than 8 yrs of exp
select * from Students_new where years_of_exp < 4 and student_location = 'Bengaluru' and source_of_joining= 'referral'

--all values that lie between a range
select * from Students_new where years_of_Exp < 8 or years_of_exp > 12

select * from Students_new where years_of_exp between 2 and 4

select * from Students_new where years_of_exp not between 2 and 4

--get list of students working for tcs or wipro
select * from Students_new where previous_company='TCS' or previous_company='Wipro'

--in operator
select * from Students_new where previous_company in ('TCS','Wipro')

select * from Students_new where previous_company not in ('TCS','Wipro')

--if course greater than 4 months then it is masters program else diploma
select * from Courses_new
--case statement
select course_id, course_name, course_fee,
	case
		when course_duration > 4 then 'masters'
	    else 'diploma'
	end as course_type
from Courses_new

--tcs and wipro service based, others product based
select student_id, first_name, last_name, previous_company,
	case
		when previous_company in ('TCS', 'Wipro', 'Infosys') then 'Service-Based'
		else 'product-based'
	end as previous_company_type
from Students_new