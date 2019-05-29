--ex14_casting.sql


/*

형변환, Casting

1. TO_CHAR() 숫자 -> 문자 // 사용빈도 낮음
2. TO_CHAR() 날짜 -> 문자 // 사용빈도 높음(***)
3. TO_NUMBER() 문자 -> 숫자 // 사용빈도 낮음
4. TO_DATE() 문자 -> 날짜 //사용빈도 높음(***)

01. TO_CHAR()
- CHAR TO_CHAR(컬럼명, 형식문자열)

형식문자열 구성요소
a. 9 : 숫자 1자리를 문자 1개로 바꾸는 역할(빈자리는 ' '공백으로 채운다.) //%5s
b. 0 : 숫자 1자리를 문자 1개로 바꾸는 역할(빈자리는 0으로 채운다.) //%05s
c. $ : 통화 표시
d. L : 통화 표시(지역마다 다르게)
e. . : 소수점 표시
f. , : 천단위 표시

*/

SELECT 100 AS "aaaaaaaaaaaaaaaaaaaaaaaa", '100' AS "aaaaaaaaaaaaaaaaaaaaaaaa" FROM dual;
SELECT 100 + 200, '100' + 200 FROM dual; -- 암시적 형변환

-- 9와 0의 개수 -> 변환될 문자열의 자릿수
-- 9 : 유효 숫자만 변환, 빈자리는 ' '공백으로 채운다
-- 0 : 빈자리를 0으로 채움
SELECT TO_CHAR(100) FROM dual; --100 -> '100' //String.valueOf(100) -> "100"
SELECT TO_CHAR(100, '999') FROM dual; -- 100 -> '100'
SELECT TO_CHAR(100, '000') FROM dual; -- 100 -> '100'

SELECT TO_CHAR(10, '999') FROM dual; -- 10 -> ' 10'
SELECT TO_CHAR(10, '000') FROM dual; -- 10 -> '010'

SELECT TO_CHAR(1, '999') FROM dual; -- 1 -> '  1'
SELECT TO_CHAR(1, '000') FROM dual; -- 1 -> '001'

