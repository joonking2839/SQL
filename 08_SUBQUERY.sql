-- 08_SUBQUERY
-- 서브쿼리는 다른 쿼리 내에서 실행되는 쿼리이다.
-- 서브쿼리의 결과를 활용해서 복잡한 메인쿼리를 작성해 한번에 여러 작업을 수행할 수 있다.

-- 서브쿼리
-- 민트미역국 카테고리 번호 조회
select
       category_code
  from tbl_menu
 where menu_name = '민트미역국';

-- 메인쿼리
-- 다중열 결과 조회
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu;   
 
-- 서브쿼리를 활용한 메인 쿼리
-- 민트미역국과 같은 카테고리 메뉴 조회
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu 
 where category_code = (select
					           category_code
                          from tbl_menu
                         where menu_name = '민트미역국');
                         
-- 서브쿼리
select
       count(*) as 'count',
       category_code
  from tbl_menu
  group by category_code;
  
-- 서브쿼리를 활용한 메인쿼리
-- from절에 쓰인 서브쿼리는 반드시 자신의 별칭이 있어야 한다.
select
       max(count)
  from (select
              count(*) as 'count',
              category_code
         from tbl_menu
        group by category_code) as countmenu;
        
-- 서브쿼리
select
	   avg(menu_price)        
  from tbl_menu;
  
-- 전체 메뉴 평균 가격 보다 높은 가격의 메뉴 전체 조회
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu
 where menu_price >  (select
	                         avg(menu_price)        
                        from tbl_menu);