CREATE TABLE t_student (
	s_id INT UNSIGNED PRIMARY KEY,
	nm VARCHAR(3) NOT NULL,
	ph CHAR(13)  
);

SELECT * FROM t_student;

INSERT INTO t_student(s_id, nm)
VALUES (1111, '값');

SELECT * FROM t_student;













INSERT INTO t_student(s_id, nm, ph)
VALUES 
(1112, '을', '010-1111-1111'),
(1113, '병', '010-2222-2222');

UPDATE t_student
SET nm = '갑'
WHERE s_id = 1111;

CREATE TABLE t_class (
	c_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	cls VARCHAR(5) NOT NULL,
	teacher VARCHAR(5) NOT NULL
);

INSERT INTO t_class
(cls, teacher)
VALUES 
('수학', '김하나'),
('과학', '판테온'),
('국어', '오징어');

SELECT * FROM t_class;

CREATE TABLE t_score (
	s_id INT unsigned,
	c_id INT unsigned,
	score INT,
	PRIMARY KEY (s_id, c_id),
	FOREIGN KEY (s_id) REFERENCES t_student(s_id),
	FOREIGN KEY (c_id) REFERENCES t_class(c_id)
);

SELECT * FROM t_score;

INSERT INTO t_score
(s_id, c_id, score)
VALUES 
(1111, 3, 80);

DROP TABLE t_score;

SELECT B.*, A.* 
t_score FROM t_score as A
INNER JOIN t_student as B
ON  A.s_id = B.s_id;

SELECT B.nm, C.cls, A.score 
FROM t_score as A
INNER JOIN t_student as B
ON  A.s_id = B.s_id
INNER JOIN t_class C
ON A.c_id = C.c_id;

SELECT
B.nm, B.s_id, A.s_id,A.score, A.c_id, C.c_id 
INNER JOIN t_student B
ON A.s_id = B.s_id
INNER JOIN t_class C
ON A.c_id = C.c_id;
-- inner join - 니도있도 나도 있는 값(교집합) 
-- forien key가 걸려있으면 이너조인이든 아우터든 상관없다

CREATE TABLE t_board (
	iboard INT UNSIGNED PRIMARY KEY auto_increment,
	title VARCHAR(100) NOT NULL,
	ctnt VARCHAR(500) NOT NULL,
	rdt DATETIME DEFAULT NOW()
);

CREATE TABLE t_cmt (
	icmt INT UNSIGNED PRIMARY KEY auto_increment,
	iboard INT UNSIGNED,
	ctnt VARCHAR(100) NOT NULL,
	rdt DATETIME DEFAULT NOW()
);
INSERT INTO t_board
(title, ctnt)
VALUES
('MariaDB 사용법', '잘 사용 하세요 ');

INSERT INTO t_cmt
(iboard, ctnt)
VALUES 
(1, '저도 그랬습니다. ');

SELECT * FROM t_board;	

DROP TABLE t_board;
DROP TABLE t_cmt;

SELECT A.*, B.*, ifnull(B.ctnt, '댓글없음')
FROM t_board A
LEFT JOIN t_cmt B
ON A.iboard = B.iboard;

SELECT A.*, B.*
FROM t_board A
LEFT JOIN t_cmt B
ON A.iboard = B.iboard
WHERE B.icmt IS null;










