USE dulumary;

CREATE TABLE `booking`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(6) NOT NULL,
    `headcount` INT NOT NULL,
    `day`  TINYINT NOT NULL,
    `date` VARCHAR(30) NOT NULL,
    `phoneNumber` VARCHAR(15) NOT NULL,
    `state` VARCHAR(10) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESC `booking`;

INSERT INTO `booking`
(`name`, `headcount`, `day`, `date`, `phoneNumber`, `state`, `createdAt`, `updatedAt`)
VALUES
('강하늘', 2, 1, '2025-07-21 00:00:00', '010-1234-1111', '대기중', now(), now()),
('김종국', 4, 1, '2025-08-04 00:00:00', '010-1212-2121', '확정', now(), now()),
('박명수', 2, 4, '2025-06-12 00:00:00', '010-0000-0000', '취소', now(), now()),
('마동석', 2, 1, '2025-10-30 00:00:00', '010-1010-0101', '대기중', now(), now()),
('박나래', 10, 3, '2025-06-23 00:00:00', '010-1111-2222', '확정', now(), now()),
('혜리', 2, 2, '2025-04-12 00:00:00', '010-9999-9999', '확정', now(), now()),
('황찬성', 25, 1, '2025-09-11 00:00:00', '010-0000-2222', '확정', now(), now()),
('탁재훈', 4, 3, '2025-07-12 00:00:00', '010-1111-0000', '대기중', now(), now()),
('장나라', 2, 1, '2025-09-12 00:00:00', '010-2222-0000', '확정', now(), now());

SELECT * FROM `booking`;

DROP TABLE `booking`;

SELECT `name`, `date`, `state` FROM `booking` WHERE `date` >= '2025-08-00 00:00:00';

SELECT `name`, `headcount`, `day`, `state` FROM `booking` WHERE `state` = '확정' AND (`headcount` >= 4 OR `day` >= 2);

SELECT COUNT(*) FROM `booking` WHERE `day` = 1 AND `state` = '대기중';

SELECT * FROM `booking` WHERE `state` = '취소';

UPDATE `booking` SET `state` = '취소' WHERE `name` IN ('마동석', '탁재훈');

DELETE FROM `booking` WHERE `state` = '취소';