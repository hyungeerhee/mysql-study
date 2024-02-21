SELECT * FROM `user`;

-- 독서가 취미인 사용자 
SELECT * FROM `user` WHERE `hobby` LIKE '%독서%';

INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `introduce`, `email`)
VALUES
('김인규', '19991108', '독서', '안녕하세요 제 소개 입니다', 'lecture@hagulu.com'),
('김인규', '19991108', '노래', '안녕하세요 제 소개 입니다', 'lecture@hagulu.com'),
('김인규', '19991108', '영화', '안녕하세요 제 소개 입니다', 'lecture@hagulu.com');

-- 취미가 독서인 사용자
SELECT * FROM `user` WHERE `hobby` = '독서';

-- 이름, 생년월일, 자기소개, 이메일
CREATE TABLE `new_user` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `name` VARCHAR(16) NOT NULL, 
    `yyyymmdd` CHAR(8) NOT NULL, 
    `email` VARCHAR(32) NOT NULL, 
    `introduce` TEXT,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE `new_user`;
DROP TABLE `hobby`;
-- 취미 
CREATE TABLE `hobby` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `userId` INT NOT NULL,
    `hobby` VARCHAR(16) NOT NULL, 
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESC `new_user`;
DESC `hobby`;

-- 데이터 추가 
INSERT INTO `new_user`
(`name`, `yyyymmdd`, `email`, `introduce`)
VALUES
('김인규', '19991108', 'lecture@hagulu.com', '안녕하세요 제 소개입니다'),
('김바다', '20190104', 'bada@gmail.com', '나랑 놀아줄 집사 모집합니다');

SELECT * FROM `new_user`;

INSERT INTO `hobby`
(`userId`, `hobby`)
VALUES 
(1, '독서'),
(1, '노래'),
(1, '영화'),
(2, '사냥하기'),
(2, '물먹기');

SELECT * FROM `hobby`;

-- 취미가 독서인 사용자 이름, 생년월일 이메일 조회 
SELECT * FROM `hobby` WHERE `hobby` = '독서';
SELECT `name`, `yyyymmdd`, `email` FROM `new_user` WHERE `id` = 1;