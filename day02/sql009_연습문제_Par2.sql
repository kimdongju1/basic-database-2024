﻿-- 연습문제 PART2
 -- 2. 마당서점의 운영자와 경영자가 요구하는 다음 질문에 대해 SQL 문을 작성하시오.
 -- (1) 마당서점 도서의 총 개수 
SELECT COUNT(*) AS '도서 총 개수'
  FROM Book;
 
-- (2) 마당서점에 도서를 출고하는 출판사의 총 개수
SELECT COUNT (DISTINCT publisher) AS '출판사 총 개수'
  FROM Book;


-- (3) 모든 고객의 이름, 주소
SELECT [name] AS '고객 이름', [address] AS '고객 주소'
  FROM Customer;

-- (4) 2014년 7월 4일~7월 7일 사이에 주문 받은 도서의 주문번호
SELECT orderid
  FROM Orders
  WHERE orderdate BETWEEN '2023-07-04' AND '2023-07-07'


-- (5) 2014년 7월 4일 ~7월 7일 사이에 주문 받은 도서를 제외한 도서의 주문번호
SELECT orderid
  FROM Orders
  WHERE orderdate NOT BETWEEN '2023-07-04' AND '2023-07-07'

-- (6) 성이 '김'씨인 고객의 이름과 주소 
SELECT [name]
     , [address]
  FROM Customer
 WHERE [name] LIKE '김%';


-- (7) 성이 '김'씨이고 이름이 '아'로 끝나느 고객의 이름과 주소
SELECT [name]
     , [address]
  FROM Customer
 WHERE [name] LIKE '김_아';






