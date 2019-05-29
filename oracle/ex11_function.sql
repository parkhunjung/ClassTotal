--ex11_function.sql


/*

숫자 함수(수학 함수)
- 자바의 Math 클래스


1. round()
- 반올림 함수
- NUMBER ROUND(컬럼명) : 정수 반환
- NUMBER ROUND(컬럼명, 자릿수) : 소수이하 몇째자리까지? 자릿수지정가능(정수도 반환가능 0번째 자릿수로)


*/

SELECT 987.654 FROM tblcountry;
SELECT 987.654 FROM tblinsa;
SELECT 987.654 FROM tblcountry;

SELECT 987.654 FROM dual; --시스템 테이블 (1행짜리 테이블)
SELECT ROUND(987.654) FROM dual; 
SELECT ROUND(987.654, 1) FROM dual; 
SELECT ROUND(987.654, 2) FROM dual; 
SELECT ROUND(987.654, 3) FROM dual; --원본
SELECT ROUND(987.654, 4) FROM dual; --오버가 되도 변함이없음
SELECT ROUND(987.654, 0) FROM dual; --정수 반환

SELECT ROUND(AVG(basicpay), 2) FROM tblinsa;



/*

2. FLOOR, TRUNC
- 절삭 함수
- 무조건 내림(버림) 함수 : 반올림을 할 수 있어도 버림. 99.99 -> 99
- NUMBER FLOOR(컬럼명) : 정수반환
- NUMBER TRUNC(컬럼명 [,자릿수]) : 소숫자리 반환가능

*/

SELECT 5.6789 FROM dual;
SELECT FLOOR(5.6789) FROM dual;
SELECT TRUNC(5.6789) FROM dual;
SELECT TRUNC(5.6789, 2) FROM dual;

/*

3. CEIL
- 무조건 올림 함수
NUMBER CEIL(컬럼명)

*/

SELECT 4.123 FROM dual;
SELECT CEIL(4.123) FROM dual;
SELECT CEIL(4.00001) FROM dual;
SELECT CEIL(4) FROM dual;

-- 게시판(페이징)
SELECT 65 / 20 AS "총페이지수" FROM dual; --3.25 페이지??
SELECT CEIL(65 / 20) AS "총페이지수" FROM dual; -- 4페이지


/*

4. MOD 
- 나머지 함수
- NUMBER MOD(피제수, 제수)

*/

SELECT MOD(10, 3) FROM dual; -- 10 % 3

-- 100분 -> 몇시간 몇분?
-- 100 / 60 -> 몫(시)
-- 100 / 60 -> 나머지(분)

SELECT 
    FLOOR(100 / 60) AS "시",
    MOD(100, 60) AS "분"
FROM dual;
















