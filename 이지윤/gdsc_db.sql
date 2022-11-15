use GDSC_db;

CREATE TABLE student (
	name VARCHAR(30) NOT NULL, -- 이름
    number INT PRIMARY KEY , -- 학번
    phone VARCHAR(30) -- 휴대폰 번호
    
);

CREATE TABLE subject (
	name VARCHAR(40) NOT NULL, -- 과목명
    num VARCHAR (40) NOT NULL PRIMARY KEY, -- 과목번호
    professor VARCHAR(40) NOT NULL -- 교수명
);

drop table sugang;

CREATE TABLE sugang (
	studentID INT NOT NULL, -- 학번(외래키)
    subjNum VARCHAR(30) NOT NULL, -- 과목번호(외래키)
    credit VARCHAR(30) NOT NULL -- 학점
);

INSERT INTO student(name, number, phone) VALUES
('이지윤', 202014125, '010-9460-8015'),
('한현수', 201814043, '010-7761-1798'),
('김신아', 202014099, '010-5576-6891');

ALTER TABLE subject MODIFY COLUMN num varchar(40);
ALTER TABLE student MODIFY COLUMN number varchar(30) ;

INSERT INTO subject(name, num, professor) VALUES
('네트워크 프로그래밍','XB00024-01' , '이승진 교수님'),
('임베디드시스템', 'XC00025-01', '이종현 교수님'),
('디지털 통신', 'XC00037-01', '정인철 교수님'),
('알고리즘', 'XB00007-01', '노은하 교수님');

INSERT INTO sugang (studentID, subjNum ,credit) VALUES
(202014125, 'XC00037-01', 'B+'),
(201814043, 'XB00007-01', 'A+'),
(202014099, 'XB00024-01', 'B'),
(202014125, 'XC00037-01', 'A');

SELECT st.name, st.number, sub.name, sub.num, sug.* FROM sugang sug JOIN student st ON sug.studentID = st.number JOIN subject sub ON sug.subjNum = sub.num;