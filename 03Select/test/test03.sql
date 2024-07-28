USE dulumary;

DESC `review`;

SELECT * FROM `review`;

SELECT `userName`, COUNT(*) FROM `review` GROUP BY `userName`;

SELECT `storeName`, AVG(`point`) AS `average` FROM `review` GROUP BY `storeName`;

SELECT `username` FROM `review`  GROUP BY `userName` HAVING COUNT(*) > 3;

SELECT * FROM `score`;

SELECT `name`, AVG(`score`) AS `AVERAGE` FROM `score` WHERE `year` = 2020 AND `semester` = 1 AND `term` = '기말고사' GROUP BY `name`;

SELECT `subject`, AVG(`score`) AS `AVERAGE` FROM `score` WHERE `year` = 2020 GROUP BY `subject`;

SELECT `name`, AVG(`score`) AS `AVERAGE` FROM `score` WHERE `year` = 2020 GROUP BY `name` ORDER BY `AVERAGE` DESC;