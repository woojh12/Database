USE dulumary;

DESC `user`;

-- 조회하기 --

-- 모든 행을 조회 --
SELECT* FROM `user`;

-- 특정 컬럼을 조회 -- 
SELECT `name`, `yyyymmdd`, `email` FROM `user`;

-- 컬럼명 별명 붙이기 --
SELECT `name` AS `이름`, `hobby` AS `취미`, `email` AS `이메일` FROM `user`;

-- 중복제거 --
-- 동명 이인 제외 이름 조회 -- 
SELECT DISTINCT `name` FROM `user`;

-- 행 개수 조회(둘 중 아무거나 써도 됨, 같은 기능) --
SELECT count(*) FROM `user`;
SELECT count(1) AS `개수` FROM `user`;

-- 특정이름으로 사용자 생년월일 조회 --
SELECT `yyyymmdd` AS `생년월일` FROM `user` WHERE `name` = '홍길동2';

-- 이름이 홍길동이 아닌 사용자 조회 --
SELECT `name` AS `이름` FROM `user` WHERE `name` != '홍길동';

-- 조건 조회 --
-- id가 3인 행 조회 --
SELECT* FROM `user` WHERE `id` = 3;

-- 날짜 시간 조건 --
-- 행 저장 시간이 20240101이후인 행 조회 --
SELECT* FROM `user` WHERE `createdAt` > '2024-01-01 00:00:00';

-- 이름이 홍길동인 사용자의 행 개수 조회 -- 
SELECT count(*) FROM `user` WHERE `name` = '홍길동';

-- 자기소개가 없는 행 조회(introduce NULL 인 행 조회) --
SELECT* FROM `user` WHERE `introduce` IS NULL;

-- 자기소개가 있는 행 조회introduce NULL이 아닌 행 조회 --
SELECT* FROM `user` WHERE `introduce` IS NOT NULL;

-- 조건이 여러가지인 경우 --
-- 이름이 홍길동1이면서 취미가 취미1인 경우 --
SELECT* FROM `user` WHERE `name` = '홍길동1' AND `hobby` = '취미1';

-- id가 3이거나 id가 4인 행 조회 --
SELECT* FROM `user` WHERE `id` = 3 OR `id` = 4;

-- 하나의 컬럼에 대해서 일치하는 여러 값 조건 -- 
-- ID : 1, 3, 4 조회 --
SELECT* FROM `user` WHERE `id` IN(3, 4, 1);


