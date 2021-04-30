CREATE TABLE t_exam (
	i_exam INT PRIMARY KEY,
	title VARCHAR(100),
	jumin CHAR(13),
	age INT(3) NOT NULL
);
INSERT INTO t_exam
( I_EXAM, TITLE, jumin, age )
VALUES
( 2,'집가고싶다','9512231234567',27),
( 3,'게임하다','9512231234568',29);

DROP TABLE t_exam;

DROP DATABASE java;
CREATE DATABASE java;

SELECT*FROM t_exam;

SELECT * FROM t_exam;
UPDATE t_exam
SET age = 35
WHERE i_exam = 2;

DELETE from t_exam
WHERE i_exam = 2;
