-- sakila 데이터베이스 사용
-- city 테이블 

SELECT * FROM `city`; 
 
 -- 조회 개수 제한
 -- 50개 조회
 SELECT * FROM `city` LIMIT 50;
 
 -- 범위 지정
 SELECT * FROM `city` LIMIT 0, 50;
 -- 101번째 부터 50개 조회
 SELECT * FROM `city` LIMIT 100, 50;
 
 -- 포함된 문자열 조회
 -- 도시이름이 C로 시작하는 도시 조회
SELECT * FROM `city` WHERE `city` LIKE 'C%';
-- 도시이름이 C로 끝나는 도시 조회
SELECT * FROM `city` WHERE `city` LIKE '%C';
-- 도시이름에 C가 포함된 도시 조회
SELECT * FROM `city` WHERE `city` LIKE '%C%';
-- 대소문자 구분
SELECT * FROM `city` WHERE `city` LIKE binary('%C%');

-- 정렬하기
-- country_id 기준으로 오름차순 정렬 
SELECT * FROM `city` ORDER BY `country_id`;
-- city 기준으로 내림차순 정렬 
SELECT * FROM `city` ORDER BY `city` DESC;

-- C로 시작하는 도시를 country_id기준으로 오름차순 정렬해서 10개만 조회
-- 조건으로 걸러내고 -> 제한한다.
SELECT * FROM `city` WHERE `city` LIKE 'C%' ORDER BY `country_id` LIMIT 10;

-- concat 함수
-- 문자열을 이어 붙여주는 함수
 SELECT concat('hello', 'world');

-- 도시이름 : XXX 나라코드 : 00 
SELECT concat('도시이름 : ', `city`, '나라코드 : ', `country_id`) AS '결과' FROM `city`; 





 