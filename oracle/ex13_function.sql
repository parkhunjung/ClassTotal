--ex13_function.sql


-- 하면 안되는 행동(내일)
SELECT ibsadate, SUBSTR(ibsadate, 4, 2) FROM tblinsa;


/*

날짜/시간 함수
1. SYSDATE
- 현재 시간 반환
- DATE SYSDATE
- 자바의 Calendar.getInstance() 동일

*/

SELECT SYSDATE FROM dual; --현재 시각
SELECT SYSDATE() FROM dual; --안됨

--날짜 연산
--날짜 +, 날짜 -
SELECT SYSDATE + 3 AS "3일뒤" FROM dual;
SELECT SYSDATE - 3 AS "3일전" FROM dual;

SELECT 고객명, 대여일 + 대여기간 AS 반납예정일 FROM 도서관;

SELECT name, ibsadate, ibsadate + 10000 FROM tblinsa;

--날짜 - 날짜
SELECT name, ROUND(SYSDATE - ibsadate) AS "근무일수" FROM tblinsa;
SELECT name, ROUND((SYSDATE - ibsadate) / 365)  AS "근무년수" FROM tblinsa;
SELECT name, FLOOR((SYSDATE - ibsadate) / 365)  AS "근무년수" FROM tblinsa;
SELECT name, CEIL((SYSDATE - ibsadate) / 365)  AS "근무년수" FROM tblinsa;

-- 1번 정리
-- 시각 + 숫자(일) = 시각
-- 시각 - 시각 = 숫자(일)



/*

2. LAST_DAY()
- 해당 시각이 포함된 달의 마지막 날짜
- DATE LAST_DAY(DATE)

*/

SELECT LAST_DAY(SYSDATE) FROM dual;

/*
3.MONTHS_BETWEEN()
- NUMBER MONTHS_BETWEEN(DATE, DATE)
- 월을 반환해준다. 월단위 계산법

*/
SELECT 
    name, ibsadate, 
    ROUND(SYSDATE - ibsadate) AS 근무일수, -- ***
    ROUND((SYSDATE - ibsadate) / 30) AS 근무월수, --잘못된표현식
    ROUND(MONTHS_BETWEEN(SYSDATE, ibsadate)) AS 근무월수, --잘못된걸 해결해준 표현식 ***
    ROUND((SYSDATE - ibsadate) / 365) AS 근무년수, 
    ROUND(MONTHS_BETWEEN(SYSDATE, ibsadate) / 12) AS 근무년수  -- ****
FROM tblinsa;


/*
4. ADD_MONTHS()
- DATE ADD_MONTHS(DATE, NUMBER)

*/

SELECT SYSDATE + 1 FROM dual; -- 하루뒤
SELECT SYSDATE + 30 FROM dual; -- 한달뒤(근사치)
SELECT ADD_MONTHS(SYSDATE, 1) FROM dual; -- 정확한 한달뒤
SELECT ADD_MONTHS(SYSDATE, -1) FROM dual; -- 정확한 한달전

/*
시각, 시간 연산
1. DATE + NUMBER = DATE
    : 시각 + 일 = DATE
2. DATE - DATE = NUMBER
    : 시각 - 시각 = 일
3. ADD_MONTHS(DATE, NUMBER) = DATE
    : 시각 + 월 = 시각
4. MONTHS_BETWEEN(DATE, DATE) = NUMBER
    : 시각 - 시각 = 월
*/


























