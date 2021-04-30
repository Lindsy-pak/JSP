create TABLE indexTBL (
	first_name VARCHAR(14),
	last_name VARCHAR(16),
	hire_datjavae DATE
);

INSERT INTO indextbl
(first_name, last_name, hire_date)
SELECT first_name, last_name, hire_date
FROM employees.employees
LIMIT 1000; 

explain SELECT * FROM indextbl WHERE first_name = 'Mary';
CREATE INDEX idx_indexTBL_firstname
ON indextbl(first_name);

USE employees;

SELECT
emp_no AS 'eno' 
FROM titles;


SHOW DATABASES;
SHOW TABLES;
SHOW TABLE STATUS;

SELECT *
FROM titles
where emp_no >= 10600
AND title = 'staff'; 

SELECT *
FROM titles 
WHERE emp_no >= 10000 
AND emp_no <= 20000;

SELECT *
FROM titles 
WHERE emp_no BETWEEN 10500 AND 20000;

SELECT *
FROM titles
WHERE title = 'Engineer'
OR title = 'Staff';

SELECT *
FROM titles
WHERE title IN ('Engineer', 'Staff','Senior Staff');

SELECT * FROM employees 
WHERE first_name LIKE 'G%';

SELECT * FROM employees 
WHERE last_name LIKE '%M';

SELECT * FROM employees 
WHERE last_name LIKE '%MA%';

SELECT * FROM employees
WHERE gender = (SELECT gender FROM employees
	WHERE emp_no = 10066); 
	
SELECT * FROM salaries
ORDER BY salary ASC;

SELECT * FROM salaries
ORDER BY emp_no, salary DESC;

SELECT * FROM dept_emp
ORDER BY dept_no DESC,
emp_no;

SELECT DISTINCT dept_no FROM dept_emp;

SELECT DISTINCT emp_no, dept_no FROM dept_emp;

SELECT * FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT * FROM dept_emp
ORDER BY emp_no;

SELECT * FROM dept_emp
ORDER BY emp_no
LIMIT 5, 10;

SELECT COUNT(emp_no) FROM salaries;

SELECT MAX(salary) FROM salaries;
SELECT MIN(salary) FROM salaries;
SELECT SUM(salary) FROM salaries;

SELECT SUM(salary) / COUNT(salary)
FROM salaries;

SELECT AVG(salary) AS avg_salary FROM salaries;

SELECT COUNT(DISTINCT dept_no) FROM dept_emp;

SELECT emp_no,
MAX(salary), MIN(salary), SUM(salary), AVG(salary), COUNT(salary)
FROM salaries
GROUP BY emp_no
ORDER BY AVG(salary) DESC;

SELECT emp_no,
AVG(salary), COUNT(salary)
FROM salaries
GROUP BY emp_no
HAVING COUNT(salary) = 10
ORDER BY COUNT(salary) DESC, AVG(salary) DESC;

SELECT emp_no,
AVG(salary)
FROM salaries
GROUP BY emp_no
HAVING AVG(salary) >= 90000
ORDER BY AVG(salary);

SELECT title
FROM titles
GROUP BY title
ORDER BY COUNT(*) DESC 
LIMIT 1;

SELECT * 
FROM employees
WHERE gender = 'F' 
AND first_name LIKE'S%' 
AND hire_date >= '1990-01-01';

SELECT * 
FROM employees
WHERE gender = (SELECT gender 
FROM employees
WHERE emp_no = 10110);

SELECT * FROM titles
WHERE title IN (
	SELECT title FROM titles
	WHERE  emp_no = 10007
); 

SELECT * FROM salaries
ORDER BY emp_no DESC, salary;

SELECT DISTINCT emp_no, title FROM titles;

SELECT * FROM titles
WHERE emp_no = 110386
AND title = 'Technique Leader';

SELECT * FROM titles
GROUP BY title
HAVING COUNT(title) = {
SELECT MAX(Acnt) FROM (
SELECT COUNT(title) AS cnt
FROM titles



 








