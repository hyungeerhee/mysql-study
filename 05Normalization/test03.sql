CREATE TABLE `realtor` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `office` VARCHAR(16) NOT NULL,
    `phoneNumber` VARCHAR(16) NOT NULL,
    `address` VARCHAR(32) NOT NULL,
    `grade` VARCHAR(16) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = innoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `realEstate` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `realorId` INT NOT NULL,
	`address` VARCHAR(32) NOT NULL, 
    `area` INT NOT NULL,
    `type` VARCHAR(8) NOT NULL, 
    `price` INT NOT NULL,
    `rentPrice` INT , 
	`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = innoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE `realtor`;
DROP TABLE `realEstate`;
INSERT INTO `realtor` 
(`office`, `phoneNumber`, `address`, `grade`)
VALUES
('황금 부동산', '02-300-2000', '서울시 서초구', '안심중개사'),
('대박 공인중개사', '02-000-7777', '서울시 동작구', '일반중개사');

SELECT * FROM `realtor`;

INSERT INTO `realEstate`
(`realorId`, `address`, `area`, `type`, `price`, `rentPrice`)
VALUES
(1, '레미얀 레이크 아파트 301동 905호', 84,'전세', 40000, NULL),
(2, '레알편한세상 시티 505동 101호', 110,'매매', 120000, NULL),
(1, '롱데캐슬 101동 402호', '87', '월세', 20000, 200),
(1, '슼뷰 오피스텔 1210호', '55', '월세', 10000, 100),
(2, '푸르지용 리버 203동 804호', '123', '매매', 170000, NULL);

SELECT * FROM `realEstate`;

-- 3.
SELECT `address`, `price`, `rentPrice` FROM `realEstate` WHERE `realorId` = 1 AND `type` = '월세' ;

-- 4.
CREATE TABLE `option` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `realEstate` INT NOT NULL, 
    `option` VARCHAR(16) NOT NULL,
	`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = innoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE `option`;

INSERT INTO `option` 
(`realEstate`, `option`)
VALUES
(4, '에어컨'),
(4, '세탁기'),
(4, '냉장고'),
(3, '옷장');

SELECT * FROM `option`;



