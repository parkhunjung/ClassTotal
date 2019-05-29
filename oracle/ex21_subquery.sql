--ex21_subquery.sql

/*

SUB QUERY, 서브 쿼리
- 쿼리안에 또 다른 쿼리가 있는 형태

SELECT 문 (SELECT 문)
INSERT 문 (SELECT 문)
UPDATE 문 (SELECT 문)
DELETE 문 (SELECT 문)

*/
-- 인구수가 가장 많은 나라의 인구?
SELECT MAX(population) FROM tblcountry;

-- 인구수가 가장 많은 나라의 국가명?
SELECT MAX(population), name FROM tblcountry;
SELECT name FROM tblcountry WHERE population = 140991;

-- 서브 쿼리의 역할 > 함수의 반환값과 유사
SELECT name FROM tblcountry WHERE population = (SELECT MAX(population) FROM tblcountry);

--직원 중 가장 월급이 많은 사람?
SELECT max(basicpay) FROM tblinsa;
SELECT * FROM tblinsa WHERE basicpay = 2650000;

SELECT * FROM tblinsa WHERE basicpay = (SELECT MAX(basicpay) FROM tblinsa);

SELECT * FROM tblinsa WHERE basicpay = (SELECT MIN(basicpay) FROM tblinsa);

SELECT * FROM tblinsa WHERE basicpay = (SELECT AVG(basicpay) FROM tblinsa);

SELECT * FROM tblinsa WHERE basicpay > (SELECT AVG(basicpay) FROM tblinsa);

SELECT * FROM tblinsa WHERE basicpay < (SELECT AVG(basicpay) FROM tblinsa);

-- tblinsa '김정훈' 직원보다 급여를 더 많이 받는 사람들?
-- tblmen + tblwomen 남자 중 키 165, 몸무게 58 남자 > 그남자의 여자친구 정보를 가져오시오 .

SELECT * FROM tblinsa WHERE basicpay > (SELECT basicpay FROM tblinsa WHERE name = '김정훈');

SELECT * FROM tblwomen WHERE name = (SELECT couple FROM tblmen WHERE height = 165 AND weight = 58);

-- '홍길동' 과 같은 부에서 있는 사람
SELECT * FROM tblinsa
WHERE buseo = (SELECT buseo FROM tblinsa WHERE name = '홍길동');

-- 서브쿼리의 결과와 단일컬럼을 비교할 때 반드시 IN을 사용한다. (단, 서브쿼리의 결과가 1개 컬럼일때)
-- 급여를 250만원 이상 받는 사람과 같은 부서에 있는 사람?
-- ORA-01427: single-row subquery returns more than one row => 1:1비교가 아니라서, 1:n 비교라서
SELECT * FROM tblinsa
--WHERE buseo = (SELECT buseo FROM tblinsa WHERE basicpay >= 2500000);
--WHERE buseo = '기획부' OR buseo = '영업부' OR buseo = '총무부';
--WHERE buseo IN ('기획부', '영업부', '총무부');
WHERE buseo IN (SELECT buseo FROM tblinsa WHERE basicpay >= 2600000); -- 결과가 여러개일때는 IN 처리를 해서 보여줘야함

-- '홍길동'과 같은 부서에 근무하면서 같은지역에 사는사람?
SELECT buseo, city FROM tblinsa WHERE name = '홍길동';

SELECT * FROM tblinsa
WHERE buseo = '기획부' AND city = '서울';

SELECT * FROM tblinsa
WHERE buseo = (SELECT buseo FROM tblinsa WHERE name = '홍길동') 
    AND city = (SELECT city FROM tblinsa WHERE name = '홍길동');

-- 1레코드 + 다중 컬럼
SELECT * FROM tblinsa
WHERE (buseo, city) = (SELECT buseo, city FROM tblinsa WHERE name = '홍길동');

-- 복수 레코드 + 다중 컬럼
SELECT * FROM tblinsa
WHERE (buseo, city) IN (SELECT buseo, city FROM tblinsa WHERE basicpay >= 2600000);

-- 서브 쿼리의 용도
-- 1. 조건절에 사용
-- 2. FROM절에 사용 > '인라인 뷰'
-- 3. 컬럼 리스트에 사용 > 서브 쿼리가 컬럼으로 사용 > 상관서브쿼리(바깥쪽 데이터를 안쪽 테이블에서 사용 할 때)

SELECT "직원명", jikwi FROM (SELECT name AS "직원명", jikwi, ssn, tel FROM tblinsa WHERE buseo = '기획부'); --임시 기획부 테이블

SELECT name, jikwi, buseo, (SELECT name FROM tblinsa WHERE num = 1001) FROM tblinsa;

SELECT name, jikwi, buseo, (SELECT COUNT(*) FROM tblinsa) FROM tblinsa;

SELECT * FROM tblmen;
SELECT * FROM tblwomen;

-- '홍길동'의 키와 여자친구인 '장도연'의 키를 가져오시오
SELECT height FROM tblmen WHERE name = '홍길동'; --180
SELECT height FROM tblwomen WHERE name = '장도연'; --177

SELECT name, height, couple, (SELECT height FROM tblwomen WHERE name = tblmen.couple) AS "여자 키" FROM tblmen WHERE name = '홍길동';

SELECT name, height, couple, (SELECT height FROM tblwomen WHERE name = tblmen.couple) AS "여자 키" FROM tblmen;



SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM locations;

-- 'London' 에 위치한 부서에 근무하는 직원들?
-- 'London' 에(locations) 위치한 부서(departments)에 근무하는 직원들(employees)?

SELECT * FROM employees WHERE department_id = 40;

SELECT * FROM departments WHERE location_id = 2400;

SELECT * FROM locations WHERE city = 'London';



SELECT 
    * 
FROM employees 
WHERE department_id = (SELECT department_id FROM departments 
    WHERE location_id = (SELECT location_id FROM locations WHERE city = 'London'));
























