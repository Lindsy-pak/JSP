CREATE TABLE memberTBL (
	memberID CHAR(8) PRIMARY KEY,
	memberName CHAR(5) NOT NULL,
	memberAddress CHAR(20) 
);

SELECT*FROM memberTBL;
-- intsert, select, update, delete 컬럼명은 무조건 적는다.

INSERT INTO memberTBL
(memberId, memberName, memberAddress)
VALUES
('Dang','당탕이','경기 부천시 중동'),
('Jee','지운이','서울 은평구 증산동'),
('Han','한주연','인천 남구 주안동'),
('Sang','상길이','경기 성남구 분당구');


INSERT INTO memberTBL
(memberId, memberName, memberAddress)
VALUES
('Kang','강성헌','대구 달서구 용산동');
