-- 1. 테이블 생성
CREATE TABLE `booking` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL, 
    `headcount` TINYINT NOT NULL, 
    `day` TINYINT NOT NULL, 
    `date` TIMESTAMP NOT NULL,
    `phoneNumber` VARCHAR(16) NOT NULL,
    `state` VARCHAR(4) DEFAULT '대기중', 
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
 
DESC `booking`;

-- 2. 데이터 저장 


INSERT INTO `booking` 
(`name`, `headcount`, `day`, `date`, `phoneNumber`, `state`)
VALUES
('강하늘','2','1','2025-07-21','010-1234-1111','대기중'),
('김종국','4','1','2025-08-04','010-1212-2121','확정'),
('박명수','2','4','2025-06-12','010-0000-0000','취소'),
('마동석','2','1','2025-10-30','010-1010-0101','대기중'),
('박나래','10','3','2025-06-23','010-1111-2222','확정'),
('혜리','2','2','2025-04-12','010-9999-9999','확정'),
('황찬성','25','1','2025-09-11','010-0000-2222','확정'),
('탁재훈','4','3','2025-07-12','010-1111-0000','대기중'),
('장나라','2','1','2025-09-12','010-2222-0000','확정');

SELECT * FROM `booking`;

-- 3.
SELECT `name`, `date`, `state` FROM `booking`
WHERE `date` >=  '2025-08-01 00:00:00';

SELECT `name`, `headcount`, `day`, `state` FROM `booking`
WHERE `state` = '확정' AND (`headcount` >= 4 OR `day` >=2);

SELECT count(*) FROM `booking`
WHERE `day` = 1 AND `state` = '대기중';

UPDATE `booking` 
SET 
	`state` = '취소',
    `updatedAt` = now()
WHERE `name` IN ('마동석', '탁재훈');

SELECT * FROM `booking` WHERE `state` = '취소';
DELETE FROM `booking` WHERE `state` = '취소';





