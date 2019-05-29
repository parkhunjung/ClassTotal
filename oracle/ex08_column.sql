--ex08_column.sql

/*

distinct
- 컬럼 리스트에서 사용
- 결과 테이블의 컬럼을 만드는 역할
- distinct 컬럼명
- 중복값을 제거한다.
- null도 데이터의 한 종류로 인식한다. -> null도 여러개면 중복값이 제거된다.

*/

-- tblcountry 테이블에는 어떤 대륙이 있습니까?
SELECT DISTINCT continent FROM tblcountry;

--당신네 회사에는 어떤 부서가 있습니까?
SELECT DISTINCT buseo FROM tblinsa;

SELECT DISTINCT name FROM tblcountry;
SELECT DISTINCT population FROM tblcountry;

SELECT DISTINCT tel FROM tblinsa; -- 60명, 3명

SELECT city, buseo FROM tblinsa; 
SELECT DISTINCT city, buseo FROM tblinsa; 
SELECT DISTINCT buseo, jikwi FROM tblinsa ORDER BY buseo; 



/*
- 컬럼 리스트에서 사용
- 조건절에서 사용
- 자바에서 if문 & switch문

*/

--m(남자), f(여자)
SELECT last || first AS name, gender
FROM tblcomedian;

SELECT last || first AS name,
    CASE WHEN gender = 'm' THEN '남자' WHEN gender = 'f' THEN '여자' end
FROM tblcomedian;


SELECT last || first AS name,
    CASE 
        WHEN gender = 'm' THEN '남자' 
        WHEN gender = 'f' THEN '여자' 
    END AS gender
FROM tblcomedian;

-- 조건을 만족하지 못하는 컬럼값을 가지면 NULL 이 반환된다. 그래서 else 구문이 필요하다.
SELECT name, 
    CASE 
        WHEN continent = 'AS' THEN '아시아'
        WHEN continent = 'EU' THEN '유렵'
        WHEN continent = 'AF' THEN '아프리카'
        --ELSE '기타'
        ELSE continent -- 조건을 주지않은 칸에다가 원본을 보장하고싶을때
        --ELSE capital --자료형이 같으면 써지기때문에 주의해야한다. (절대하면안되는행동)
        --ELSE population --할 수 없는 행동(자료형이 다름)
    END as continent
FROM tblcountry;

SELECT last || first name,
    CASE
        WHEN weight > 100 THEN '과체중'
        WHEN weight >= 50 THEN '정상체중'
        WHEN weight > 0  THEN '저체중'
    END AS state
FROM tblcomedian;

SELECT *
FROM tbltodo;



SELECT title,
    CASE
        WHEN completedate IS NOT NULL THEN '완료한 일'
        WHEN completedate IS NULL THEN '해야할 일'
    END AS state
FROM tbltodo;


SELECT * 
FROM tblmen;

SELECT *
FROM tblwomen;


--솔로인 남자만 가져오기
SELECT *
FROM tblmen
WHERE couple is null;

--여자친구 있음 or 여자친구 없음
SELECT name,
    CASE
        WHEN couple IS NULL THEN '여자친구 없음'
        WHEN couple IS NOT NULL THEN '여자친구 있음'
    END AS state
FROM tblmen;

--보너스 추가 지급(직위 별로 다르게줌)
SELECT name, buseo, jikwi, sudang,
    CASE
        WHEN jikwi = '부장' THEN sudang * 1 
        WHEN jikwi = '과장' THEN sudang * 0.7
        WHEN jikwi = '대리' THEN sudang * 0.4
        WHEN jikwi = '사원' THEN sudang * 0
    END AS bonus
FROM tblinsa;
















