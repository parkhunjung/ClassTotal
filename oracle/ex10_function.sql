--ex10_function.sql

/*

오라클(SQL)
-수많은 기능 제공 > 함수 형태로 제공


집계 함수(통계)
1.count() : 개수
2.sum() : 합
3.avg() : 평균
4.max() : 최대값
5.min() : 최소값

1. count()
- 결과셋의 레코드 개수를 반환
- null 은 제외한다.(**********)
- 매개변수는 1개만 허용(2개 이상의 컬럼은 넣을 수 없다.) > 예외 : * 이건 가능
- number count(컬럼명)

*/

SELECT
    name
FROM tblcountry;

SELECT
    count(name)
FROM tblcountry; -- 레코드 개수

SELECT
    population
FROM tblcountry; -- null

SELECT
    count(population)
FROM tblcountry; -- null

SELECT name, population FROM tblcountry;
SELECT count(name, population) FROM tblcountry; --ORA-00909: invalid number of arguments 개수가 2개라서

SELECT
    *
FROM tblcountry;

SELECT
    count(*)
FROM tblcountry; -- 일부컬럼이 null이 존재하더라도 숫자를 센다는 소리다.

--모든 직원이 몇명? // 조건이없을때
SELECT
    count(*)
FROM tblinsa;

--연락처가 있는 직원이 몇명? //조건(null)
SELECT
    count(tel)
FROM tblinsa;

SELECT
    count(*)
FROM tblinsa;
WHERE tel IS NOT null; -- 가독성

SELECT
    count(name), count(buseo), count(tel) 
FROM tblinsa;

SELECT
    COUNT(*) AS "총인원수",
    COUNT(*) - COUNT(tel) AS "연락처 미기재 인원수",
    COUNT(tel) AS "연락처 기재 인원수"
FROM tblinsa;

SELECT
    count(name),
    count(100) -- count(*)
FROM tblinsa;

--당신네 회사에는 어떤 부서들이 있습니까?
SELECT
    DISTINCT buseo
FROM tblinsa;

--당신 회사에는 부서가 몇개 있습니까?
SELECT
    COUNT(DISTINCT buseo)
FROM tblinsa;


--개그맨 남자 몇명?
SELECT * FROM tblcomedian;
SELECT COUNT(*) FROM tblcomedian WHERE gender = 'm';
SELECT COUNT(*) FROM tblcomedian WHERE gender = 'f';

--한번에 보고싶다.
SELECT
    COUNT(CASE
        WHEN gender = 'm' THEN '남자'
        WHEN gender = 'f' THEN '여자'        
    END) AS 총인원수,
    COUNT(CASE
        WHEN gender = 'm' THEN '남자'
    END) AS 남자수,
    COUNT(CASE
        WHEN gender = 'f' THEN '여자'        
    END) AS 여자수
FROM tblcomedian;


--count(*) 테이블의 전체 레코드 수
--등록된 할일이 몇건?
SELECT count(*) FROM tbltodo;

--할일을 마친 건수?
SELECT COUNT(completedate) FROM tbltodo;

--아직 하지 않은 건수? > 8건
SELECT
    COUNT(*) - COUNT(completedate) AS "해야할일"
FROM tbltodo;

SELECT COUNT(*) AS "해야할일" FROM tbltodo WHERE completedate IS null;

SELECT
    COUNT(*) AS "남자"
FROM tblinsa
WHERE ssn LIKE '-1%';

SELECT
    COUNT(*) AS "남자"
FROM tblinsa
WHERE ssn LIKE '______-1______';

-- 남자 몇명? + 남자 직원들 이름?
-- ORA-00937: not a single-group group function ?
-- 집계함수와 단일컬럼은 동시에 사용 불가능하다. >
SELECT
    COUNT(*) AS "남자", name
FROM tblinsa
WHERE ssn LIKE '-1%';

SELECT
    AVG(basicpay) AS "평균"
FROM tblinsa;

