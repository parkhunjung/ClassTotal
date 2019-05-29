--ex32.sql


/*
    

*/

--근태 테이블
CREATE TABLE tblDate
(
    seq NUMBER PRIMARY KEY,
    regdate DATE NOT NULL, --출퇴근시간
    state VARCHAR2(30) NOT NULL --근태 상태
);

INSERT INTO tblDate (seq, state, regdate) VALUES (31, '정상', '2019-01-28');
INSERT INTO tblDate (seq, state, regdate) VALUES (32, '정상', '2019-01-29');
INSERT INTO tblDate (seq, state, regdate) VALUES (33, '정상', '2019-01-30');
INSERT INTO tblDate (seq, state, regdate) VALUES (34, '정상', '2019-01-31');


INSERT INTO tblDate (seq, state, regdate) VALUES (1, '정상', '2019-03-04');
INSERT INTO tblDate (seq, state, regdate) VALUES (2, '정상', '2019-03-05');
INSERT INTO tblDate (seq, state, regdate) VALUES (3, '지각', '2019-03-06'); --7일 결석
INSERT INTO tblDate (seq, state, regdate) VALUES (4, '정상', '2019-03-08'); --9,10 주말
INSERT INTO tblDate (seq, state, regdate) VALUES (5, '정상', '2019-03-11');
INSERT INTO tblDate (seq, state, regdate) VALUES (6, '정상', '2019-03-12');
INSERT INTO tblDate (seq, state, regdate) VALUES (7, '조퇴', '2019-03-13');
INSERT INTO tblDate (seq, state, regdate) VALUES (8, '지각', '2019-03-14'); --15일 결석
INSERT INTO tblDate (seq, state, regdate) VALUES (9, '정상', '2019-03-15');
INSERT INTO tblDate (seq, state, regdate) VALUES (10, '정상', '2019-03-16');
INSERT INTO tblDate (seq, state, regdate) VALUES (11, '지각', '2019-03-17'); --7일 결석
INSERT INTO tblDate (seq, state, regdate) VALUES (12, '정상', '2019-03-18'); --9,10 주말
INSERT INTO tblDate (seq, state, regdate) VALUES (13, '정상', '2019-03-19');
INSERT INTO tblDate (seq, state, regdate) VALUES (14, '정상', '2019-03-20');
INSERT INTO tblDate (seq, state, regdate) VALUES (15, '조퇴', '2019-03-21');
INSERT INTO tblDate (seq, state, regdate) VALUES (16, '지각', '2019-03-22');
INSERT INTO tblDate (seq, state, regdate) VALUES (17, '정상', '2019-03-23');
INSERT INTO tblDate (seq, state, regdate) VALUES (18, '정상', '2019-03-24');
INSERT INTO tblDate (seq, state, regdate) VALUES (19, '지각', '2019-03-25'); --7일 결석
INSERT INTO tblDate (seq, state, regdate) VALUES (20, '정상', '2019-03-26'); --9,10 주말
INSERT INTO tblDate (seq, state, regdate) VALUES (21, '정상', '2019-03-27');
INSERT INTO tblDate (seq, state, regdate) VALUES (22, '정상', '2019-03-28');
INSERT INTO tblDate (seq, state, regdate) VALUES (23, '조퇴', '2019-03-29');
INSERT INTO tblDate (seq, state, regdate) VALUES (24, '지각', '2019-03-30');
SELECT * FROM tbldate;

--근태 조회 > 한달 근태 기록 > 결석일(없음) + 휴일 > 빠진 날짜 메꾸기
--1. SQL
--  a. ANSI
--  b. PL/SQL

--2. 응용 프로그램(JAVA)

--1. b==2 //프로그램을 짜서 처리한다. > 날짜 기준 루프

-- start with ~ connect by --계층형 쿼리
SELECT * FROM tblcomputer;

SELECT lpad(' ', level*3) || name, level FROM tblcomputer
    START WITH pseq IS NULL
        CONNECT BY PRIOR seq = pseq;

