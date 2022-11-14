CREATE DATABASE hw4;

use hw4;

create table Student(
    ID int primary key ,
    Name varchar(30) not null ,
    birthday date
);

create table Subject(
    ID varchar(30) primary key ,
    SubName varchar(30) not null ,
    DepartmentName varchar(30)
);

create table Registration(
    StuID int,
    SubID varchar(30),
    ApplicationDate date,
    primary key (StuID,SubID),
    FOREIGN KEY (StuID) REFERENCES student(ID) ON DELETE CASCADE,
    FOREIGN KEY (SubID) REFERENCES Subject(ID) ON DELETE CASCADE
);

ALTER TABLE Registration MODIFY ApplicationDate TIMESTAMP not null default current_timestamp;

insert into student values
    (201732028, '이현복', '1998-09-05'),
    (201801001, '홍길동', '1999-01-01'),
    (202011014, '철수', '2000-11-14');

select * from student;

insert into subject values
    ('XB00008','웹프로그래밍','소프트웨어공학과'),
    ('XC00024','C++프로그래밍','정보통신공학과'),
    ('XB00015','프론트엔드 개발','소프트웨어공학과'),
    ('XA00037','Node.js프로그래밍','컴퓨터공학과');

select * from subject;

insert into registration values
    (201732028,'XB00008',default),
    (201732028,'XC00024',default),
    (201732028,'XB00015',default);
insert into registration values
    (201801001,'XB00008',default),
    (201801001,'XA00037',default),
    (202011014,'XA00037',default);
select * from registration;

select st.ID,st.Name, re.ApplicationDate, sub.ID, sub.SubName
from registration re
    join student st on st.ID = re.StuID
    join Subject sub on sub.ID = re.SubID;
