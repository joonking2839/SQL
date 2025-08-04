-- 09. SET_OPERATORS
-- SET 연산자는 두 개 이상의 SELECT문의 결과 집합을 결합하는데 사용한다.
-- SET 연산자를 통해 결합하는 결과 집합의 컬럼이 동일해야 한다.

-- UNION
-- 두 개 이상의 SELECT 문의 결과를 결합하여 중복된 레코드를 제거한 후 반환하는 연산자
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where category_code = 10
 union
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where menu_price < 9000; 
 
-- UNION ALL
-- 두 개 이상의 SELECT문의 결과를 결합하여 중복된 레코드를 제거하지 않고 모두 반환 
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where category_code = 10
 union all
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where menu_price < 9000; 