SELECT level, lpad(' ', level*3) || dummy FROM dual
    CONNECT BY level <= 5;
    
-- 이 쿼리를 베이스로 해서 여러 작업에 응용
SELECT level FROM dual
    CONNECT BY level <= 5;

SELECT sysdate + level FROM dual
    CONNECT BY level <= 15; --원하는 행 갯수

CREATE OR REPLACE view vwStartMonth
AS
SELECT TO_DATE('20190101', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190101') - TO_DATE('20190128', 'yyyymmdd') + 1);

CREATE OR REPLACE view vwEndMonth
AS
SELECT TO_DATE('20190801', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (TO_DATE('20190821', 'yyyymmdd') - TO_DATE('20190801', 'yyyymmdd') + 1);

CREATE OR REPLACE view vwMonth2
AS
SELECT TO_DATE('20190201', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190201') - TO_DATE('20190201', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth3
AS
SELECT TO_DATE('20190301', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190301') - TO_DATE('20190301', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth4
AS
SELECT TO_DATE('20190401', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190401') - TO_DATE('20190401', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth5
AS
SELECT TO_DATE('20190501', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190501') - TO_DATE('20190501', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth6
AS
SELECT TO_DATE('20190601', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190601') - TO_DATE('20190601', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth7
AS
SELECT TO_DATE('20190701', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190701') - TO_DATE('20190701', 'yyyymmdd') + 1);

--뷰 삭제
--DROP view vwMonth2;
--DROP view vwMonth3;
--DROP view vwMonth4;
--DROP view vwMonth5;
--DROP view vwMonth6;
--DROP view vwMonth7;
--DROP view vwStartMonth;
--DROP view vwEndMonth;



--SELECT v.regdate, t.state FROM vwDate v
--    LEFT OUTER JOIN tbldate t
--        ON v.regdate = t.regdate
--            ORDER BY v.regdate ASC;



--SELECT 
--    v.regdate, 
--    CASE
--        WHEN TO_CHAR(v.regdate, 'd') IN ('7', '1') THEN '공휴일'
--        ELSE t.state
--    END AS "state"
--FROM vwDate v
--    LEFT OUTER JOIN tbldate t
--        ON v.regdate = t.regdate
--            ORDER BY v.regdate ASC;

--공휴일 테이블
CREATE TABLE tblHoliday
(
    seq NUMBER PRIMARY KEY,
    regdate DATE NOT NULL,
    name VARCHAR2(30) NOT NULL
);


INSERT INTO tblHoliday VALUES (1, '2019-03-01', '삼일절');
--모든 2015~2019 공휴일이 다 들어가있음!!


--
--SELECT v.regdate, t.state FROM vwDate v
--    LEFT OUTER JOIN tbldate t
--        ON v.regdate = t.regdate
--            LEFT OUTER JOIN tblholiday h
--                ON v.regdate = h.regdate
--                   ORDER BY v.regdate ASC;


-- 공휴일과 주말을 빼서 평일만 카운트하는 식!!!
SELECT 
    --v.regdate, 
    COUNT
    (CASE
        WHEN TO_CHAR(v.regdate, 'd') IN ('7', '1') THEN NULL
        WHEN h.name is not null THEN NULL
        ELSE 1
    END) AS "이번달의 평일수"
    --h.name
FROM vwMonth7 v
    LEFT OUTER JOIN tbldate t
        ON v.regdate = t.regdate
            LEFT OUTER JOIN tblholiday h
                ON v.regdate = h.regdate
                    ORDER BY v.regdate ASC;


SELECT * FROM tblholiday;

SELECT TO_CHAR(LAST_DAY('20190301'), 'yyyymmdd') FROM DUAL;

CREATE USER qtest11 IDENTIFIED BY java1234;

GRANT CREATE SESSION TO qtest11;

GRANT CONNECT, RESOURCE TO qtest11;

GRANT CREATE VIEW TO qtest11;
