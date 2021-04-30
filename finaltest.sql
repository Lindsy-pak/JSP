CREATE TABLE T_ORDER (
	o_no INT PRIMARY KEY, 
	cus_no INT, 
	o_date DATETIME DEFAULT NOW(),
	o_price INT DEFAULT 0,
	FOREIGN KEY(cus_no) references T_CUSTOMER(cus_no)
);

CREATE TABLE T_CUSTOMER (
	cus_no INT PRIMARY KEY,
	nm VARCHAR(10) NOT NULL 
);
 
INSERT INTO T_ORDER 
(o_no, cus_no, o_price)
VALUES
(1, 3, 55000),
(2, 5, 70000),
(3, 3, 60000);

INSERT INTO T_CUSTOMER 
(cus_no, nm)
VALUES
(3, '홍길동'),
(5, '이순신');

UPDATE T_CUSTOMER
SET nm = '장보고'
WHERE cus_no = 5;  

DELETE FROM T_ORDER 
WHERE o_no = 2; 

SELECT * FROM T_ORDER; 

SELECT cus_no 
FROM T_ORDER
WHERE cus_no = 3; 

SELECT o_no, o_price 
FROM T_ORDER;

SHOW TABLES;

SHOW INDEX FROM T_ORDER;

SHOW FULL TABLES WHERE TABLE_TYPE LIKE 'VIEW';

SELECT * FROM T_ORDER;
SELECT * FROM T_CUSTOMER;

-- ----------------------------------

-- 1번 
CREATE INDEX idx_customer_nm ON t_customer(nm);
SHOW INDEX FROM t_customer;
ALTER TABLE t_customer DROP INDEX idx_customer_nm;


-- 2번
CREATE VIEW view_order_info AS
SELECT
A.o_no, A.o_date,A.o_price, B.nm
FROM T_ORDER A
INNER JOIN t_CUSTOMER B
ON A.cus_no = B.cus_no;


DROP VIEW view_order_info;



