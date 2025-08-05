-- 03_WHERE
-- WHERE절은 특정 조건에 맞는 레코드만을 선택하는데 사용되며 다양한 방법으로 
-- 조건을 설정할 수 있다.

-- 1) 비교 연산자 예제와 함께 WHERE절 사용
select
       menu_name
     , menu_price
     , orderable_status
  from tbl_menu
 where orderable_status = 'Y';
 
select 
       menu_code
     , menu_name
     , menu_price
     , orderable_status
  from tbl_menu
 where menu_price = 13000; 
 
-- 같지 않음 연산자와 함께 where절 사용
select
       menu_code
     , menu_name
     , orderable_status
  from tbl_menu
 where orderable_status != 'y';
 
-- 대소 비교 연산자와 함께 where절 사용
select
       menu_code
     , menu_name
     , menu_price
  from tbl_menu
 where menu_price > 20000;
 
select
       menu_code
     , menu_name
     , menu_price
  from tbl_menu
 where menu_price <= 20000;

-- 2) AND 연산자와 함께 WHERE절 사용
select
       menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where orderable_status = 'y'
   and category_code = 10;
   
-- 메뉴이름, 메뉴가격, 카테고리 코드, 판매상태를 조회하는데,
-- 메뉴가격이 5000원 초과이고 카테고리 코드가 10번인것을 조회하시오.
select
       menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where menu_price > 5000
   and category_code = 10;
   
-- 03) OR 연산자와 함께 WHERE절 사용
select
       menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where orderable_status = 'y'
    or category_code = 10
 order by category_code;
 
select 
       menu_name
	 , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where menu_price > 5000
    or category_code = 10;
    
-- 메뉴 코드, 메뉴 이름, 메뉴 가격, 카테고리 코드, 판매상태를 조회하는데
-- 카테고리 코드가 4번이거나 메뉴 가격이 9000원이면서 메뉴코드가 10번 초과인 것을 
-- 조회하시오.
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where category_code = 4 
    or menu_price = 9000
   and menu_code > 10;
   
select
       menu_name
     , menu_price
     , category_code
  from tbl_menu
 where menu_price >= 10000
   and menu_price <= 25000
 order by menu_price;

-- 4) BETWEEN 연산자 예제와 함께 WHERE절 사용
select
       menu_name
     , menu_price
     , category_code
  from tbl_menu
 where menu_price between 10000 and 25000
 order by menu_price;
 
-- 부정 표현
select
       menu_name
     , menu_price
     , category_code
  from tbl_menu
 where menu_price not between 10000 and 25000
 order by menu_price;
 
-- 5) LIKE 연산자 예제와 함께 WHERE절 사용
select
       menu_name
     , menu_price
  from tbl_menu
 where menu_name like '%마늘%'
 order by menu_name;
 
-- 메뉴 이름, 메뉴 가격, 카테고리 코드, 판매상태를 조회하는데
-- 메뉴 가격이 5000원 초과이면서 카테고리 코드가 10번이면서
-- 메뉴 이름이 갈치가 포함된 메뉴를 조회하시오.
select
       menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where menu_price > 5000
   and category_code = 10
   and menu_name like '%갈치%';
 
select
       menu_name
     , category_code
  from tbl_menu
 where category_code = 4
    or category_code = 5
    or category_code = 6
 order by category_code;
 
-- 6) IN 연산자 예제와 함께 WHERE절 사용
select
       menu_name
     , category_code
  from tbl_menu
 where category_code in (4,5,6)
 order by category_code;
 
-- 부정 표현 
select
       menu_name
     , category_code
  from tbl_menu
 where category_code not in (4,5,6)
 order by category_code;
 
-- 7) IS NULL 연산자와 함께 WHERE절 사용
select
       category_code
     , category_name
     , ref_category_code
  from tbl_category
 where ref_category_code is null;
 
-- 부정 표현 
select
       category_code
     , category_name
     , ref_category_code
  from tbl_category
 where ref_category_code is not null;