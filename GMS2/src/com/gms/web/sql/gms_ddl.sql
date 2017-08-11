-- id, password, name, ssn, regdate
SELECT * FROM Member;
SELECT * FROM TAB;

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