SELECT TO_CHAR(1000, '999') FROM dual; --> 실인자가 더 크면 동작을 안함. (####)
SELECT TO_CHAR(1000, '000') FROM dual; --> 실인자가 더 크면 동작을 안함. (####)

SELECT weight || 'kg' FROM tblcomedian; -- 암시적 형변환
SELECT TO_CHAR(weight, '999') || 'kg' FROM tblcomedian; -- 표현은 이문장이 훨씬좋다.

SELECT 100 FROM dual; --100달러
SELECT '$' || 100 FROM dual;
SELECT TO_CHAR(100, '$999') FROM dual;
SELECT TO_CHAR(100, '999원') FROM dual; --ORA-01481: invalid number format model : 형식문자열에는 형식문자빼고는 못넣는다
SELECT TO_CHAR(100, '999') || '원' FROM dual; -- 쓰고싶으면 이렇게

SELECT TO_CHAR(100, 'L999') FROM dual; -- Locale(지역 설정에 맞는 표현을 사용해라.)

SELECT TO_CHAR(123.456, '999.999') FROM dual;
SELECT TO_CHAR(123.456, '999.99') FROM dual; --소수부는 실인자보다 짧을시 소수자리만큼만 반환한다.(반올림해서)

SELECT TO_CHAR(1000000, '9,999,999') FROM dual;

/*
2. TO_CHAR() : 날짜 -> 문자
- CHAR TO_CHAR(컬럼명, '형식 문자열')
-컬럼명 : 날짜(DATE)

형식 문자열 구성요소
a. yyyy (*)
b. yy
c. month
d. mon
e. mm (*)
f. day
g. dy
h. ddd, dd(*), d
i. hh(hh12), hh24(*)
j. mi(*)
k. ss(*)
l. am(pm)

*/

SELECT SYSDATE FROM dual;
SELECT TO_CHAR(SYSDATE, 'yyyy') FROM dual; -- 2019년(4자리)(******)
SELECT TO_CHAR(SYSDATE, 'yy') FROM dual; -- 19년(2자리)
SELECT TO_CHAR(SYSDATE, 'month') FROM dual; --3월(로케일) march 풀네임
SELECT TO_CHAR(SYSDATE, 'mon') FROM dual; --3월(로케일) mar 약어
SELECT TO_CHAR(SYSDATE, 'mm') FROM dual; --03(******)
SELECT TO_CHAR(SYSDATE, 'day') FROM dual; --목요일(로케일) 풀네임
SELECT TO_CHAR(SYSDATE, 'dy') FROM dual; --목(로케일) 약어
SELECT TO_CHAR(SYSDATE, 'ddd') FROM dual; --080 . 올해들어 며칠 지낫는지?(80일)
SELECT TO_CHAR(SYSDATE, 'dd') FROM dual; -- 21 (오늘날짜) 이번달 들어 며칠이 지낫는지?(*****)
SELECT TO_CHAR(SYSDATE, 'd') FROM dual; -- 5 이번주 들어 며칠이 지낫는지?(= 요일)
SELECT TO_CHAR(SYSDATE, 'hh') FROM dual; --10시, 3시 //(12시간 표기법)
SELECT TO_CHAR(SYSDATE, 'hh24') FROM dual; -- 10시, 15시 //(24시간 표기법) (***************)
SELECT TO_CHAR(SYSDATE, 'mi') FROM dual; --13분
SELECT TO_CHAR(SYSDATE, 'ss') FROM dual; --14초
SELECT TO_CHAR(SYSDATE, 'am') FROM dual; --오전                                                                                                                             
SELECT TO_CHAR(SYSDATE, 'pm') FROM dual; --오전

--자주 쓰는 패턴
SELECT SYSDATE FROM dual; --19/03/21
SELECT 
    TO_CHAR(SYSDATE, 'yyyy-mm-dd day'), 
    TO_CHAR(SYSDATE, 'hh24:mi:ss'),
    TO_CHAR(SYSDATE, 'am hh:mi:ss')
FROM dual; --19/03/21

-- 컬럼으로 사용
SELECT name, TO_CHAR(ibsadate, 'yyyy-mm-dd day') AS "입사날짜", TO_CHAR(ibsadate, 'yyyy') AS "입사년도"  FROM tblinsa;

-- 조건으로 사용
-- 12월에 입사한 직원들?
SELECT 
    *
FROM tblinsa
WHERE TO_CHAR(ibsadate, 'mm') = '12';

SELECT 
    *
FROM tblinsa
WHERE TO_CHAR(ibsadate, 'yyyy') = '2010';

SELECT 
    *
FROM tblinsa
WHERE TO_CHAR(ibsadate, 'mm') = '12' AND TO_CHAR(ibsadate, 'yyyy') = '2009';

SELECT 
    *
FROM tblinsa
WHERE TO_CHAR(ibsadate, 'yyyy-mm') = '2009-12'; -- (***)

SELECT 
    *
FROM tblinsa
WHERE TO_CHAR(ibsadate, 'yyyymm') = '200912'; -- *****************


--정렬로 사용
--고참 ~ 신참
SELECT
    *
FROM tblinsa
ORDER BY ibsadate asc;

-- 월별 1,2,3,4,5 .. 월마다 입사한사람
SELECT
    *
FROM tblinsa
ORDER BY TO_CHAR(ibsadate, 'mm') asc;


/*
3. TO_NUMBER() : 문자 -> 숫자
- NUMBER TO_NUMBER(문자열)
- 자바 : Integer.parseInt(문자열)

*/

SELECT '123' * 2 FROM dual; --현실
SELECT TO_NUMBER('123') * 2 FROM dual; --권장

/*
4. TO_DATE() : 문자 -> 날짜
- DATE TO_DATE(컬럼명, '형식문자열')
- 형식 문자열 구성요소가 위의 2번과 동일
a. yyyy
b. yy
c. month
d. mon
e. mm
f. day
g. dy 
h. ddd,dd,d
i. hh(hh12), hh24
j. mi
k. ss
l. am(pm)


*/

--** 오라클(SQL) 은 문맥에 따라 날짜 상수(문자열)를 문자열로 취급하는 경우와 DATE로 취급하는 경우가 있다.
SELECT SYSDATE, '2019-03-21', ADD_MONTHS('2019-03-21', 1) FROM dual;
SELECT * FROM tblinsa WHERE ibsadate < '2019-03-21'; --날짜(문자열) 암시적 형변환

--시,분,초 추가 > 암시적 형변환 불가능(DB 설정 & 툴 포맷 - 가능O, 불가능O) -> 그냥 안된다.(불가능)
SELECT title, adddate, TO_CHAR(adddate, 'yyyy-mm-dd hh24:mi:ss') FROM tbltodo
    --WHERE adddate > '2019-03-05 12:30:00';
    --WHERE adddate > TO_DATE('2019-03-05 12:30:00', 'yyyy-mm-dd hh24:mi:ss'); -- *******
    WHERE adddate > TO_DATE('20190305 123000', 'yyyymmdd hh24miss'); -- 구분자를 없애면 똑같이 구분자가 없어도됨

SELECT SYSDATE, TO_DATE('2019-03-21', 'yyyy-mm-dd') FROM dual;

SELECT 
    SYSDATE, 
    TO_DATE('2019-03-21', 'yyyy-mm-dd'), -- 자정으로 세팅 (기억!!!!)
    TO_CHAR(SYSDATE, 'yyyy-mm-dd hh24:mi:ss'), 
    TO_CHAR(TO_DATE('2019-03-21', 'yyyy-mm-dd'), 'yyyy-mm-dd hh24:mi:ss'),
    TO_DATE('15:30:45', 'hh24:mi:ss'),-- 해당 월의 1일로 세팅
    TO_CHAR(TO_DATE('15:30:45', 'hh24:mi:ss'), 'yyyy-mm-dd hh24:mi:ss')
FROM dual;























