-- sakila DB 사용 --
USE sakila;

SELECT * FROM `city`;

-- 조회 개수 제한 --
-- 50개로 조회 --
-- SELECT * FROM `city` LIMIT 0, 50; -- 
-- 				OR 				--
SELECT * FROM `city` LIMIT 50;

-- 범위 지정 -- 
-- 101번째 부터 50개 조회 --
SELECT * FROM `city` LIMIT 100,50; 

-- 포함된 문자열 조회 -- 
-- C로 시작하는 city 조회 -- 
SELECT * FROM `city` WHERE `city` LIKE 'C%';

-- C로 끝나는 city 조회 -- 
SELECT * FROM `city` WHERE `city` LIKE '%C';

-- C가 포함된 city 조회 --
SELECT * FROM `city` WHERE `city` LIKE '%C%';

-- 대소문자 구분 -- 
-- 대문자 C로 조회 -- 
SELECT * FROM `city` WHERE `city` LIKE binary('%C%');

-- 정렬 하기 -- 
-- country_id를 기준으로 정렬(오름차순) 기본 : 오름차순 --
-- SELECT * FROM `city` ORDER BY `country_id` ASC; --
--						OR					--
SELECT * FROM `city` ORDER BY `country_id`;

-- country_id를 기준으로 정렬(내림차순) --
SELECT * FROM `city` ORDER BY `country_id` DESC;

-- 도시이름 내림차순 조회 -- 
SELECT * FROM `city` ORDER BY `city` DESC;

-- C로 시작하는 도시를 country_id로 오름차순으로 정렬해서 10개 조회 -- 
-- 필터링해서 행 줄이고, 정렬해서 잘라 낸다. --
SELECT * FROM `city` WHERE `city` LIKE 'C%' ORDER BY `country_id` ASC LIMIT 0, 10;

-- 컬럼의 값들을 조합해서 문자열로 조회 --
-- CONCAT 함수 : 문자열을 이어붙여줌 --
SELECT concat('Hello', 'wolrd'); 

-- (도시이름 : 실제 도시 이름, 나라코드 : 숫자) 형식 출력 --
SELECT concat('도시이름 : ', `city`, ', 나라코드 : ', `country_id`) AS `결과` FROM `city`;


