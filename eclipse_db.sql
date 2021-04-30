CREATE TABLE t_board (
	iboard INT UNSIGNED PRIMARY KEY 
	AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	ctnt VARCHAR(500) NOT NULL,
	regdt DATETIME DEFAULT NOW()
);

SELECT * FROM t_board;

INSERT INTO t_board
(title, ctnt)
VALUES
('왜', '안뜨노');