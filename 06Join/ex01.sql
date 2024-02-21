SELECT * FROM `seller`;
SELECT * FROM `used_goods`;

-- 하구루 사용자의 판매물품 리스트 조회
SELECT * FROM `seller` WHERE `nickname` = '하구루';
SELECT * FROM `used_goods` WHERE `sellerId` = 5;

-- join 
-- INNER JOIN 
SELECT seller.nickname, seller.temperature, used_goods.title, used_goods.price
FROM `seller` 
JOIN `used_goods` 
ON seller.id = used_goods.sellerId
WHERE seller.nickname = '하구루';

-- 테이블 별명 붙이기
SELECT a.nickname, b.title, b.price
FROM `seller` AS `a`
JOIN `used_goods` AS `b`
ON a.id = b.sellerId
ORDER BY b.price DESC;
 
 -- OUTER JOIN 
 -- LEFT JOIN 
 -- FROM 뒤에 오는 테이블을 기준으로 조인
 SELECT * 
 FROM `seller` 
 LEFT JOIN `used_goods`
 ON seller.id = used_goods.sellerId;
 
 SELECT * 
 FROM `seller` 
 RIGHT JOIN `used_goods` 
 ON seller.id = used_goods.sellerId;
 
 
 
 
 
 
 
 
 
 
 
 
 
 