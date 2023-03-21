select * from Students

--distinct
select distinct course_id from Students

--order by
select * from Students order by course_id

select * from Students order by first_name

select * from Courses order by course_fee

select course_name, course_fee from Courses order by course_fee desc;

--limit
select * from Students fetch(3)

-- like
select first_name from Students where first_name like '%v%'	