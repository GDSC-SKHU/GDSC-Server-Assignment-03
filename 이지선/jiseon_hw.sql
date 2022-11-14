/* 데이터 베이스 생성 */
create database gdsc_hw;  

-- 데이터베이스 선택
use gdsc_hw;

/* 테이블 생성 */
-- 학생 테이블
create table student (
	stu_id int primary key,
    stu_name varchar(20),
    department varchar(25)
);
-- 과목 테이블
create table subject (
	sub_id int primary key,
    sub_name varchar(30),
    create_yaer varchar(10)
);
-- 수강 테이블
create table attend (
	atd_id int primary key,
    student_id int,
    subject_id int,
    atd_term int,
    atd_year int,
	foreign key (student_id) references student(stu_id) on delete cascade,
    foreign key (subject_id) references subject(sub_id) on delete cascade
);


/* 데이터 삽입 */
insert into student (stu_id,stu_name,department) values 
(201914103, '이지선', 'IT'),
(202012503, '나예린', '미컨'),
(201134562, '김민경', '인문'),
(204334995, '엄정윤', 'IT');

insert into subject (sub_id,sub_name,create_yaer) values 
(1, '인터넷보안', '2019'),
(2, '네트워크 프로그래밍', '2020'),
(3, '몸과 윤리', '2022'),
(4, '통계와 데이터분석', '2022');

insert into attend (atd_id,student_id,subject_id,atd_term,atd_year) values 
(1,201914103,1,2,2022),
(2,202012503,4,1,2016),
(3,202012503,4,1,2020),
(4,204334995,3,1,2018),
(5,201134562,2,2,2018),
(6,201914103,1,1,2022),
(7,201914103,1,2,2016);

-- join 연산
select * 
from attend as a 
join student as s 
	on a.student_id = s.stu_id 
join subject as t 
	on a.subject_id = t.sub_id;