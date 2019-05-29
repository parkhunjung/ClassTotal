--ex07_where.sql

-- 조건절에 사용되는 구문들(연산자 or 절)

/*

between
- WHERE 절에서 사용(조건으로 사용)
- 범위 조건 지정
- 컬럼명 between 최솟값 and 최댓값
- 되도록 사용할 것 (between 사용하지 말 것 - 속도 느림)
- 최솟값, 최댓값 : 포함(Inclusive)

*/

--몸무게 60이상 80이하
SELECT 
    last || first as name, weight 
FROM tblcomedian
WHERE weight >= 60 and weight <= 80;

SELECT 
    last || first as name, weight 
FROM tblcomedian
WHERE weight between 60 and 80;


--비교 연산에 사용되는 자료형
--1. 숫자형
--2. 문자형 > str1.compareTo(str2)
--3. 날짜시간 > tick값 


SELECT * FROM tblcomedian WHERE height >= 170;
SELECT * FROM tblcomedian WHERE first > last; -- 문자형 직접 비교 가능
SELECT * FROM employees WHERE hire_date > '2003-01-01';


SELECT * FROM tblcomedian WHERE last > '다' AND last < '자';
SELECT * FROM tblcomedian WHERE last BETWEEN '다' AND '자';

SELECT * FROM employees WHERE hire_date > '2003-01-01' and hire_date < '2003-12-31';
SELECT * FROM employees WHERE hire_date BETWEEN '2003-01-01' and '2003-12-31';

SELECT * FROM tblcomedian WHERE height BETWEEN 172 AND 178;
SELECT * FROM tblcomedian WHERE NOT height BETWEEN 172 AND 178;


/*

in 
- WHERE 절에서 사용(조건으로 사용)
- 열거형 조건 (제시된 값중에서 하나라도 일치하면 만족)
- 컬럼명 in (열거형값)



*/

--SQL 문법은 대소문자를 구분하지 않는다.
--데이터는 대소문자를 구분한다.
-- AS + EU
SELECT * FROM tblcountry WHERE continent = 'AS' OR continent = 'EU';
SELECT * FROM tblcountry WHERE continent IN('AS', 'EU'); --(***)

SELECT * FROM tbldiary WHERE weather = '맑음' or weather = '흐림';
SELECT * FROM tbldiary WHERE weather IN('맑음', '흐림');
SELECT * FROM tbldiary WHERE weather IN('맑음', '흐림') 
    AND regdate BETWEEN '2019-01-20' AND '2019-01-26';
    
SELECT * FROM tblinsa WHERE basicpay BETWEEN 2000000 AND 2500000;
SELECT name, basicpay, sudang FROM tblinsa WHERE basicpay + sudang between 2000000 and 2500000;

SELECT * 
FROM tblinsa
WHERE jikwi IN ('부장', '과장') AND city IN ('서울', '인천');


/*

LIKE 
- WHERE 절에서 사용(조건으로 사용) 
- 패턴 비교(특정한 패턴을 가지는 문자열 검색)
- 문자형을 대상으로 (숫자, 날짜 적용 못함)
- 정규 표현식의 간단한 버전
- 컬럼명 LIKE '패턴 문자열'

패턴 문자열 구성 요소
1. _ : 임의의 문자 1글자
2. % : 임의의 문자 0 ~ 무한대

*/

SELECT name FROM tblinsa; 
SELECT name FROM tblinsa WHERE name LIKE '김__'; 
SELECT name, tel FROM tblinsa WHERE tel LIKE '011-9___-___5'; 
SELECT name FROM tblinsa WHERE name LIKE '__동'; 
SELECT name FROM tblinsa WHERE name LIKE '_길_'; 

SELECT * FROM employees WHERE first_name LIKE 'A________'; -- 정밀도가 높다, 검색률이 낮다
SELECT * FROM employees WHERE first_name LIKE 'A%'; -- 정밀도가 낮다, 검색률이 높다
SELECT * FROM employees WHERE first_name LIKE '%a'; 
SELECT * FROM employees WHERE first_name LIKE 'A%a';
SELECT * FROM employees WHERE first_name LIKE 'A%a%a'; 
SELECT * FROM employees WHERE first_name LIKE '%a%'; -- a가 들어있으면 다찾아라 // 현재 사이트 검색 로직


/*

null
- 자바의 null 과 유사
- 직접 표현 가능(null)
- 컬럼이 비어있는 상태(셀)

null 은 연산의 대상이 될 수 없다.(모든 언어 공통)

null 조건
- WHERE 절에서 사용
- 컬럼명 is null


*/

--인구수가 미기재된 나라?
SELECT * FROM tblcountry WHERE population = null; --(XXX) population == null?
SELECT * FROM tblcountry WHERE population is null; --(O)population == null?

SELECT * FROM tblcountry WHERE NOT population IS null; 
SELECT * FROM tblcountry WHERE population IS NOT null; -- 더 많이 사용

--tel 기재 안된사람
SELECT * FROM tblinsa WHERE tel IS null;

--도서관 대여 테이블
SELECT 이름, 대여날짜, 반납날짜 FROM 대여테이블;

--아직 책을 빌려간뒤 반납안한 사람??
SELECT 이름, 대여날짜, 반납날짜, FROM 대여테이블 WHERE 반납날짜 IS null;

--맘만먹고 아직 안한일?
SELECT *
FROM tbltodo 
WHERE completedate IS null;

--마음먹고 한일?
SELECT *
FROM tbltodo 
WHERE completedate IS NOT null;




