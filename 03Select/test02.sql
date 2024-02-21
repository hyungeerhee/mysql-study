-- 1. 
SELECT * FROM `review` WHERE `userName` = '맛있으면짖는개' AND `review` Like '왈왈%';

-- 2.
SELECT * FROM `review` ORDER BY `createdAt` LIMIT 10; 

-- 3. 
SELECT * FROM `review` WHERE `storeName` = '교촌치킨' ORDER BY `point` DESC;

-- 4.
SELECT `userName`, `storeName` FROM `review` ORDER BY `point` LIMIT 1;