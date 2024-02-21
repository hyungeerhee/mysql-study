SELECT * FROM `user`;

-- 수정하기
-- id가 4인 데이터의 email 주소를 hagulu@gmail.com로 수정
UPDATE `user` 
SET 
	`email` = 'hangulu@gmail.com'
WHERE `id` = 4;

-- id가 2인 데이터의 취미를 '맛집탐방' 자기소개를 '강남 맛집 전문가' 로 수정
UPDATE `user`
SET
	`hobby` = '맛집탐방',
    `introduce` = '강남 맛집 전문가',
    `updatedAt` = now()
WHERE `id` = 2;

-- 삭제하기alter

-- id가 1인 행 삭제 
SELECT * FROM `user` WHERE `id` = 1;
DELETE FROM `user` WHERE `id` = 1;

-- 테이블의 모든 행 삭제
DELETE FROM `user`;

-- 테이블 삭제 -> 테이블 생성
TRUNCATE TABLE `user`; 