-- 직원들중 평균 급여보다 더 많은 급여를 받는 직원?
-- ORA-00934: group function is not allowed here 집계함수는 여기에 쓸수없다.
-- WHERE 절은 개인(한 행, 레코드1개, 객체)에 대한 질문을 하는 곳이다.
SELECT
    *
FROM tblinsa
WHERE basicpay > AVG(basicpay);

--tblinsa 급여 > 100만원대 별로 직원수?
SELECT
    COUNT(CASE
        WHEN basicpay < 1000000 THEN 1
    END) AS "100만원 아래",
    COUNT(CASE
        WHEN basicpay >= 1000000 AND basicpay < 2000000 THEN 1
    END) AS "100만원대",
    COUNT(CASE
        WHEN basicpay >= 2000000 THEN 1
    END) AS "200만원대"
FROM tblinsa;

--01. 아시아(AS)와 유럽(EU)에 속한 국가는 총 몇개? - IN, COUNT / tblcountry
SELECT
    COUNT(*) AS "국가 수"
FROM tblcountry
WHERE continent IN ('AS', 'EU');

--02. 인구수가 7000 ~ 20000 사이인 국가는 몇개? - BETWEEN, COUNT
SELECT
    COUNT(*) AS "국가 수"
FROM tblcountry
WHERE population BETWEEN 7000 AND 20000;

--03. IT_PROG 중에서 급여가 5000불이 넘는 직원은 몇명? /employees
SELECT
    COUNT(*) AS "5000불 넘는사람"
FROM employees
WHERE job_id = 'IT_PROG' AND salary > 5000;

--04. 010을 안쓰는 사람은 몇명?(연락처가 없는 사람은 제외) /tblinsa
SELECT
    COUNT(tel) AS "010을 안쓴사람"
FROM tblinsa
WHERE NOT tel LIKE '010%'; --AND tel IS NOT null;

--05. 서울 사람 빼고 나머지 몇명?
SELECT
    COUNT(*) AS "서울사람 제외"
FROM tblinsa
WHERE NOT city = '서울';

--06. 80년대생 + 여자직원 몇명?
SELECT
    COUNT(*) AS "80년대생 여직원"
FROM tblinsa
WHERE ssn LIKE '8_____-2%';


/*

2. sum()
- number sum (컬럼명)
- 해당 컬럼값들의 합을 구한다.
- 숫자 컬럼을 대상으로 한다.

*/

SELECT SUM(weight)
FROM tblcomedian;

--ORA-01722: invalid number : 숫자대상이 아니기때문에
SELECT SUM(first)
FROM tblcomedian;

SELECT SUM(weight + 10)
FROM tblcomedian;

SELECT population FROM tblcountry;
SELECT SUM(population) FROM tblcountry; -- null 은 제외

-- 이번 달 총 급여 지급액?
SELECT
    SUM(basicpay), SUM(sudang), SUM(basicpay) + SUM(sudang), SUM(basicpay + sudang)
FROM tblinsa;

-- 한달 평균 급여?
SELECT
    SUM(basicpay + sudang) / COUNT(*)
FROM tblinsa;

-- 집계함수와 개인컬럼은 같이 사용 불가능하다.
SELECT
    SUM(basicpay), name
FROM tblinsa; --ORA-00937: not a single-group group function


/*

3. AVG()
- NUMBER AVG(컬럼명)
- 컬럼값들의 평균값을 반환한다.
- 숫자 컬럼을 대상으로 한다.

*/

--나라별 인구수
SELECT
    population
FROM tblcountry;

--나라별 평균 인구수
SELECT
    AVG(population)
FROM tblcountry; -- 18215

SELECT
    SUM(population) / count(*)
FROM tblcountry; -- 16914 // count(*) 은 null도 무시하고 세어버렸기때문

SELECT
    SUM(population) / count(population)
FROM tblcountry; -- 18215

-- 회사 보너스 지급
-- 실적에 따라서 지급
-- 일부 직원은 실적이 없다.
-- 1. 실적이 있는 사람들에 한해서 지급 count(실적) = avg()
-- 2. 모든 직원에 대해서 지급 -> count(*) => avg() 쓰면안됨

