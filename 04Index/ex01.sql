CREATE TABLE `student` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `major` VARCHAR(16) NOT NULL,
    `number` VARCHAR(16) NOT NULL,
    INDEX `idx_name` (`name`),
    UNIQUE INDEX `idx_number` (`number`), 
    INDEX `idx_name_major` (`name`, `major`)
    
    
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

DESC student `student`;
DROP TABLE `student`;

CREATE TABLE `student` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `major` VARCHAR(16) NOT NULL,
    `number` VARCHAR(16) NOT NULL
    
    
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

-- name index 추가
ALTER TABLE `student` ADD INDEX `idx_name` (`name`);
 
-- 유니크 index 추가
ALTER TABLE `student` ADD UNIQUE INDEX `idx_number` (`number`);

-- 여러 컬럼 index 추가
ALTER TABLE `student` ADD INDEX `idx_name_number` (`name`, `number`);
























