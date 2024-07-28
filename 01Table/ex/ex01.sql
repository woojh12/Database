-- 데이터 베이스 생성 --

CREATE DATABASE `dulumary`;

-- 사용자 정보 테이블 --
-- 이름, 생년월일, 취미, 자기소개 --

CREATE TABLE `person`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `birth` INT NOT NULL,
    `hobby` VARCHAR(64) NOT NULL,
    `introduce` TEXT,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 테이블 정보 확인 --
DESC `Person`;
DESC `user`;

-- 테이블 삭제 --
-- DROP TABLE `Person`;

-- 테이블 수정 --
-- 테이블 이름 변경 --
-- person -> user --
ALTER TABLE `person` RENAME `user`; 

-- 컬럼 추가 --
-- email 컬럼 추가 --
ALTER TABLE `user` ADD COLUMN `EMAIL` VARCHAR(16);

-- 컬럼 수정 --
-- email 컬럼의 최대 길이 수정 --
-- 수정 항목만 작성하면 안된다 --
-- 컬럼에 대한 모든 항목을 다시 지정 -- 
ALTER TABLE `User` MODIFY COLUMN `EMAIL` VARCHAR(32);

-- 컬럼이름 수정 --
-- birth -> yyyymmdd --
-- 컬럼에 대한 모든 항목 작성 --
-- int -> char(8) --
ALTER TABLE `user` CHANGE COLUMN `birth` `yyyymmdd` CHAR(8) NOT NULL;

