SHOW TABLES;

SHOW INDEX FROM t_score;

SHOW FULL TABLES WHERE TABLE_TYPE LIKE 'VIEW';

SELECT 'bbc' < 'bbd';

CREATE INDEX idx_abcd ON membertbl(memberName);

SHOW INDEX FROM membertbl;

-- DROP INDEX 인덱스명 ON 테이블명;
-- ALTER TABLE 테이블명 DROP INDEX 인덱스명;
CREATE VIEW view_abcd AS 
SELECT * FROM membertbl
WHERE memberName LIKE '%이%';

SELECT * FROM VIEW_abcd
WHERE memberID = 'Dang';