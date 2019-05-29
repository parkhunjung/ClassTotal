--ex12_function.sql

/*

문자열 함수
1. UPPER(), LOWER(), INITCAP()
- EX) VARCHAR2 UPPER(컬럼명)

*/

SELECT 
    'studentName',
    UPPER('studentName'), -- 모두 대문자
    LOWER('studentName'), -- 모두 소문자
    INITCAP('studentName') -- 첫글자만 대문자
FROM dual;

-- employees > 'AN' 포함 직원
SELECT first_name 
FROM employees 
WHERE UPPER(first_name) LIKE '%AN%';

-- 'an' > 사용자가 입력한 값 > 변수
SELECT first_name 
FROM employees 
WHERE UPPER(first_name) LIKE '%' || UPPER('an') || '%';




/*

2. SUBSTR
- 문자열 추출 함수
- VARCHAR2 SUBSTR(컬럼명, 시작위치, 갯수) : 시작부터 내가지정한 수만큼의글자
- CARCHAR2 SUBSTR(컬럼명, 시작위치) : 시작부터 끝까지
- 서수가 1부터 시작한다.(*****) 언어마다 시작인데스가 다르다. 오라클은 1부터다.

*/

SELECT '가나다라마바사아자차카타파하' FROM dual;
SELECT SUBSTR('가나다라마바사아자차카타파하', 5, 3) FROM dual; -- 1부터시작했기에 5번째부터숫자는 '마' 부터
SELECT SUBSTR('가나다라마바사아자차카타파하', 2) FROM dual; -- 얘도 그래서 나부터
SELECT SUBSTR('가나다라마바사아자차카타파하', -5) FROM dual; --오른쪽부터 5글자만큼 그래서 차부터 끝까지
SELECT SUBSTR('가나다라마바사아자차카타파하', -5, 3) FROM dual; --오른쪽부터 5글자만큼 , 3글자만 그래서 차부터 타까지만

SELECT name, SUBSTR(name, 1, 1) AS 성, SUBSTR(name, 2) AS 이름 FROM tblinsa;
SELECT SUBSTR(ssn, 8, 1) FROM tblinsa;

-- 남자 직원수?
SELECT 
    COUNT(CASE
        WHEN SUBSTR(ssn, 8, 1) = '1' THEN 1
    END) AS "남자 직원수"
FROM tblinsa;
SELECT COUNT(*) FROM tblinsa WHERE ssn LIKE '%-1%';
SELECT COUNT(*) FROM tblinsa WHERE ssn LIKE '______-1______';
SELECT COUNT(*) FROM tblinsa WHERE SUBSTR(ssn, 8, 1) = '1';

--남자 (1,3,5,7,9)
SELECT COUNT(*) FROM tblinsa WHERE SUBSTR(ssn, 8, 1) = '1' OR SUBSTR(ssn, 8, 1) = '3'; -- 노가다
SELECT COUNT(*) FROM tblinsa WHERE SUBSTR(ssn, 8, 1) IN ('1', '3', '5', '7', '9'); -- **** 가장많이씀
SELECT COUNT(*) FROM tblinsa WHERE MOD(SUBSTR(ssn, 8, 1), 2) = 1; -- 비권장


-- 01. 직원명과 생년을 가져오시오 (ssn > 1900년대 생)
/*
[이름]    [생년]
홍길동    1990
아무개    1994
...
*/
SELECT 
    name AS "이름", '19' || SUBSTR(ssn, 1, 2) AS "생년"
FROM tblinsa;


-- 02. 서울에 사는 여직원 중 80년대생 총 몇명?
SELECT 
    COUNT(*) AS "서울에 사는 여직원"
FROM tblinsa
WHERE city = '서울' AND SUBSTR(ssn, 1, 1) = '8' AND SUBSTR(ssn, 8, 1) = '2';


-- 03. 장급(부장, 과장) 들은 어떤 성씨를 가지고 있는지? (김,박,최,정,조) 중복값 제거
SELECT
    DISTINCT(SUBSTR(name, 1, 1))
FROM tblinsa
WHERE jikwi IN ('부장', '과장') ORDER BY SUBSTR(name, 1, 1);


-- 04. 직원들을 태어난 월순으로 정렬을 해서 가져오시오.(오름차순 -> 월, 이름)
SELECT
    *
