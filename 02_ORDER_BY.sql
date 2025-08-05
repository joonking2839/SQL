-- 02_ORDER BY
-- ORDER BY절은 SELECT문과 함께 사용하며 결과 집합을 특정 열이나
-- 열들의 값에 따라 정렬하는데 사용한다.

-- ORDER BY절을 사용하여 결과 집합을 하나의 열로 정렬
select
       menu_code
     , menu_name
     , menu_price
  from tbl_menu
 order by menu_price asc; -- 오름차순 
-- order by menu_price; -- 오름차순 

select
       menu_code
     , menu_name
     , menu_price
  from tbl_menu
 order by menu_price desc; -- 내림차순 
 
-- order by절을 사용하여 결과 집합을 여러 열로 정렬
select
       menu_code
     , menu_name
     , menu_price
  from tbl_menu
 order by menu_price desc,
          menu_name asc;
          
-- order by절을 사용하여 연산 결과로 결과 집합 정렬
select
       menu_code
     , menu_price
     , menu_code * menu_price
  from tbl_menu
 order by menu_code * menu_price desc; 
 
select
       menu_code
     , menu_price
     , menu_code * menu_price as 연산결과
  from tbl_menu
 order by 연산결과 desc; 
 
select
       field(orderable_status, 'y', 'n')
  from tbl_menu;
  
select
       menu_name
     , orderable_status
  from tbl_menu
 order by field(orderable_status, 'y', 'n'); 
 
-- 오름차순 시 null 처음으로
select
       category_code
     , category_name
     , ref_category_code
  from tbl_category
 order by ref_category_code;

-- 오름차순 시 null 마지막으로 
select
       category_code
     , category_name
     , ref_category_code
  from tbl_category
 order by ref_category_code is null;
 
-- 내림차순 시 null 마지막으로
select
       category_code
     , category_name
     , ref_category_code
  from tbl_category
 order by ref_category_code desc; 
 
-- 내림차순 시 null 처음으로
select
       category_code
     , category_name
     , ref_category_code
  from tbl_category
 order by ref_category_code is null desc, ref_category_code desc; 