DESC `user`;

INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `introduce`, `email`, `createdAt`, `updatedAt`)
VALUE 
('이현기', '19980405', '독서,노래,영화', '안녕하세요 제 소개 입니다', 'hyungeerhee@naver.com', now(), now());
 
 SELECT * FROM `user`;
 
 -- 여러행 INSERT
 INSERT INTO `user`
 (`name`, `yyyymmdd`, `hobby`, `introduce`, `email`, `createdAt`, `updatedAt`)
VALUES
('김바다', '20190104', '사냥하기,물먹기', '나랑 놀아줄 집사 모집합니다', 'bada@gamil.com', now(), now()), 
('유재석', '19780712', '진행하기,수다떨기,독서', '안녕하세요 국민MC 유재석입니다', 'yu@naver.com', now(), now()),
('이현기', '20021004', '코딩', NULL, 'hangulu@naver.com', now(), now());

 
