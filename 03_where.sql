-- orderable_status = 'N'인 행을 조회하기
-- 주문 불가능한 메뉴 조회(메뉴명, 메뉴코드)
SELECT
		 menu_name
	  , menu_code
-- 	  , orderable_status
  FROM tbl_menu
 WHERE orderable_status = 'N';
 
 -- 테이블 구조 확인
 DESC tbl_menu;
 
--  ------------------------------------------------------
-- '기타' 카테고리에 해당하지 않는 메뉴를 조회하시오.
-- 1) '기타' 카테고리의 번호 파악하기
SELECT
		 category_code
	  , category_name
  FROM tbl_category
 WHERE category_name = '기타';

-- 2) 해당 번호를 가지지 않는 메뉴 조회
SELECT
		 *
  FROM tbl_menu
--  WHERE category_code != 10;
 WHERE category_code <> 10;
 
-- -----------------------------------------------------
-- 10,000원 이상의 메뉴 조회
SELECT 
		 * 
  FROM tbl_menu
 WHERE menu_price >= 10000;

-- 10,000원 미만의 메뉴 조회
SELECT 
		 * 
  FROM tbl_menu
 WHERE menu_price < 10000;

-- 10,000원 이상 12,000원 이하 메뉴 조회
SELECT 
		 * 
  FROM tbl_menu
--  WHERE menu_price BETWEEN 10000 AND 12000;
 WHERE menu_price >= 10000 
   AND menu_price <= 12000; 
 

 
 
 
 
 
 
 
 
 
 
 