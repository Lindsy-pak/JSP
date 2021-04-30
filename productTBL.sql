CREATE TABLE productTBL (
	productName CHAR(4) PRIMARY KEY,
	cost INT NOT NULL,
	MAKEDATE DATE,
	company CHAR(5),
	amount INT NOT NULL   
);
INSERT INTO productTBL
(productName,cost,MAKEDATE,company,amount)
VALUES
('컴퓨터',10,'2017-01-01','삼성',17),
('세탁기',20,'2018-09-01','LG',3),
('냉장고',5,'2019-02-01','대우',2);

SELECT*FROM productTBL;

-- select 컬럼명 from 테이블명

SELECT amount, cost, company
FROM producttbl;

SELECT *
FROM producttbl
WHERE company = 'LG';

SELECT * FROM membertbl;

-- memberName이 '지운이'인 레코드만 나타나도록

SELECT *
FROM membertbl
WHERE memberName = '지운이'; 

SELECT *
FROM producttbl
WHERE cost >= 10 AND company = 'LG'; -- or and 

