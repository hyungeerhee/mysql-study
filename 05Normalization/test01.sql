SELECT * FROM `score`;

-- 1. 성적 테이블 나누기
CREATE TABLE `new_score` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(4) NOT NULL, 
    `phoneNumber` VARCHAR(16) NOT NULL, 
    `email` VARCHAR(16) NOT NULL, 
    `dreamJob` VARCHAR(16) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `subject_score` ( 
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `scoreId` INT NOT NULL, 
    `year` INT NOT NULL,
    `semester` TINYINT NOT NULL,
    `term` CHAR(4) NOT NULL,
    `subject` VARCHAR(4) NOT NULL,
    `score` INT NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `new_score` 
(`name`, `phoneNumber`, `email`, `dreamJob`)
VALUES 
('유재석', '01000001111', 'mc_u@naver.com', '프로그래머'),
('조세호', '01011110000', 'mrjo@gmail.com', '모델');

DROP TABLE `new_score`;
DROP TABLE `subject_score`;

INSERT INTO `subject_score` 
(`scoreId`, `year`, `semester`, `term`, `subject`, `score`)
VALUES
(1, 2020, 1, '중간고사', '국어', 80),
(1, 2020, 1, '중간고사', '영어', 95),
(1, 2020, 1, '중간고사', '수학', 90),
(2, 2020, 1, '중간고사', '국어', 85),
(2, 2020, 1, '중간고사', '영어', 90),
(2, 2020, 1, '중간고사', '수학', 70);

SELECT * FROM `new_score`;
SELECT * FROM `subject_score`;


SELECT `year`, `semester`, `term`, `subject`, `score` FROM `subject_score` WHERE `scoreId`= 2;












