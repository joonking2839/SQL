-- 12. DDL12. DDL(Data Definition Language)
-- 데이터베이스의 스키마를 정의하거나 수정하는데 사용되는 sql의 한 부분이다.

-- CREATE
-- 테이블 생성을 위한 구문
-- IF NOT EXISTS 를 적용하면 기존에 존재하는 테이블이라도 에러가 발생하지 않는다.

-- tb1 생성
create table if not exists tb1(
       pk int primary key,
       fk int,
       col1 varchar(255),
       check(col1 in('y', 'n'))
);

-- 테이블 구조 확인
describe tb1;

insert into tb1 values(1, 10, 'y');

select * from tb1;

-- AUTO INCREMENT
-- INSERT 시 PRIMARY KEY키에 해당하는 컬럼에 자동으로 번호를 발생(중복되지 않게)시켜 저장할 수 있다.
create table if not exists tb2(
       pk int auto_increment primary key,
       fk int,
       col1 varchar(255),
       check(col1 in('y', 'n'))
);

describe tb2;

insert into tb2 values(null, 10, 'y');
insert into tb2 values(null, 20, 'y');

select * from tb2;

-- ALTER
-- 테이블에 추가/변경/수정/삭제하는 모든 것은 ALTER 명령어를 사용해 적용한다.

-- 열 추가
alter table tb2
add col2 int not null;

describe tb2;

-- 열 삭제
alter table tb2
drop column col2;

-- 열 이름 및 데이터 형식 변경
alter table tb2
change column fk change_fk int not null;

-- 열 제약 조건 추가 및 삭제
-- tb2 테이블의 primary key 제약조건 삭제
alter table tb2
drop primary key;

-- modify로 컬럼의 정의를 바꾸기
alter table tb2
modify pk int;

describe tb2;

-- 다시 pk 제약조건 추가
alter table tb2
add primary key(pk);

-- DROP
-- 테이블을 삭제하기 위한 구문
-- if exists 적용하면 존재하지 않는 테이블 삭제 구문이라도 에러가 발생하지 않는다.
drop table if exists tb1; 
drop table if exists tb1, tb2;

-- TRUNCATE
-- 논리적으로는 WHERE절이 없는 DELETE구문과 큰 차이가 없어 보인다.
-- 하지만 어차피 데이터를 다 삭제할 경우 행마다 하나씩 지워지는 DELETE보다
-- DROP이후 바로 테이블을 재생성 해주는 TRUNCATE가 훨씬 효율적으로 한번에 테이블을 초기화 시켜준다.
-- 또한 AUTO_INCREMENT 컬럼이 있는 경우 시작 값을 0으로 초기화한다.
insert into tb2 values(null, 10, 'y');
insert into tb2 values(null, 20, 'y');
insert into tb2 values(null, 30, 'y');
insert into tb2 values(null, 40, 'y');

select * from tb2;

-- 테이블 초기화하기
truncate tb2;
truncate table tb2;