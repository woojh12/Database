USE dulumary;

DESC `review`;

SELECT * FROM `review`;

SELECT * FROM `review` WHERE `userName` = '맛있으면짖는개' AND (`review` LIKE '왈왈%');

SELECT * FROM `review` ORDER BY `createdAt` DESC LIMIT 0,10;

SELECT * FROM `review` WHERE `storeName` = '교촌치킨' ORDER BY `point` DESC;

SELECT `userName` AS `이름`, `storeName` AS `가게` FROM `review` ORDER BY `point` ASC LIMIT 0,1;
-- SELECT `userName`, `storename` FROM `review` WHERE `point` = (SELECT MIN(`point`) FROM `review`); --