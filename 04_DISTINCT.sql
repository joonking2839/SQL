-- 04_DISTINCT
-- 중복된 값을 제거하는데 사용된다. 컬럼에 있는 컬럼값들의 종류를 쉽게 파악할 수 있다.
select
       category_code
  from tbl_menu
 order by category_code; 

-- 단일 열 distinct 활용
select
       distinct category_code
  from tbl_menu
 order by category_code; 
 
select
       ref_category_code
  from tbl_category;

-- null 값을 포함한 열의 distinct 활용
select
       distinct ref_category_code
  from tbl_category;  
  
-- 다중열 조회
select
       category_code
     , orderable_status
  from tbl_menu; 
  
-- 다중열의 값들이 모두 동일하면 중복된 것으로 판별한다.
select distinct
       category_code
     , orderable_status
  from tbl_menu;    