FROM tblinsa
ORDER BY SUBSTR(ssn, 3, 2), name;


SELECT * FROM tblinsa ORDER BY SUBSTR(ssn, 8, 1);


-- 60 명 중 각 성씨별로 몇명?
SELECT
    COUNT(
        CASE
            WHEN SUBSTR(name, 1, 1) = '박' then 1
        END
    )AS "박씨"
FROM tblinsa;

/*
3. length()
- 문자열 길이
- NUMBER LENGTH(컬럼명)

*/
-- 컬럼 리스트
SELECT name, length(name) FROM tblcountry;

-- 조건절
SELECT name FROM tblcountry WHERE LENGTH(name) > 3;
SELECT name FROM tblcountry WHERE LENGTH(name) BETWEEN 3 AND 5;
SELECT name FROM tblcountry WHERE LENGTH(name) IN (3, 7);


-- 정렬
SELECT name FROM tblcountry ORDER BY LENGTH(name) DESC;

SELECT 
    CASE
        WHEN LENGTH(name) >= 4 THEN SUBSTR(name, 1, 3) || '...'
        ELSE name
    END 
FROM tblcountry;


-- 01. 이름 (first_name + last_name)이 가장 긴 순서대로 가져오시오. employees
SELECT
    first_name || last_name AS "이름", LENGTH(first_name || last_name)
FROM employees
ORDER BY LENGTH(first_name || last_name) DESC;

-- 02. 이름 (first_name + last_name)이 가장 긴 사람은 몇글자?  employees --16
SELECT
    MAX(LENGTH(first_name || last_name)) AS "이름"
FROM employees;

-- 03. last_name이 4글자인 사람들의 first_name이 궁금하다.
SELECT
    CASE
        WHEN LENGTH(last_name) = 4 THEN first_name
        ELSE '없음'
    END AS "이름"
FROM employees; --케이스를쓴다면?

SELECT
    first_name AS "성"
FROM employees
WHERE LENGTH(last_name) = 4; -- 정답

/*
4. INSTR
- INDEXOF
- 검색어의 위치 반환
- NUMBER INSTR(컬럼명, 검색어)
- NUMBER INSTR(컬럼명, 검색어, 시작위치)

*/

SELECT '안녕하세요. 홍길동님' FROM dual;
SELECT INSTR('안녕하세요. 홍길동님', '홍길동') FROM dual; -- 8
SELECT INSTR('안녕하세요. 홍길동님', '삭') FROM dual; -- 0 (찾을수 없을때 반환하는 숫자 0)
SELECT INSTR('안녕하세요. 홍길동님. 안녕하세요. 홍길동님.', '홍길동', 11) FROM dual; --8

-- 이름에 '길'자가 포함된 직원?
SELECT * FROM tblinsa WHERE INSTR(name, '길') > 0;
SELECT * FROM tblinsa WHERE name LIKE '%길%';

-- 이름에 길이 발견된 순서대로 정렬
SELECT * FROM tblinsa WHERE INSTR(name, '길') > 0 ORDER BY INSTR(name, '길');

/*
5.lpad, rpad
- VARCHAR2 LPAD(컬럼명, 개수, 문자)
- VARCHAR2 RPAD(컬럼명, 개수, 문자)

*/

-- 한글 2, 나머지 1
-- 오버플로우 발생시 > 짤림
SELECT title, lpad(title, 20, '@') FROM tbltodo;
SELECT seq, LPAD(seq, 3, '0') FROM tbltodo; -- String.format("%03d", seq)

SELECT
    LPAD(1, 3, '0'),
    LPAD(12, 3, '0'),
    LPAD(123, 3, '0'),
    LPAD(1234, 3, '0'),
    LPAD(12345, 3, '0')
FROM dual;

-- CHAR vs VARCHAR2
CREATE TABLE tblChar
(
    txt1 CHAR(10), -- 고정자릿수
    txt2 VARCHAR2(10) -- 가변자릿수
);

INSERT INTO     tblChar (txt1, txt2) values ('abc', 'abc');

SELECT * FROM tblchar;
SELECT LENGTH(txt1), LENGTH(txt2) FROM tblchar;

