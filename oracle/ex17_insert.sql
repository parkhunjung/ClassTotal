--ex17_insert.sql

/*

insert 문
- 데이터를 테이블에 추가한다.(레코드 단위)
- INSERT INTO 테이블명(컬럼)
- INSERT
    INTO 테이블명 (컬럼리스트) --테이블구조
    VALUES (값리스트) -- 구조에 따른 넣을 값
    

*/

DROP TABLE tblmemo;

CREATE TABLE tblmemo
(
    seq NUMBER PRIMARY KEY, --메모번호(PK)
    name VARCHAR2(30) NOT NULL,--작성자
    memo VARCHAR2(1000) NOT NULL,--메모내용
    regdate DATE DEFAULT SYSDATE NOT NULL, -- 작성날짜
    etc VARCHAR2(500) DEFAULT '비고없음' NULL, --비고
    page NUMBER NULL -- 작성 페이지수
);

CREATE SEQUENCE memoSeq; --메모 번호용 시퀀스 객체

--INSERT 패턴
--1. 표준:  원본 테이블의 정의된 컬럼 순서대로 컬럼리스트와 값리스트를 표기하는 방법
INSERT INTO tblmemo (seq, name, memo, regdate, etc, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', SYSDATE, '비고', 1);

--2. ORA-01841: (full) year must be between -4713 and +9999, and not be 0
-- 반드시 컬럼리스트의 순서와 값리스트의 순서는 일치해야 합니다.
INSERT INTO tblmemo (seq, name, memo, regdate, etc, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', '비고', SYSDATE, 1);

--3. 원본테이블의 컬럼순서와 INSERT 컬럼리스트의 순서는 아무 상관없다.
-- 컬럼리스트의 순서와 값리스트의 순서만 일치하면 된다.
INSERT INTO tblmemo (seq, name, memo, etc, regdate, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', '비고', SYSDATE, 1);

--4. ORA-00947: not enough values 값이 부족한것
INSERT INTO tblmemo (seq, name, memo, regdate, etc, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', SYSDATE, 비고);
 
--5. ORA-00913: too many values 이번엔 값이너무 많다
INSERT INTO tblmemo (seq, name, memo, regdate, etc)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', SYSDATE, 비고, 1);
    
--6. null 허용된 컬럼에 값 대입하기.(etc, page)
-- null 허용됐지만 값을 넣은 경우 > 선택 사항 > 잘들어감
INSERT INTO tblmemo (seq, name, memo, regdate, etc, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', SYSDATE, '비고', 1);

--6. null 허용된 컬럼에 값 대입하기.(etc, page)
-- null 허용됐지만 값을 넣지않은 경우 > 선택 사항 > 잘들어감
-- a. 명시적으로 비우기 > null 상수 대입
INSERT INTO tblmemo (seq, name, memo, regdate, etc, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', SYSDATE, null, null);
-- b. 암시적으로 비우기 > null 컬럼이 default 를 가지고있다면 null 이 아닌 기본값이 들어간다.
INSERT INTO tblmemo (seq, name, memo, regdate)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', SYSDATE);

--7. ORA-01400: cannot insert NULL into ("HR"."TBLMEMO"."MEMO") 
-- NOT NULL 은 생략 불가능, NULL 이 허용된 컬럼만 생략가능
INSERT INTO tblmemo (seq, name)
    VALUES (memoSeq.nextVal, '홍길동');

--7. NOT NULL 컬럼이라도 DEFAULT 가 걸려있으면 생략이 가능하다. > DEFAULT 값이 들어갈거기 때문에
INSERT INTO tblmemo (seq, name, memo)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다');

--7. NOT NULL 이 DEFAULT 값을 가지고 있더라도 NULL을 명시적으로 대입 불가능
INSERT INTO tblmemo (seq, name, memo, regdate)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', NULL);

--8. default (regdate, etc) 
--a. 사용자 값을 명시적으로 넣는 경우 > 사용자가 넣은 값이 대입된다. (default 동작 안함)
INSERT INTO tblmemo (seq, name, memo, regdate, etc, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', SYSDATE, '비고', 1);

--b. 사용자 값을 넣기 싫음 > default 동작 > 컬럼 생략 
INSERT INTO tblmemo (seq, name, memo, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', 1);

--c. 사용자 값을 넣기 싫음 > default 동작 > default 키워드
INSERT INTO tblmemo (seq, name, memo, regdate, etc, page)
    VALUES (memoSeq.nextVal, '홍길동', '메모입니다', default, default, 1);
    
SELECT
    *
FROM tblmemo;


-- INSERT문
-- 1. 컬럼리스트(순서, 갯수) == 값리스트(순서, 갯수)
-- 2. 컬럼(값) 생략 가능 > NULL 컬럼, DEFAULT 컬럼
-- 3. NULL 명시적 대입 > NULL 상수 대입
-- 4. DEFAULT 명시적 대입 > DEFAULT 상수 대입

-- INSERT 추가 내용
SELECT * FROM tblmemo;

INSERT INTO tblmemo (seq, name, memo, regdate, etc, page)
    VALUES (memoSeq.nextVal, '아무개', '내용이고', SYSDATE, '테스트', 5);

-- 컬럼 리스트 생략할 수 있다.
-- 1. 원본 테이블의 컬럼 순서대로 값을 대입해야 한다. (기억이 잘안남..)
-- 2. NULL을 넣기위해 컬럼(값)을 생략할 수 없다.
INSERT INTO tblMemo VALUES (memoSeq.nextVal, '아무개', '내용이고', SYSDATE, '테스트', 5); -- 생략구문은 비권장
INSERT INTO tblMemo VALUES (memoSeq.nextVal, '아무개', '내용이고',  '테스트', SYSDATE, 5); --순서가 틀려서 오류
INSERT INTO tblMemo VALUES (memoSeq.nextVal, '아무개', '내용이고', SYSDATE); -- 널값이허용되도 생략이 안된다
INSERT INTO tblMemo VALUES (memoSeq.nextVal, '아무개', '내용이고', SYSDATE, NULL, NULL);


-- 요구사항] tblMemo > (복사) tblMemoCopy
DROP TABLE tblmemoCopy;

CREATE TABLE tblmemoCopy
(
    seq NUMBER PRIMARY KEY, --메모번호(PK)
    name VARCHAR2(30) NOT NULL,--작성자
    memo VARCHAR2(1000) NOT NULL,--메모내용
    regdate DATE DEFAULT SYSDATE NOT NULL, -- 작성날짜
    etc VARCHAR2(500) DEFAULT '비고없음' NULL, --비고
    page NUMBER NULL -- 작성 페이지수
);

SELECT * FROM tblmemo; --SELECT 11건
SELECT * FROM tblmemocopy; -- INSERT 11건

--테이블 복사시 조건을 주면 내가원하는 조건에만 걸리는 복사만 가능
INSERT INTO tblmemocopy SELECT * FROM tblmemo WHERE page IS NOT NULL; --테이블간의 복사하기

-- 직원 60명
SELECT * FROM tblinsa;

--장급(부장,과장) 테이블 만들어 주세요.
CREATE TABLE tblInsa1(
        num NUMBER(5) NOT NULL CONSTRAINT tblInsa1_pk PRIMARY KEY
       ,name VARCHAR2(20) NOT NULL
       ,ssn  VARCHAR2(14) NOT NULL
       ,ibsaDate DATE     NOT NULL
       ,city  VARCHAR2(10)
       ,tel   VARCHAR2(15)
       ,buseo VARCHAR2(15) NOT NULL
       ,jikwi VARCHAR2(15) NOT NULL
       ,basicPay NUMBER(10) NOT NULL
       ,sudang NUMBER(10) NOT NULL
);

INSERT INTO tblinsa1 
    SELECT * FROM tblinsa WHERE jikwi IN ('부장', '과장');

SELECT * FROM tblinsa1;
--사원(사원,대리) 테이블 만들어 주세요.

CREATE TABLE tblInsa2
AS 
    SELECT * FROM tblinsa WHERE jikwi IN ('대리', '사원');

SELECT * FROM tblinsa2;

-- CREATE TABLE + INSERT SELECT : 장급
-- : 테이블 별도 생성(제약 사항 생성)
-- : 업무용 O + 개발자 테스트용 O 

-- CREATE TABLE SELECT : 사원급
-- : 테이블 자동 생성
-- : 컬럼의 복사 > 제약 사항 복사가 안된다.
-- : 업무용 X + 개발자 테스트용 O 

CREATE TABLE tblMemoCLone
AS
    SELECT * FROM tblMemo;

SELECT * FROM tblmemocopy; -- 장급 : 제약사항 o 
SELECT * FROM tblmemoclone; -- 사원급 : 제약사항 x

INSERT INTO tblmemoCopy
    SELECT * FROM tblmemo;

INSERT INTO tblmemoClone
    SELECT * FROM tblmemo;


























