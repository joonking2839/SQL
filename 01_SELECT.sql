-- 01_SELECT
-- SELECT절은 MYSQL의 가장 기본적인 명령어로 특정 테이블에서 원하는 데이터를
-- 조회해서 가져오는데 사용한다.

-- SELECT FROM
-- SELECT 문을 사용하여 단일 열 데이터 검색
select menu_name from tbl_menu;

-- SELECT 문을 사용하여 여러 열 데이터 검색
select
       menu_code
     , menu_name
     , menu_price
  from tbl_menu;
  
-- SELECT 문을 사용하여 모든 열 데이터 검색  
select
       menu_code
     , menu_name
     , menu_price
     , category_code
     , orderable_status
  from tbl_menu;  
  
select * from tbl_menu;  

-- 단독 select 활용
-- 연산자
select 6 + 3;
select 6 - 3;
select 6 * 3;

-- 내장 함수
select now();
select concat('홍','','길동');

-- 컬럼 별칭
select concat('홍','','길동') as name;
select concat('홍','','길동') as 'full name';