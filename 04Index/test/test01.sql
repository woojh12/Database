USE dulumary;

DESC `review`;

-- 1. 실행 계획 확인 --
SELECT `review` FROM `review` WHERE `userName` = '이정재';  
SELECT `review` FROM `review` WHERE `userName` = '이병헌' AND `point` <= 3.0;
SELECT `review` FROM `review` WHERE `storeName` = '교촌치킨' AND `review` IS NOT NULL;
SELECT `storeName`, AVG(`point`) AS `AVERAGE` FROM `review` GROUP BY `storeName`;

EXPLAIN SELECT `review` FROM `review` WHERE `userName` = '이정재';  
EXPLAIN SELECT `review` FROM `review` WHERE `userName` = '이정재' AND `point` <= 3.0;
EXPLAIN SELECT `review` FROM `review` WHERE `storeName` = '교촌치킨' AND `review` IS NOT NULL;
EXPLAIN SELECT `storeName`, AVG(`point`) AS `AVERAGE` FROM `review` GROUP BY `storeName`;



-- 2. index 설정 --
ALTER TABLE `review` ADD INDEX `idx_review`(`review`);
EXPLAIN SELECT `review` FROM `review` WHERE `review` IS NOT NULL;  
SELECT `review` FROM `review` WHERE `review` IS NOT NULL; 
ALTER TABLE `review` DROP INDEX `idx_review`;

ALTER TABLE `review` ADD INDEX `idx_userName` (`userName`);
ALTER TABLE `review` ADD INDEX `idx_point` (`point`);
ALTER TABLE `review` DROP INDEX `idx_point`;
ALTER TABLE `review` ADD INDEX `store_name` (`storeName`);
