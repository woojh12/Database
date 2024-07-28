-- INSERT Query --

DESC `user`;

INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `email`, `introduce`, `createdAt`, `updatedAt`)
VALUE
('홍길동','19991106','독서,노래,영화','email@naver.com','안녕하세요,소개입니다.', '2024-07-09 20:18:20', now());

-- 조회하기 -- 
SELECT* FROM `user`;

-- 여러 행 저장 --
INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `email`, `introduce`, `createdAt`, `updatedAt`)
VALUES
('홍길동1', '20240101','취미1','email1@naver.com','안녕', now(), now()),
('홍길동2', '20240709', '취미2', 'email2@naver.com', '안녕2', now(), now()),
('홍길동', '20220202', '취미3', 'email3@naver.com', NULL, now(), now());

