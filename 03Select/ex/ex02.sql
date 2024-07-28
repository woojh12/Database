-- 테이블 생성
CREATE TABLE `entrant` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(8) NOT NULL,
    `license` VARCHAR(32) NOT NULL,
    `score` INT NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 데이터 삽입
INSERT INTO `entrant` 
(`name`, `license`, `score`)
VALUES 
('김인규', '정보처리기사', 87),
('김바다', '컴퓨터활용능력', 95),
('김태형', '정보처리기사', 99),
('박지민', '컴퓨터활용능력', 68),
('김인규', '컴퓨터활용능력', 78),
('김남준', '정보처리산업기사', 40),
('정호석', '컴퓨터활용능력', 99),
('민윤기', '컴퓨터활용능력', 100),
('김바다', '정보처리산업기사', 78),
('김바다', '정보처리기사', 82);

-- 자격증 종류 조회 (중복없이) -- 
SELECT `license`FROM `entrant` GROUP BY `license`;

-- 응시자 조회 (중복없이) --
SELECT `name` FROM `entrant` GROUP BY `name`;

-- 응시자별 시험 응시 개수 --
SELECT `name`, COUNT(*) FROM `entrant` GROUP BY `name`;

-- 자격증별 점수 합계 --
SELECT `license`, SUM(`score`) FROM `entrant` GROUP BY `license`;

-- 자격증별 평균 --
SELECT `license`, AVG(`score`) FROM `entrant` GROUP BY `license`;

-- GROUP BY 결과에 대한 조건 --
-- 자격증 시험을 2개이상 본 응시자 조회 --
-- HAVING : GROUP BY에 의해 계산된 결과에 대한 조건
SELECT `name`, COUNT(*) FROM `entrant` GROUP BY `name` HAVING COUNT(*) >= 2;

-- 자격증 종류별 평균 점수가 80점이 넘는 자격증 조회 --
SELECT `license`, AVG(`score`) AS `평균` FROM `entrant` GROUP BY `license` HAVING `평균` > 80; 

