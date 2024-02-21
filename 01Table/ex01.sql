-- 테이블 만들기
-- 사람 정보를 저장하는 테이블
-- 이름, 생년월일(20030812), 취미, 자기소개

CREATE TABLE `person` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `name` VARCHAR(16) NOT NULL, 
    `birth` INT NOT NULL,
    `hobby` VARCHAR(64) NOT NULL, 
    `introduce` TEXT,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
    
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

-- 테이블 확인
DESC `person`;
DESC `user`;

-- 테이블 삭제
DROP TABLE `person`;

-- 테이블 수정
-- 테이블 이름 변경
-- person -> user
ALTER TABLE `person` RENAME `user`;

-- 컬럼 추가
-- email 컬럼 추가
ALTER TABLE `user` ADD COLUMN `email` VARCHAR(16);

-- 컬럼 수정
-- email 컬럼의 최대 길이
ALTER TABLE `user` MODIFY COLUMN `email` VARCHAR(32);

-- 컬럼 이름 수정
-- birth -> yyyymmdd
-- INT -> CHAR(8) 
ALTER TABLE `user` CHANGE COLUMN `birth` `yyyymmdd`  CHAR(8) NOT NULL; 







 








