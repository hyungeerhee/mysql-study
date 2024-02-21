-- 1. 테이블 수정
CREATE TABLE `score` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(8) NOT NULL,
    `year` INT NOT NULL,
    `term` CHAR(4) NOT NULL,
    `title` VARCHAR(4) NOT NULL,
    `score` TINYINT NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   
   
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
   
DESC `score`;
DROP TABLE `score`;
   
-- 2. 컬럼 추가
ALTER TABLE `score` DROP COLUMN `semester`;
ALTER TABLE `score` ADD COLUMN `semester` INT NOT NULL AFTER `year`;

	
-- 3. 컬럼 이름 수정
ALTER TABLE `score` CHANGE `title` `subject` VARCHAR(4) NOT NULL;

-- 4. 컬럼 타입 수정
ALTER TABLE `score` MODIFY COLUMN `name` VARCHAR(32) NOT NULL;
ALTER TABLE `score` MODIFY COLUMN `subject` VARCHAR(16) NOT NULL;