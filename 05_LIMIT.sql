-- 05_LIMIT
-- SELECT문의 결과 집합에서 반환할 행의 수를 제한하는데 사용한다.

-- 전체 행 조회
select 
       menu_code
     , menu_name
     , menu_price
  from tbl_menu
 order by menu_price desc;
 
-- 2번 행부터 5번 행까지 조회
select 
       menu_code
     , menu_name
     , menu_price
  from tbl_menu
 order by menu_price desc
 limit 1, 4;
 
-- 상위 다섯 줄의 행만 조회
select 
       menu_code
     , menu_name
     , menu_price
  from tbl_menu
 order by menu_price desc,
          menu_name asc
 limit 5;         