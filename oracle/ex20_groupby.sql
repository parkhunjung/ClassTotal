--ex20_groupby.sql


/*
GROUP BY 절
- 레코드들을 특정 컬럼값(1개 OR 이상)에 맞춰서 그룹을 나누는 작업
- 그룹을 왜 나누는지?
    1. 각각의 나눠놓은 그룹 > 그룹별로 집계함수를 적용하려고 > COUNT, SUM, AVG, MIN, MAX

GROUP BY 컬럼명
    - 그룹을 짓는 기준이 되는 데이터(컬럼) > 1개 이상
    
SELECT 문
- SELECT 컬럼리스트 FROM 테이블
- SELECT 컬럼리스트 FROM 테이블 WHERE 조건
- SELECT 컬럼리스트 FROM 테이블 WHERE 조건 ORDER BY 정렬
- SELECT 컬럼리스트 FROM 테이블 WHERE 조건 GROUP BY 조건 ORDER BY 정렬
- SELECT 컬럼리스트 FROM 테이블 WHERE 조건 GROUP BY 조건 HAVING 조건 ORDER BY 정렬
1. SELECT 컬럼리스트
    - 가져올 컬럼을 지정한다.
    - 가져올 값을 연산하기도 한다.
2. FROM 테이블
    - 테이블을 선택함
3. WHERE 조건
    - 가져올 레코드를 지정한다.
4. ORDER BY 정렬
    - 가져올 레코드의 순서를 지정한다. (정렬)
5. GROUP BY 조건
    - 가져올 레코드 들을 그룹짓는다.
6. HAVING 조건
    -GROUP BY 조건으로 사용한다.

절 실행 순서    
- FROM(1) > SELECT(2)
- FROM(1) > WHERE(2) > SELECT(3)
- FROM(1) > WHERE(2) > ORDER BY(3) > SELECT(4)
- FROM(1) > WHERE(2) > GROUP BY(3) > ORDER BY(4) > SELECT(5)
- FROM(1) > WHERE(2) > GROUP BY(3) > HAVING(4) > ORDER BY(5) > SELECT(6)

*/


-- tblinsa. 부서별(그룹)로 평균 급여(집계)?
SELECT * FROM tblinsa;

-- 평균 급여?
SELECT ROUND(AVG(basicpay)) FROM tblinsa;

-- 아래 방식의 문제점
-- 1. 비용이 많이 든다. (코드량이 많다.) > 부서가 500개면..?
-- 2. 변화에 약하다. > 유지보수가 힘들다

-- 부서가 뭐뭐??
SELECT DISTINCT(buseo) FROM tblinsa;

SELECT ROUND(AVG(basicpay)) FROM tblinsa WHERE buseo = '총무부'; --총무부의 평균 급여 / 1714857
SELECT ROUND(AVG(basicpay)) FROM tblinsa WHERE buseo = '개발부'; --개발부의 평균 급여 / 1387857
SELECT ROUND(AVG(basicpay)) FROM tblinsa WHERE buseo = '영업부'; --영업부의 평균 급여 / 1601513
SELECT ROUND(AVG(basicpay)) FROM tblinsa WHERE buseo = '기획부'; --기획부의 평균 급여 / 1855714
SELECT ROUND(AVG(basicpay)) FROM tblinsa WHERE buseo = '인사부'; --인사부의 평균 급여 / 1533000
SELECT ROUND(AVG(basicpay)) FROM tblinsa WHERE buseo = '자재부'; --자재부의 평균 급여 / 1416733
SELECT ROUND(AVG(basicpay)) FROM tblinsa WHERE buseo = '홍보부'; --홍보부의 평균 급여 / 1451833

-- GROUP BY 사용
SELECT 
    ROUND(AVG(basicpay)) AS "부서별 평균급여" --3 
FROM tblinsa --1 
GROUP BY buseo; --2 부서별로 서브셋을 만듬. => 부서별로 평균급여를 따냄 


