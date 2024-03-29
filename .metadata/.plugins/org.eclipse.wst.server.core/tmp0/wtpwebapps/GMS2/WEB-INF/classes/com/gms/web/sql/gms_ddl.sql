-- id, password, name, ssn, regdate
SELECT * FROM Member;
SELECT * FROM TAB;
SELECT * FROM SUBJECT;
SELECT * FROM major;
DROP view student;

select t.*
from(select rownum rnum,s.*
	from student s)t
where t.rnum between 1 and 5;

select t2.*
from (select rownum seq, t.*
	from(select *
		from student
		where name like '정%'
		order by num desc)t)t2
where t2.seq between 6 and 10
;

select *from student;
create view student (num,id,name,ssn,regdate,phone,email,title)
as
select rownum, t.member_id, t.name,t.ssn,t.regdate,t.phone,t.email,t.title
from (
    select a.member_id , a.name , rpad(substr(a.ssn,1,8),14, '*') ssn, a.phone , a.email , 
    listagg(s.title, ',') within group (order by s.title) title, to_char(a.regdate,'yyyy/mm/dd') regdate 
    from member a
        left outer join major m on a.member_id like m.member_id
        left join subject s on m.subj_id like s.subj_id
    group by a.member_id, a.name, a.ssn, a.phone, a.email, a.regdate
    order by regdate 
) t
order by rownum desc
;



CREATE SEQUENCE article_seq
START WITH 1000
INCREMENT BY 1
NOCACHE
NOCYCLE;

CREATE TABLE Student(
	member_id VARCHAR2(10),
	stu_no VARCHAR2(8),
	PRIMARY KEY (member_id),
	FOREIGN KEY(member_id) REFERENCES Member(member_id)
		ON DELETE CASCADE
	);
	
CREATE TABLE Prof(
	member_id VARCHAR2(10),
	salary VARCHAR2(10),
	PRIMARY KEY (member_id),
	FOREIGN KEY(member_id) REFERENCES Member(member_id)
		ON DELETE CASCADE
	);


<!-- id에서 member_id로 컬럼 명 변경 -->
ALTER TABLE Member
RENAME COLUMN id TO member_id;


ALTER TABLE Board
RENAME COLUMN id TO member_id;

ALTER TABLE Grade
RENAME COLUMN id TO member_id;

CREATE TABLE Member(
	id VARCHAR2(10), 
	password VARCHAR2(10), 
	name VARCHAR2(20), 
	ssn VARCHAR2(15),
	regdate DATE,
	PRIMARY KEY (id)
);
DROP TABLE Member;
--id,title,content;
-- article_seq, hitcount;
-- regdate
CREATE TABLE Board(
	article_seq NUMBER,
	id VARCHAR2(10),	
	title VARCHAR2(20),	
	content VARCHAR2(100),	
	regdate DATE,	
	hitcount NUMBER,
	PRIMARY KEY (article_seq),
	FOREIGN KEY(id) REFERENCES Member(id)
		ON DELETE CASCADE
	);
SELECT * FROM Board;