USE dulumary;

CREATE TABLE `weatherhistory`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` VARCHAR(30) NOT NULL,
    `weather` VARCHAR(10) NOT NULL,
    `temperatures` VARCHAR(10) NOT NULL,
    `precipitation` VARCHAR(10) NOT NULL,
    `microDust` VARCHAR(10) NOT NULL,
    `windSpeed` VARCHAR(10) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE `weatherhistory`;
DESC `weatherhistory`;

INSERT INTO `weatherhistory`
(`date`, `weather`, `temperatures`, `precipitation`, `microDust`, `windSpeed`, `createdAt`, `updatedAt`)
VALUES
('2015-07-01', '비', '21.9℃', '83.5mm', '보통', '2.9km/h', now(), now()),
('2015-07-02', '비', '22.6℃', '59.5mm', '보통', '2.5km/h', now(), now()),
('2015-07-03', '흐림', '27.4℃', '0.0mm', '좋음', '2.9km/h', now(), now()),
('2015-07-04', '맑음', '27.3℃', '0.0mm', '좋음', '6.1km/h', now(), now()),
('2015-07-05', '구름조금', '25.3℃', '0.0mm', '나쁨', '4.3km/h', now(), now()),
('2015-07-06', '맑음', '23.9℃', '0.0mm', '나쁨', '6.5km/h', now(), now()),
('2015-07-07', '맑음', '23.7℃', '0.0mm', '좋음', '5.8km/h', now(), now()),
('2015-07-08', '흐림', '23.3℃', '0.0mm', '좋음', '5.4km/h', now(), now()),
('2015-07-09', '비', '20.8℃', '14.0mm', '보통', '4.0km/h', now(), now()),
('2015-07-10', '비', '23.7℃', '16.5mm', '보통', '2.5km/h', now(), now()),
('2015-07-11', '비', '26.8℃', '3.0mm', '좋음', '4.7km/h', now(), now()),
('2015-07-12', '비', '26.6℃', '1.0mm', '나쁨', '5.4km/h', now(), now()),
('2015-07-13', '구름조금', '27.3℃', '0.0mm', '최악', '6.5km/h', now(), now()),
('2015-07-14', '맑음', '27.9℃', '0.0mm', '보통', '6.8km/h', now(), now());

SELECT * FROM `weatherhistory`;

SELECT `date`, `weather`, `temperatures` FROM `weatherhistory` ORDER BY `temperatures` DESC LIMIT 1;

SELECT `weather`, COUNT(*) AS `count` FROM `weatherhistory` GROUP BY `weather`;

SELECT `microDust`, TRUNCATE(AVG(`precipitation`), 1) AS `precipitation` FROM `weatherhistory` GROUP BY `microDust` HAVING `precipitation` != '0.0mm';

SELECT `microDust`, TRUNCATE(AVG(`windSpeed`), 2) AS `windSpeed` FROM `weatherhistory` GROUP BY `microDust` HAVING `windSpeed` >= '4.0km/h' ORDER BY `windSpeed` DESC;

