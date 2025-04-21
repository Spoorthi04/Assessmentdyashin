-- Q1: Create a students table with the following columns: 
-- ● id (Primary Key, Auto Increment) 
-- ● name (VARCHAR) — should not be null 
-- ● email (VARCHAR, Unique) 
-- ● age (INTEGER) 
-- ● marks (Decimal) 


create table students(
id serial primary key,
name varchar(30) not null,
email varchar(50) unique,
age int,
marks decimal
)


-- 1>>Insert at least 3 values into the table. 
insert into students (name,email,age,marks) values ('spoorthi','spoo@gmail.com',21,99);
insert into students (name,email,age,marks) values('gagana','gag@gmail.com',28,99.34);
insert into students (name,email,age,marks) values('vidya','vid@gmail.com',25,90);
insert into students (name,email,age,marks) values('poo','poo@gmail.com',24,66.78);
insert into students (name,email,age,marks) values('zoo','zoo@gmail.com',18,25);
insert into students (name,email,age,marks) values('jango','jango@gmail.com',14,24);




select * from students;


--2>> Fetch student details where age > 21. 

 select *
 from students
 where age>21;


-- 3>> Update the email of the student with id = 5 to 
'rahul@gmail.com'. 

update students set email='rahul@gmail.com' where id=5;

-- 4>> Delete all students with age < 18. 

delete from students where age<18;

5>>Find the second highest score student details. 

select * from students order by marks desc limit 1 offset 1;

-- 6>>write a query to display student names and their enrolled course 
names. 
create table student1(
id int,
name varchar(30),
age int
)

insert into student1 values(1,'Rahul',22);
insert into student1 values(2,'Priya',21);
insert into student1 values(3,'Akash',23);

select * from student1

create table courses(
course_id int,
student_id int,
course_name varchar(30)
)

insert into courses values (101,1,'Java');
insert into courses values (102,2,'Python');
insert into courses values (103,1,'Sql');

select * from courses;

delete from courses where student_id=3;

--write a query to display student names and their enrolled course names

select s.name,c.course_name
from student1 s inner join courses c
on s.id=c.student_id





