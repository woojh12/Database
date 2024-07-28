USE dulumary;

DESC `score`;

SELECT * FROM `score` LIMIT 0,10;

SELECT * FROM `score` ORDER BY `score` DESC;

SELECT *  FROM `score` WHERE `year` = 2020 AND `semester` = 1 AND `term` = '기말고사' AND `subject` = '국어' ORDER BY `score` DESC;

SELECT CONCAT(`year`,'년',`semester`,'학기',`term`,' ',`name`,'-',`subject`,`score`,'점') as `score_info` FROM `score`;