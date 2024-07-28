USE dulumary;

SELECT * FROM `user`;

-- 수정하기 --
-- id가 4인 행에 email 컬럼 값을 hagulu@gmail.com --
UPDATE `user` SET `email` = 'hagulu@gmail.com' WHERE `id` = 4;

-- id가 2인 해에 취미를 맛집 탐방으로 변경 후 자기소개를 강남 맛집 전문가로 수정 --
UPDATE `user` 
SET 
	`hobby` = '맛집 탐방',
    `introduce` = '강남 맛집 전문가',
    `updatedAt` = now()
WHERE `id` = 2;

-- 삭제 --
-- id가 1인 행 삭제 --
SELECT * FROM `user` WHERE `id` = 1;
DELETE FROM `user` WHERE `id` = 1;

-- 모든 행 삭제 --
DELETE FROM `user`;

-- 테이블 삭제 -> 테이블 생성 --
TRUNCATE TABLE `user`;