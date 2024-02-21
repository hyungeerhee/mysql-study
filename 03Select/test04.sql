SELECT * FROM `review`;
-- 1. 
SELECT `userName`, count(`review`) FROM `review` GROUP BY `userName`;

-- 2.
SELECT `storeName`, avg(`point`) FROM `review` GROUP BY `storeName`;

-- 3.
SELECT `userName` FROM `review` GROUP BY `userName` HAVING count(`review`) >= 4;

-- 4. 
SELECT * FROM `score`;
SELECT `name`, avg(`score`) FROM `score` WHERE `year` = 2020 AND `semester` = 1 
AND `term` = '기말고사' GROUP BY `name`;

-- 5. 
SELECT `subject`, avg(`score`) FROM `score` GROUP BY `subject` HAVING avg

-- 걸러내고 그룹화하고 정렬하고 제한하기