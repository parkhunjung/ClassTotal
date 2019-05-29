--ex06_where.sql

/*

SELECT 문
- SELECT 컬럼리스트 FROM 테이블
- SELECT 컬럼리스트 FROM 테이블 WHERE 조건

1. SELECT 컬럼리스트
    - 가져올 컬럼을 지정한다.
    - 가져올 값을 연산하기도 한다.
2. FROM 테이블
    - 테이블을 선택함
3. WHERE 조건
    - 가져올 레코드를 지정한다.

4. 절 실행 순서    
- FROM(1) > SELECT(2)
- FROM(1) > WHERE(2) > SELECT(3)


WHERE 절
- 조건을 제시한다.
- 조건을 제시한 후 그 조 건을 만족하는 행만 결과 테이블로 가져온다.
- 주로 조건으로 컬럼값을 대샇ㅇ으로 비교 연산 OR 논리 연산을 적용한다.

SELECT 컬럼리스트 : 수직 필터링
WHERE 조건 : 수평 필터링

*/

SELECT name, population FROM tblcountry WHERE population >= 5147;

SELECT 
    last || first as fullname 
FROM tblcomedian;

-- 절의 순서 + 가져올 컬럼이 아니라도 조건을 걸 수 있다. (FROM 1번 SELECT 꼴찌 거의 불변) 
SELECT 
    last || first as fullname 
FROM tblcomedian
WHERE weight >= 70;

-- 조건식에 추가 연산 가능 > WHERE 절에는 자바의 조건식과 동등한 작업이 가능하다.
SELECT 
    last || first as fullname 
FROM tblcomedian
WHERE weight * 2 >= 100;


SELECT 
    last || first as fullname 
FROM tblcomedian
WHERE weight > 70 and height > 180;


SELECT 
    last || first as fullname 
FROM tblcomedian
WHERE gender = 'f';

desc employees;
SELECT * FROM employees;

SELECT * FROM employees WHERE job_id = 'IT_PROG';
SELECT * FROM employees WHERE job_id <> 'IT_PROG';
SELECT * FROM employees WHERE salary > 8000;
SELECT * FROM employees WHERE salary > 8000 and salary < 10000;

-- 날짜 조건

SELECT * FROM employees WHERE hire_date = '03/06/17'; -- 비권장(SQL Developer가 보여주는 방식)
SELECT * FROM employees WHERE hire_date = '2003-06-17'; -- 권장(표준 표기법)

--추가 
-- : 조건은 주로 컬럼값을 대상으로 한다.

SELECT * FROM tblcomedian WHERE height = 178;
SELECT * FROM tblcomedian WHERE 1 = 1; -- 1 = 1 -> 이건 트루값을 반환하라는 소리와 같다.
SELECT * FROM tblcomedian WHERE 1 <> 1; -- -> false


-- 로그인 > SQL Injection
-- 아이디 : hong
-- 암호 : 1111
-- 암호 : 1111 or 1=1
SELECT 결과 FROM 회원테이블 WHERE id = 'hong' and pw = '1111';
SELECT 결과 FROM 회원테이블 WHERE id = 'hong' and pw = '1111' or 1 = 1';