SELECT * FROM tblchar WHERE txt2 = 'abc';
SELECT * FROM tblchar WHERE txt1 = 'abc'; --잘못된 상황 (오라클 편의를 봐줘서 결과가 나옴)
SELECT * FROM tblchar WHERE LENGTH(txt1) = 3; -- 주의!
SELECT LENGTH(TRIM(txt1)), LENGTH(txt1) FROM tblchar;


--VARCHAR2 만 써야한다

/*
6. TRIM(), LTRIM(), RTRIM()
-VARCHAR2 TRIM(컬럼명)

*/

SELECT '   홍길동   ' FROM dual;
SELECT TRIM('   홍길동   ') FROM dual;
SELECT RTRIM('   홍길동   ') FROM dual;
SELECT LTRIM('   홍길동   ') FROM dual;

/*
7. REPLACE
- 문자열 치환
- VARCHAR2 REPLACE(컬럼명, 찾을 문자열, 바꿀 문자열)

*/

SELECT REPLACE('홍길동', '홍', '김') FROM dual;

SELECT name, REPLACE(REPLACE(SUBSTR(ssn, 8, 1), '1', '남자'), '2', '여자') FROM tblinsa;

SELECT 
    name, 
    CASE
        WHEN continent = 'AS' THEN '아시아'
        WHEN continent = 'EU' THEN '유럽'
        WHEN continent = 'AF' THEN '아프리카'
        WHEN continent = 'AU' THEN '오스트레일리아'
        WHEN continent = 'SA' THEN '아메리카'
    END
FROM tblcountry;

SELECT name, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(continent, 'AS', '아시아'), 'EU', '유럽'), 'AF', '아프리카'), 'AU', '오스트레일리아'), 'SA', '아메리카') FROM tblcountry;


/*

8. DECODE()
- 문자열 치환
- REPLACE() 유사, CASE END 유사
- VARCHAR2 DECODE(컬럼명, 찾을문자열, 바꿀문자열, 찾을문자열, 바꿀문자열, 찾을문자열, 바꿀문자열....)
*/

SELECT 
    DECODE(continent, 'AS', '아시아', 'EU', '유럽', 'AF', '아프리카', 'AU', '호주', 'SA', '아메리카'),
    REPLACE(REPLACE(continent, 'AS', '아시아'), 'EU', '유럽')
FROM tblcountry;

SELECT
    COUNT(CASE
        WHEN jikwi = '부장' OR jikwi = '과장' THEN 1
    END) AS "부장 수",
    COUNT(CASE
        WHEN jikwi = '사원' OR jikwi = '대리' THEN 1
    END) AS "사원 수"
FROM tblinsa;

SELECT
    COUNT(DECODE(jikwi, '부장', 1, '과장', 1)) AS "부장 수",
    COUNT(DECODE(jikwi, '사원', 1, '대리', 1)) AS "사원 수"
FROM tblinsa;

--01. 아래와 같이 가져오시오.
SELECT
    COUNT(CASE
        WHEN continent = 'AS' THEN 1  
    END) AS "아시아",
    COUNT(CASE
        WHEN continent = 'EU' THEN 1  
    END) AS "유럽",
    COUNT(CASE
        WHEN continent = 'AF' THEN 1  
    END) AS "아프리카",
    COUNT(CASE
        WHEN continent = 'AU' THEN 1  
    END) AS "오스트레일리아",
    COUNT(CASE
        WHEN continent = 'SA' THEN 1  
    END) AS "아메리카"
FROM tblcountry;

/*
[아시아]   [유렵]    [아프리카]    [오스트레일리아]    [아메리카]
4          3         2             1                   4

*/



--02. 아래와 같이 가져오시오.
SELECT
    COUNT(DECODE(SUBSTR(name, 1, 1), '김', 1)) AS "김",
    COUNT(DECODE(SUBSTR(name, 1, 1), '이', 1)) AS "이",
    COUNT(DECODE(SUBSTR(name, 1, 1), '박', 1)) AS "박",
    COUNT(DECODE(SUBSTR(name, 1, 1), '최', 1)) AS "최",
    COUNT(DECODE(SUBSTR(name, 1, 1), '정', 1)) AS "정"
FROM tblinsa;

SELECT
    *
FROM tblinsa;

/*
[김]     [이]     [박]     [최]     [정]
12       14       2        1        5

*/














































