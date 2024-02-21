-- 실행계획

SELECT * FROM `customer`;

-- PK를 통한 조회 : const
EXPLAIN SELECT * FROM `customer` WHERE `customer_id` = 3;

-- 범위 검색 : range
EXPLAIN SELECT * FROM `customer` WHERE `customer_id` < 10;

-- index가 없는 컬럼 조건 조회: all - full scan
EXPLAIN SELECT * FROM `customer` WHERE `active` = 1;
 
-- index가 있는 컬럼 조건 조회
EXPLAIN SELECT * FROM `customer` WHERE `store_id` = 2;

-- index가 있는 컬럼 LIKE 조회 : range
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE 'A%';
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE '%A';
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE '%A%';