create database hw_jy;
use hw_jy;

create table student(
    student_no int primary key, student_name varchar(20) not null, student_grade int not null
);


show tables;
show columns from student;

insert into student(student_no, student_name, student_grade) values(201814077, '천성우', 2), (201914077, '허지영', 4), (201914079, '유혜지', 4);
SELECT * FROM student;

show columns from student;

create table subject(
    subject_code varchar(10) primary key, subject_name varchar(20) not null, subject_point int not null
);

show tables;
show columns from subject;

insert into subject(subject_code, subject_name, subject_point) values('A1234', 'JAVA', 3), ('B1234', 'PYTHON', 3), ('C1234', 'C++', 3);
SELECT * FROM subject;

show columns from subject;

create table sugang(sugang_number int primary key, student_no int, subject_code varchar(10));

show tables;

insert into sugang(sugang_number, student_no, subject_code) values (1, 201914077, 'B1234'), (2, 201814077, 'C1234'), (3, 201914079, 'A1234');
SELECT * FROM sugang;

select * from sugang join student s on sugang.student_no = s.student_no;