-- GROUP BY 결과 셋의 컬럼리스트에 집계함수와 GROUP BY의 조건(컬럼)이 올 수 있다.
SELECT 
    buseo ,ROUND(AVG(basicpay)) AS "부서별 평균급여"  
FROM tblinsa 
GROUP BY buseo; 

-- COUNT
-- 남자 직원수? 여자 직원수?
-- 부장 몇명? 과장 몇명? 사원? 대리?
-- 부서별 직원수?

SELECT buseo ,COUNT(*), COUNT(tel),COUNT(*) - COUNT(tel)  
FROM tblinsa
GROUP BY buseo;

SELECT jikwi, COUNT(*), COUNT(*) - COUNT(tel) 
FROM tblinsa
GROUP BY jikwi;

--장급 몇명? 사원급 몇명?
SELECT 
    CASE
        WHEN jikwi IN ('부장', '과장') THEN '장급'
        WHEN jikwi IN ('대리', '사원') THEN '사원급'
    END AS "직급별 사원수",
    COUNT(*) AS "인원"
FROM tblinsa
GROUP BY
    CASE
        WHEN jikwi IN ('부장', '과장') THEN '장급'
        WHEN jikwi IN ('대리', '사원') THEN '사원급'
    END;

-- 왜이런결과가 나오는지 확인해보자
SELECT 
    CASE
        WHEN jikwi IN ('부장', '과장') THEN 1
        WHEN jikwi IN ('대리', '사원') THEN 2
    END
FROM tblinsa;

SELECT
    CASE
        WHEN SUBSTR(ssn, 8, 1) = '1' THEN '남자'
        WHEN SUBSTR(ssn, 8, 1) = '2' THEN '여자'
    END AS "성별",
    COUNT(*) AS "인원"
FROM tblinsa
GROUP BY SUBSTR(ssn, 8, 1);

-- 1. 입사한 년도별로 그룹 나눠서 > 몇명?
-- [입사년도]   [인원수]
-- 2008         10
-- 2009         8
-- 20010        9
-- ...

SELECT
    TO_CHAR(ibsadate, 'yyyy') AS "입사년도",
    COUNT(*) AS "인원"
FROM tblinsa
GROUP BY TO_CHAR(ibsadate, 'yyyy')
ORDER BY "입사년도"; -- GROUP BY 정렬 방법


-- 팁 : 그룹의 조건을 어떻게 만들어야 할지 모르겠다?  > 조건으로 사용할 컬럼을 일단 출력해본다.
SELECT 
    CASE
        WHEN basicpay <= 1000000 THEN 1
        WHEN basicpay > 1000000 AND basicpay <= 2000000 THEN 2
        WHEN basicpay > 2000000 THEN 3
    END,
    CEIL(basicpay / 1000000)
FROM tblinsa;

-- 급여 (100만원 이하, 100~200만, 200만 이상) > 인원수 파악
SELECT
    CEIL(basicpay / 1000000) || '00만원대' AS "급여별",
    COUNT(*)
FROM tblinsa
GROUP BY CEIL(basicpay / 1000000);

-- 성씨별 인원수?
SELECT 
    COUNT(*) AS "인원", SUBSTR(name, 1, 1) AS "성씨" 
FROM tblinsa
GROUP BY SUBSTR(name, 1, 1)
ORDER BY "인원" DESC, "성씨";


-- 부서별 + 인원수?
-- + 부서별(직위별) (도시별)  ---- 다중그룹이라 부른다.
SELECT 
    buseo, jikwi, city, COUNT(*)
FROM tblinsa
GROUP BY buseo, jikwi, city
ORDER BY buseo, count(*); 

/*

HAVING 절
1. WHERE : 가져올 레코드의 조건을 지정한다.
    - 대상(실행 순서)이 다르다. > FROM 절을 대상으로 조건을 건다.
    - 개인에 대한 질문(레코드에 대한 질문) > 한사람 한사람에게 질문
2. HAVING : 가져올 레코드의 조건을 지정한다.
    - 대상(실행 순서)이 다르다. > GROUP BY 절을 대상으로 조건을 건다.
    - 집합에 대한 질문(통계함수에 대한 질문) > 각 그룹에게 질문

*/

