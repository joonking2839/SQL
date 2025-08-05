-- 07_GROUPING
-- GROUP BY절은 결과 집합을 특정 열의 값에 따라 그룹화 하는데 사용된다.
-- HAVING은 GROUP BY절과 함께 사용해야하며 그룹에 대한 조건을 적용하는데 사용된다.

-- 1. GROUP BY
select
       category_code
  from tbl_menu
  group by category_code;
  
-- count 함수 활용
select
       category_code
     , count(*)
  from tbl_menu
  group by category_code;
  
-- sum 함수 활용
select
       category_code
     , sum(menu_price)
  from tbl_menu
  group by category_code;
  
-- avg 함수 활용
select
       category_code
     , avg(menu_price)
  from tbl_menu
  group by category_code;  
  
-- 2개 이상 그룹 생성
select
       menu_price
     , category_code
  from tbl_menu
  group by menu_price, category_code;
  
-- 2. HAVING
-- 5번 카테고리(중식)부터 8번 카테고리(커피)까지의 메뉴 카테고리 번호 조회
select
       category_code
  from tbl_menu
  group by category_code
  having category_code between 5 and 8;
  
-- 3. ROLL UP
-- 컬럼 한 개를 활용한 ROLLUP(카테고리의 총합)
select
       category_code
     , sum(menu_price)
  from tbl_menu
  group by category_code
  with rollup;
  
-- 컬럼 두 개를 활용한 rollup(같은 메뉴 가격별 총합 및 해당 메뉴 가격별 같은 카테고리의 총합)
select
       menu_price
     , category_code
     , sum(menu_price)
  from tbl_menu
  group by menu_price, category_code
  with rollup;