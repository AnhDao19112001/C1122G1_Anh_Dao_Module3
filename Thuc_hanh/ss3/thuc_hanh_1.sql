drop database if exists quan_li_sinh_vien;
create database quan_li_sinh_vien;
use quan_li_sinh_vien;
create table class(
class_id int primary key auto_increment,
class_name varchar(60) not null,
start_date datetime not null,
`status` bit
);

create table student(
student_id int,
student_name varchar(30) not null,
address varchar(50),
phone varchar(20),
`status` bit,
class_id int,
primary key(student_id, `status`,class_id),
foreign key (class_id) references class(class_id)
);

create table `subject`(
subject_id int primary key auto_increment,
subject_name varchar(30) not null,
credit int,
`status` bit
);

create table mark(
mark_id int primary key,
mark int,
exam_times int,
student_id int,
subject_id int,
foreign key (student_id) references student(student_id),
foreign key (subject_id) references `subject`(subject_id)
);