SELECT * FROM tblinsa WHERE city = '서울';

SELECT city, COUNT(*) FROM tblinsa GROUP BY city HAVING COUNT(*) > 10;

SELECT COUNT(*) FROM tblinsa;

SELECT 
    buseo, ROUND(AVG(basicpay))
FROM tblinsa
WHERE basicpay >= 1500000 -- 개인에 대한 질문(그룹 함수 사용 금지)
GROUP BY buseo;

SELECT 
    buseo, ROUND(AVG(basicpay))
FROM tblinsa
GROUP BY buseo
HAVING AVG(basicpay) >= 1500000; -- 그룹 대상으로 질문



SELECT 
    buseo, ROUND(AVG(basicpay))
FROM tblinsa
WHERE basicpay >= 1500000 -- 첫번째 탈락
GROUP BY buseo
HAVING AVG(basicpay) >= 2000000; -- 두번째 탈락



-- 01. 대륙별로 최대 인구수, 최소 인구수, 최대 면적, 최소 면적을 가져오시오. TBLCOUNTRY
SELECT
    continent AS "대륙", 
    MAX(population) AS "최대 인구수",
    MIN(population) AS "최소 인구수",
    MAX(area) AS "최대 면적",
    MIN(area) AS "최소 면적"
FROM tblcountry
GROUP BY continent; 

--[대륙] [최대 인구수] [최소 인구수]    [최대 면적]    [최소 면적]
--AS     12030         1300             900            13



-- 02. 직업별 직원수를 가져오시오. employees
SELECT
    job_id AS "직업", 
    COUNT(*) AS "직원수"
FROM employees
GROUP BY job_id;

-- [직업]     [직원수] 
-- IT_PROG    8



-- 03. 부서별 직원수를 가져오시오. + 직원이 많은순서대로 정렬 TBLINSA
SELECT
    buseo AS "부서", COUNT(*) AS "직원수"
FROM tblinsa
GROUP BY buseo
ORDER BY "직원수";

-- [부서]     [직원수]
-- 영업부     12




-- 04. 지역별 직원수를 가져오시오. TBLINSA
SELECT
    city AS "지역", COUNT(*) AS "직원수"
FROM tblinsa
GROUP BY city
ORDER BY "직원수";


-- 05. 부서별로 직원들의 급여합을 가져오시오. (basicpay + sudang)
SELECT
    buseo AS "부서", 
    SUM(basicpay + sudang) AS "총지급액", 
    COUNT(*) AS "직원수",
    MAX(basicpay + sudang) AS "최대 금액",
    MIN(basicpay + sudang) AS "최소 금액"
FROM tblinsa
GROUP BY buseo
ORDER BY "총지급액";

-- 부서별로 한달 지출액이 궁금합니다.
-- [부서]     [총지급액]      [부서인원수]     [최대 금액]     [최소 금액]
-- 영업부     36000000        12               2500000         1000000



-- 06. 부서별 직급의 인원수를 가져오시오. CASE , DECODE
SELECT
    buseo AS "부서", 
    COUNT(*) AS "총 인원",
    
    COUNT(CASE
        WHEN jikwi = '부장' THEN 1
    END) AS "부장",
    
    COUNT(CASE
        WHEN jikwi = '과장' THEN 1
    END) AS "과장",
    
    COUNT(CASE
        WHEN jikwi = '대리' THEN 1
    END) AS "대리",
    
    COUNT(CASE
        WHEN jikwi = '사원' THEN 1
    END) AS "사원"
    
FROM tblinsa
GROUP BY buseo
ORDER BY "총 인원";



-- 기획부 부장 : 1
-- 기획부 과장 : 2

-- [부서]     [총 인원]      [부장]    [과장]    [대리]    [사원]
-- 영업부     13             1         2         2         6



SELECT name ,basicpay FROM tblinsa WHERE basicpay IN (SELECT max(basicpay) FROM tblinsa);



























