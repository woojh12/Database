USE dulumary;

DESC `review`;

SELECT* FROM `review`;
DELETE FROM `review` WHERE `id` = 22;

SELECT* FROM `review` WHERE `userName` = '이정재' AND `point` < 2.0;
DELETE FROM `review` WHERE `userName` = '이정재' AND `point` < 2.0;
