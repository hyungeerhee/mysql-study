-- 테이블 생성
CREATE TABLE `entrant` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(8) NOT NULL,
    `license` VARCHAR(32) NOT NULL,
    `score` INT NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 데이터 삽입
INSERT INTO `entrant` 
(`name`, `license`, `score`)
VALUES 
('김인규', '정보처리기사', 87),
('김바다', '컴퓨터활용능력', 95),
('김태형', '정보처리기사', 99),
('박지민', '컴퓨터활용능력', 68),
('김인규', '컴퓨터활용능력', 78),
('김남준', '정보처리산업기사', 40),
('정호석', '컴퓨터활용능력', 99),
('민윤기', '컴퓨터활용능력', 100),
('김바다', '정보처리산업기사', 78),
('김바다', '정보처리기사', 82);

SELECT * FROM `entrant`;

-- 사람별 시험 응시 개수 조회
SELECT `name`, count(*) FROM `entrant` GROUP BY `name`;

-- 자격증 종류별 점수 합계
SELECT `license`, sum(`score`) FROM `entrant` GROUP BY `license`;

-- 자격증 종류별 평균
SELECT `license`, avg(`score`) FROM `entrant` GROUP BY `license`;

-- GROUP BY 조건 추가
-- 자격증 시험을 2개이상 본 사람 조회
-- 1. 사람별 자격증 응시 개수
-- 2. 응시개수가 2개인 조건
SELECT `name`, count(*) FROM `entrant` GROUP BY `name` HAVING count(*) >= 2;

-- 자격증 종류별 평균 점수가 80이 넘는 자격증 조회
-- 1. 자격증 종류별 평균
-- 2. 평균이 80이상 조건
SELECT `license`, avg(`score`) AS `average` FROM `entrant` GROUP BY `license` 
HAVING `average` >= 80;

 














 











