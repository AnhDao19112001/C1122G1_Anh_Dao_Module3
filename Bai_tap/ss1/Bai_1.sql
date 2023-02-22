drop database if exists student_management;
create database student_management;

use student_management;

create table student(
id int primary key,
`name` varchar(45),
age int,
country varchar(45)
);

create table class(
id int primary key,
`name` varchar(45)
);

create table teacher(
id int primary key,
`name` varchar(45),
age int,
country varchar(45)
);

insert into student(id, name, age, country)
value (1, 'Dao', 22, 'QN');
select * from student;

insert into class(id, name)
value (1, 'c1122g1');
select * from class;

insert into teacher(id, name, age, country)
value (1, 'Hai', 24, 'QN');
select * from teacher;