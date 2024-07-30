select * from student

create table student_details(
	id serial primary key,
	name varchar(100), 
	age int,
	address varchar(150),
	city varchar (100)
);

select * from student_details;

insert into student_details(name,age,address,city)
values
('a1', 10, 'add1', 'Mumbai'),
('b1', 15, 'add2', 'Delhi'),
('c1', 20, 'add3', 'Bangalore'),
('d1', 25, 'add4', 'Hyderabad'),
('e1', 30, 'add5', 'Chennai'),
('f1', 35, 'add6', 'Kolkata'),
('g1', 40, 'add7', 'Pune'),
('h1', 45, 'add8', 'Ahmedabad'),
('i1', 50, 'add9', 'Jaipur'),
('j1', 55, 'add10', 'Surat'),
('k1', 60, 'add11', 'Lucknow'),
('l1', 65, 'add12', 'Kanpur'),
('m1', 70, 'add13', 'Nagpur'),
('n1', 42, 'add14', 'Gujrat'),
('o1', 44, 'add15', 'Bhopal'),
('p1', 46, 'add16', 'Patna'),
('q1', 58, 'add17', 'Vadodara'),
('r1', 48, 'add18', 'Indore'),
('s1', 52, 'add19', 'Thane'),
('t1', 72, 'add20', 'Agra');

select * from student_details;

-- constraint to check age should not greater than 72

select * from student_details where age>72;

update student_details
set age =72
where age >72;

select * from student_details;

alter table student_details
add constraint age check(age<=72);

select * from student_details;

--custom constraint that particular column not contain 'a1,''b1','check'

update student_details
set name='New Name'
where name in('a1','b1','check');

select * from student_details;

alter table student_details
add constraint name check(name not in('a1','b1','check'));

select * from student_details;




