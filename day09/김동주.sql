-- 1. 
SELECT email
	 , mobile
	 , names
	 , addr
  FROM membertbl
 ORDER BY addr DESC, Email ASC;

-- 2
SELECT Names AS '도서명'
	 , Author AS '저자'
	 , ISBN 
	 , Price ' 정가'
  FROM bookstbl
 ORDER BY price DESC;

-- 3
SELECT m.Names AS '회원명'
	 , m.Levels AS '회원등급' 
	 , m.Addr AS '회원주소'
	 , t.rentalDate AS '대여일'
  FROM membertbl AS m
 LEFT JOIN rentaltbl AS t ON m.memberIdx = t.memberIdx
 WHERE t.memberIdx IS NULL AND m.Levels = 'A'


-- 4
SELECT d.Names AS '책 장르'
	 , FORMAT(SUM(b.Price), '#,#' +'원') AS '총합계금액'
  FROM divtbl d
  JOIN bookstbl b ON b.Division = d.Division
GROUP BY d.Names

-- 5
SELECT ISNULL(d.Names, '--합계--') AS '책 장르'
	 , COUNT(b.bookIdx) AS '권수'
	 , FORMAT(SUM(b.Price), '#,#' +'원') AS '총합계금액'
  FROM divtbl d
  JOIN bookstbl b ON b.Division = d.Division
GROUP BY d.Names WITH ROLLUP

