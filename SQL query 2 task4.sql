---1

select * from student

--2.Select Distinct
	
select distinct marks from student;

--3.Where

select * from student where age = 15;

--4.And 

select * from student where age = 15 AND  marks = 40  

--5.Or
	
select * from student where age = 10 OR marks = 50

--6. Not Equal to
	
select * from student where not age = 35 

--7.Update
	
select * from student
	
update student set age = 20 where student_id = 2

begin
rollback

--delete query
	
delete from student where age = 15

select * from student

--add query
	
alter table student add column email varchar(150)

--drop query
	
alter table student drop column email

select * from student

alter table student add column student_email varchar(150) not null default 'no email'

--rename query
	
alter table student rename column student_email to email

--IN query
	
select * from student where student_id in(1,2,5)

--between query
	
select * from student where age between 15 AND 30

select * from student

--7.This is Constaint query
	
ALTER TABLE student
ADD CONSTRAINT check_age
CHECK (age <=30);

select * from student

ALTER TABLE student
ADD CONSTRAINT check_first_name
CHECK (name NOT IN ('a1','b1','check'));

