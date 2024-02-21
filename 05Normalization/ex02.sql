-- 홍당무 마켓
-- 중고물품 거래 서비스
-- 제목, 가격, 물품설명, 물품사진, 판매자 매너 온도, 판매자 프로필 사진 

-- 물품 정보 : 제목, 가격, 물품설명, 물품사진 
CREATE TABLE `used_goods` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `sellerId` INT NOT NULL,
    `title` VARCHAR(64) NOT NULL,
    `price` INT NOT NULL,
    `description` TEXT NOT NULL,
    `image` VARCHAR(128),
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = innoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE `used_goods`;

-- 판매자 정보 : 닉네임, 매너온도(0 ~ 99.9), 프로필 사진 
CREATE TABLE `seller` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nickname` VARCHAR(32) NOT NULL,
    `temperature` DECIMAL(3,1) DEFAULT 36.5,
    `profileImage` VARCHAR(128),
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = innoDB DEFAULT CHARSET=utf8mb4;

DESC `used_goods`;
DESC `seller`;

-- 판매자 정보 저장 
INSERT INTO `seller` 
(`nickname`, `temperature`, `profileImage`)
VALUES 
('마로비', 36.5, 'https://cdn.pixabay.com/photo/2023/12/22/09/46/cotton-top-tamarin-8463471_640.jpg'),
('아메리카노', 48.2, NULL),
('동네주민', 29.0, 'https://cdn.pixabay.com/photo/2023/10/26/14/31/birds-of-prey-8342827_640.jpg'),
('네고왕', 36.5, NULL),
('하구루', 36.5, 'https://cdn.pixabay.com/photo/2023/12/10/03/00/peacock-8440548_640.jpg');

SELECT * FROM `seller`;

INSERT INTO `used_goods` 
(`sellerId`, `title`, `price`, `description`, `image`)
VALUES
(5, '플스5 팝니다', 300000, '쿨거래 하실분들 연락주세요', 'https://cdn.pixabay.com/photo/2017/04/09/12/00/gaming-2215601_640.jpg'), 
(5, '원피스 팝니다', 200000, '살이 빠져서 사이즈가 커서 못입어요', 'https://cdn.pixabay.com/photo/2016/06/29/04/17/wedding-dress-1485984_1280.jpg'),
(3, '후라다 여성지갑 팝니다', 40000, '새것입니다', 'https://cdn.pixabay.com/photo/2016/04/13/05/29/wallet-1326017_640.jpg'),
(2, '바퀴벌레 좀 잡아주세요', 5000, '제발 좀 잡아 주세요 막 날아 다녀요', NULL);

SELECT * FROM `used_goods`;

-- 하구루 판매자가 올린 물품리스트 조회
SELECT * FROM `seller` WHERE `nickname` = '하구루';
SELECT * FROM `used_goods` WHERE `sellerID` = 5;










