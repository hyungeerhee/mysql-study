-- 모든 데이터 조회
SELECT * FROM `user`;

-- 특정 컬럼 정보 조회
SELECT `name`, `yyyymmdd`, `email` FROM `user`;

-- 컬럼명 별명 붙이기
SELECT `name`, `yyyymmdd` AS `생일`, `email` FROM `user`;

-- 중복제거 
-- 동명이인 제거 조회
SELECT DISTINCT `name` FROM `user`;

-- 데이터 개수 조회
SELECT count(*) FROM `user`;
SELECT count(1) AS `count` FROM `user`;

-- 조건 조회
-- id가 3인 데이터 조회
SELECT * FROM `user` WHERE `id` = 3;
SELECT * FROM `user` WHERE `hobby` = '진행하기,수다떨기,독서';

-- 이름이 김바다인 사용자의 생년월일 조회
SELECT `yyyymmdd` FROM `user` WHERE `name` = '김바다';

-- 이름이 김인규가 아닌 사용자 데이터 조회
SELECT * FROM `user` WHERE `name` != '이현기';

-- 날짜 조건 
-- 데이터 생성 시간이 2024-01-03 20:19:43 이후의 데이터 조회
SELECT * FROM `user` WHERE `createdAt` > '2024-01-03 20:19:43';

-- 데이터 생성 시간이 2024-01-03일 이후에 생성된 데이터 조회 
SELECT * FROM `user` WHERE `createdAt` > '2024-01-03 23:59:59';

-- 이름이 김인규인 사용자의 개수 조회
SELECT count(*) FROM `user` WHERE `name` = '이현기';

-- 자기소개가 없는 데이터 조회
SELECT * FROM `user` WHERE `introduce` IS NULL;

-- 자기소개가 있는 데이터 조회
SELECT * FROM `user` WHERE `introduce` IS NOT NULL;

-- 조건이 여러개인 결과 조회
-- 이름이 김인규 이면서, 취미가 코딩인 데이터 조회
SELECT * FROM `user` WHERE `name` = '이현기' AND `hobby` = '코딩';

-- id가 3이거나 id가 4인 데이터 조회
SELECT * FROM `user` WHERE `id` = 3 OR `id` = 4;

-- 하나의 컬럼을 대상으로 여러값 일치 확인
-- id가 1 이거나 3이거나 4인 데이터 조회
SELECT * FROM `user` WHERE `id` IN (1, 3, 4); 



























