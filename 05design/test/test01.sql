USE dulumary;

CREATE TABLE `user_score`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`userId` INT NOT NULL,
    `year` INT NOT NULL,
    `semester` INT NOT NULL,
    `term` VARCHAR(16) NOT NULL,
    `subject` VARCHAR(16) NOT NULL,
    `score` INT NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `user_Info`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(16) NOT NULL,
    `phoneNumber` INT NOT NULL,
    `email` VARCHAR(16) NOT NULL,
    `dreamJob` VARCHAR(16) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

DROP TABLE `user_score`;
DROP TABLE `user_Info`;

DESC `user_score`;
DESC `user_Info`;

INSERT INTO `user_score`
(`userId`, `year`, `semester`, `term`, `subject`, `score`)
VALUES
(1, '2020', '1', '중간고사', '국어', '80'),
(1, '2020', '1', '중간고사', '영어', '95'),
(1, '2020', '1', '중간고사', '수학', '90'),
(2, '2020', '1', '중간고사', '국어', '85'),
(2, '2020', '1', '중간고사', '영어', '90'),
(2, '2020', '1', '중간고사', '수학', '70');


INSERT INTO `user_Info`
(`name`, `phoneNumber`, `email`, `dreamJob`)
VALUES
('유재석', '01000001111', 'mc_u@naver.com', '프로그래머스'),
('조세호', '01011110000', 'mrjo@gmail.com', '모델');

SELECT * FROM `user_score`;
SELECT * FROM `user_Info`;

SELECT `year`, `semester`, `term`, `subject`, `score` FROM `user_score` WHERE `userId` = 2;