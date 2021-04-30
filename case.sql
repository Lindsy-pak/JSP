CREATE TABLE testTBL2 (
	id INT AUTO_INCREMENT,
	userName CHAR(3),
	age INT,
	PRIMARY KEY(id)
);

INSERT INTO testTBL2
(userName, age)
VALUESemployees
('지민' , 25),
('유나' , 22),
('유경' , 21);

SELECT * FROM testTBL2;

SELECT *
FROM testTBL2;

INSERT INTO testTBL2
(userName, age)
SELECT userName, age FROM testTBL2;

UPDATE testTBL2
	SET userName = '민지'
 WHERE id = 3;
 
DELETE FROM testtbl2;
  
SELECT * FROM testtbl2;

CREATE TABLE testtbl3 AS 
SELECT * FROM testtbl2;

CREATE TABLE testtbl4 (SELECT * FROM testtbl2);

DELETE FROM testtbl2;
TRUNCATE testtbl4;

DROP TABLE if exists testbl2;

SELECT NOW();

SELECT CAST('2020-10-19 12:35:29' AS DATETIME) AS d_date;

SELECT CAST('10' AS INT), 'a10' + '10',
CONCAT ('10', '10','10'), 'aaa' +'bbbb';

SELECT DATE_FORMAT(NOW(), '%y년%m월%d일%p:%h:%i:%s');

SELECT emp_no, gender, if(gender = 'M', '남성', '여성') FROM employees;

SELECT emp_no, gender
, if(gender = 'M', '남성', '여성')
, case when gender = 'M'
		then '남성'
		ELSE '여성'
	END  
FROM employees;

SELECT 
	case 10 
		when 1 then '일'
		when 5 then '오'
		when 10 then '십'
		ELSE '뭐지'
	END AS c_case;
	
SELECT productName, 
 	case company
 		when '대우' then '탱크대우'
 		when 'LG' then '사랑해요 LG'
		when '삼성' then '또 하나의가족'
		ELSE '바보'
	END
FROM producttbl;

SELECT * , IFNULL(salary, '널입니다')
FROM salaries
WHERE salary IS NULL
OR emp_no = 17170;

SELECT salary,
	case 
		when salary >= 80000 then '최고급인력'
		when salary >= 70000 then '고급인력' 
	ELSE '저급인력'
	END AS title
FROM salaries;

SELECT * , 
CONCAT(first_name,', ' ,last_name, gender,'지민') AS NAME, 
CONCAT_WS(', ', first_name,last_name,gender) AS NAME2
FROM employees;

SELECT FORMAT(36500.123456789, 1);
SELECT FORMAT(36500, 2);

SELECT *, INSERT(dept_no,2,0,'i')
FROM dept_emp;

SELECT *
, lower(LEFT(first_name,2))
, upper(RIGHT(first_name, 3))
FROM employees;

SELECT first_name
, Lpad(first_name,10,'#')
, Rpad(first_name, 10,'#')
FROM employees;

SELECT  TRIM('   안  녕   ') AS hi;

SELECT birth_date,
LEFT(birth_date, 4) AS YEAR,
SUBSTRING(birth_date, 6, 2) AS mon,
RIGHT(birth_date, 2) AS day,
cast(RIGHT(birth_date, 2) AS INT) AS day_int
FROM employees;

SELECT
CEIL(10.0),
CEIL(10.1),
ROUND(10.4),
ROUND(10.5),
FLOOR(10.9),
FLOOR(10.0);