/*

4. max()
5. min()

- OBJECT MAX(컬럼명) 최대값 반환
- OBJECT MIN(컬럼명) 최소값 반환
- 숫자, 날짜, 문자 모두적용

*/

SELECT
    MAX(basicpay), MIN(basicpay)
FROM tblinsa;

SELECT
    MAX(height), MIN(height)
FROM tblcomedian;

SELECT
    MIN(ibsadate) AS "최고참", MAX(ibsadate) AS "막내"
FROM tblinsa;

SELECT
    MAX(name)
FROM tblinsa; -- 황진이

SELECT
    name, buseo, jikwi
FROM tblinsa
ORDER BY buseo ASC, jikwi ASC, name ASC;

SELECT
    COUNT(*) AS "총직원수",
    SUM(basicpay) AS "총급여",
    AVG(basicpay) AS "평균급여",
    MAX(basicpay) AS "최대급여",
    MIN(basicpay) AS "최소급여"
FROM tblinsa;
--sum
--01. 유럽과 아프리카에 속한 나라의 인구 수 합? TBLCOUNTRY
SELECT
    SUM(population) 
FROM tblcountry
WHERE continent IN ('EU', 'AF'); --16591

--02. 매니저(108)이 관리하고 있는 직원들의 급여 합? employees
SELECT
    SUM(salary)
FROM employees
WHERE manager_id IN ('108'); --39600

--03. 직업(ST_CLERK, SH_CLERK)을 가지는 직원들의 급여 합?
SELECT
    SUM(salary)
FROM employees
WHERE job_id IN ('ST_CLERK', 'SH_CLERK'); -- 120000

--04. 서울에 있는 직원들의 급여 합(급여 + 수당)? tblinsa
SELECT
    SUM(basicpay + sudang)
FROM tblinsa
WHERE city IN ('서울'); --33812400

--05. 장급(부장+과장) 들의 총급여합? 
SELECT
    SUM(basicpay)
FROM tblinsa
WHERE jikwi IN ('과장', '부장'); --36289000

--avg
--01. 아시아에 속한 국가의 평균 인구수?tblcountry
SELECT
    AVG(population)
FROM tblcountry
WHERE continent IN ('AS'); -- 45764

--02. 이름(first_name)에  'AN' 이 포함된 직원들의 평균 급여? (대소문자 구분x)employees
SELECT
    AVG(salary)
FROM employees
WHERE first_name LIKE '%an%'
        OR first_name LIKE '%An%' 
        OR first_name LIKE '%aN%'
        OR first_name LIKE '%AN%'; --6270.4
SELECT
    *
FROM employees;

--03. 장급(부장, 과장)의 평균 급여? tblinsa
SELECT
    AVG(basicpay)
FROM tblinsa
WHERE jikwi IN ('부장', '과장'); -- 2419266

--04. 사원급(대원, 사원)의 평균 급여?
SELECT
    AVG(basicpay)
FROM tblinsa
WHERE jikwi IN ('사원', '대리'); -- 1268946

--05. 장급(부장, 과장)의 평균 급여와 사원급(대리, 사원)의 평균 급여의 차이는 얼마?
-- 집계함수와 단일컬럼 오류 조심하자.
SELECT
    
    AVG(CASE
        WHEN jikwi IN ('부장', '과장') THEN (basicpay)
    END)
    -
    AVG(CASE
        WHEN jikwi IN ('사원', '대리') THEN (basicpay)
    END) AS "급여차이"
    
FROM tblinsa;

--max/min

--01. 면적이 가장 넓은 나라의 면접? tblcountry
SELECT
    MAX(area)
FROM tblcountry; -- 959

--02. 급여(급여 + 수당)가 가장 적은 직원은 얼마 받는가? tblinsa
SELECT
    MIN(basicpay + sudang)
FROM tblinsa; -- 988000












