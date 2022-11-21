create database project;
use project;
create table student(
id int,
name varchar(10) primary key,
department varchar(10),
grade int
);
create table lecture(
lecture_Name varchar(30) primary key,
professor varchar(10),
grade_limit int,
class int
);
create table sign_up(
name varchar(10),
lecture varchar(30),
retake char(1),
class int,
foreign key(name) references student (name),
foreign key(lecture) references lecture (lecture_Name)
);
insert into student (id, name, department,grade) values
(202211,'가나다','IT',1),
(202212,'라마바','사융',2),
(202213,'사아자','디컨',3);
insert into lecture (lecture_Name,professor,grade_limit,class) values
('국어학개론','prof.abc',1,6201),
('영어학개론','prof.def',2,1205),
('수학학개론','prof.ghi',3,7202);
insert into sign_up (name,lecture,retake,class) values
('가나다','국어학개론','N',6201),
('라마바','영어학개론','Y',1205),
('사아자','수학학개론','N',7202);
select * from student as s join lecture as l on s.grade=l.grade_limit join sign_up as su on l.class=su.class;