-- ex04_select.sql


/*

SELECT 문
- DML, DQL 
- SQL(Q - SELECT)
- 가장 빈도수가 높다.(연습을 가장 많이 할것)
- 사용 목적 : 데이터베이스로부터 원하는 데이터를 가져오는 명령어(읽기)
- 기본 구문
    - SELECT 컬럼리스트 FROM 테이블명; 
    - SELECT 컬럼리스트 
    - FROM 테이블명 // FROM 절(구) : 가져올 테이블을 지정
    - 절 마다 실행순서가 있다.
    - FROM(1) > SELECT(2)
    
*/

SELECT name
FROM tblCountry


--1. 컬럼명
--2. 테이블명.컬럼명
--3. 계정명.테이블명.컬럼명
SELECT hr.tblCountry.name
FROM hr.tblCountry

--데이터 보기 
SELECT * FROM tblCountry;

--클라이언트 툴 사용

-- 현재 소유주가 소유하고 있는 테이블 명단
SELECT * FROM tabs; -- tables(시스템 테이블)

--tblCountry > 컬럼 구성?? > 1. DDL 2. desc
desc tblCountry; --컬럼명, 자료형, 널(필수입력)

--다중 컬럼
SELECT name, capital FROM tblCountry; --일부컬럼
SELECT name, capital, population, continent, area FROM tblCountry; -- 모든컬럼 근데 가독성때문에 (***)얘를 더많이쓴다.
SELECT * FROM tblCountry; -- 모든컬럼을 아주간단하게(* => wild card)

-- 원본의 컬럼 순서와 다르게 명시
SELECT capital, population, continent, area, name FROM tblCountry; -- 원본테이블의 순서보단 가져올때 순서를 원하는대로 배치가 가능

SELECT name, name FROM tblCountry;
SELECT name, length(name) FROM tblCountry;

-- error
-- OBA--00904 : "AGE" : invalid identifier => OBA--00904 에러검색은 이녀석을 검색하는것이 좋다.
SELECT age FROM tblCountry;

-- ORA-00942: table or view does not exist
SELECT name FROM tblCoutry;

























