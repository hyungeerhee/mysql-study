-- 1.
SELECT * FROM `score` LIMIT 10;

-- 2.
SELECT * FROM `score` ORDER BY `score` DESC;

-- 3. 
SELECT * FROM `score` WHERE `semester` = 1 AND `term` = '기말고사' AND `subject` = '국어' ORDER BY `score` DESC;

-- 4. 
SELECT concat('2020년1학기중간고사 ', `name`, ' - ', `subject`, `score`, '점') AS 'score_info' FROM `score`;
