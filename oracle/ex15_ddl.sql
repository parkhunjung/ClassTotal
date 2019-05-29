--ex15_ddl.sql

/*

DML 
-SELECT 문


DDL
- 데이터 정의어
- 객체를 생성, 수정, 삭제한다.
- 객체 : 테이블, 뷰, 인덱스, 트리거, 프로시저, 제약사항 등..
- CREATE, ALTER, DROP


테이블 생성하기 > 컬럼 구성하는 작업

CREATE TABLE 테이블명
(
    컬럼 정의,
    컬럼 정의,
    컬럼 정의,
    컬럼명 자료형(길이) NULL표기 제약사항
);

*/

CREATE TABLE tblType
(
    NUM NUMBER(3)
);

/*

컬럼명 자료형(길이) NULL표기 제약사항
제약 사항, Constraint
- 해당 컬럼에 들어갈 데이터(값)에 대한 조건(규제) > 조건을 만족하지 못하면 데이터를 해당 컬럼에 넣지 못한다. > 유효성 검사
- 데이터베이스 무결성 보장(Integrity Constraint Rule - 무결성 제약 조건)

1. NOT NULL
- 반드시 값을 가져야 한다. (필수값)

*/

CREATE TABLE tblMemo
(
    seq NUMBER NOT NULL, --메모 번호 + 필수값(Required)
    name VARCHAR2(20) NULL, --작성자 + 선택값(Optional)
    memo VARCHAR2(2000) NOT NULL, --메모 내용 + 필수값
    regdate DATE NULL--작성 시각 + 선택값
    
);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(1, '홍길동', '메모 내용입니다.', SYSDATE);

--ORA-01400: cannot insert NULL into ("HR"."TBLMEMO"."MEMO")
INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(2, '아무개', NULL, SYSDATE);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(NULL, '아무개', '하하하', SYSDATE);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(2, NULL, '하하하', NULL);


SELECT * FROM tblmemo;


/*

1. NOT NULL

2. PRIMARY KEY(PK), 기본키
- 키(컬럼)
- 가장 중요한(?) 컬럼 > 행과 행을 구분하는 역할(*****************************************************)
- 객체 (행, 레코드, 튜플) 식별자(***************************************)
- UNIQUE(유일) + NOT NULL(필수값)
- 테이블에는 반드시 PK가 존재해야 한다.(********)
- 보통 PK가 테이블에 1개 존재한다. > 가끔씩 PK가 2개 이상 만드는 경우가 있다.
    > 복합키(Composite Key)

*/

DROP TABLE tblMemo;

CREATE TABLE tblMemo
(
    seq NUMBER PRIMARY KEY, 
    name VARCHAR2(20) NULL,
    memo VARCHAR2(2000) NOT NULL, 
    regdate DATE NULL 
    
);

--ORA-00001: unique constraint (HR.SYS_C007033) violated > 가장 중요한 오류 기본키 상황을 위배한 상황
INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(1, '홍길동', '메모 내용입니다.', SYSDATE);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(1, '아무개', '반갑습니다.', SYSDATE);

/*
3. UNIQUE
- 해당 컬럼값이 테이블내에 동일한 값이 존재할 수 없게 만드는 역할
- 유일한 값 보장
- PK와 유사, NULL을 가질 수 있다.
- UNIQUE + NOT NULL = PRIMARY KEY
- UNIQUE가 걸린 컬럼을 식별자로 사용하지 말것!! (NULL이 있어서)

*/

DROP TABLE tblMemo;

CREATE TABLE tblMemo
(
    seq NUMBER PRIMARY KEY, --PK
    name VARCHAR2(20) UNIQUE,
    memo VARCHAR2(2000) NOT NULL, 
    regdate DATE NULL 
    
);

--ORA-00001: unique constraint (HR.SYS_C007038) violated 유니크제약 위배사항
INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(1, '홍길동', '메모 내용입니다.', SYSDATE);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(2, '홍길동', '메모 내용입니다.', SYSDATE);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(2, '아무개', '메모 내용입니다.', SYSDATE);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(3, NULL, '메모 내용입니다.', SYSDATE);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(4, NULL, '메모 내용입니다.', SYSDATE);

SELECT * FROM tblmemo;


/*
1. NOT NULL

2. PRIMARY KEY

3. UNIQUE

4. CHECK
- 열거, 범위 비교를 통한 제약(사용자 정의형)
-WHERE절 만드는 것과 유사

*/

DROP TABLE tblMemo;

CREATE TABLE tblMemo
(
    seq NUMBER PRIMARY KEY, --PK
    --name VARCHAR2(20) CHECK (name = '홍길동' OR name = '아무개' OR name = '테스트'), --회원제 운영(홍길동, 아무개, 테스트)
    name VARCHAR2(20)       CHECK (name IN ('홍길동', '아무개', '테스트')),
    memo VARCHAR2(2000)     NOT NULL, 
    regdate DATE            CHECK(NOT TO_CHAR(regdate, 'd') IN (1, 7)), -- 토,일 작성금지 
    length NUMBER           CHECK(length BETWEEN 20 AND 100)--범위 20 ~ 100
);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(1, '홍길동', '메모 내용입니다.', SYSDATE);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(2, '아무개', '메모 내용입니다.', SYSDATE);

--ORA-02290: check constraint (HR.SYS_C007040) violated => 체크에 걸려서 쓸수없는 상황    
INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(3, '아아아', '메모 내용입니다.', SYSDATE); 

INSERT INTO tblMemo(seq, name, memo, regdate, length)
    VALUES(1, '홍길동', '메모 내용입니다.', SYSDATE, 50);


/*
5. DEFAULT
- 컬럼 기본값 지정
- 사용자가 컬럼값을 대입하지 않으면 미리 준비해둔 기본값을 대신 대입

*/

DROP TABLE tblMemo;

CREATE TABLE tblMemo
(
    seq NUMBER              PRIMARY KEY, --PK
    --name VARCHAR2(20) CHECK (name = '홍길동' OR name = '아무개' OR name = '테스트'), --회원제 운영(홍길동, 아무개, 테스트)
    name VARCHAR2(20)      DEFAULT '익명',
    memo VARCHAR2(2000)     NOT NULL, 
    regdate DATE            DEFAULT SYSDATE
);

INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(1, '홍길동', '메모 내용입니다.', SYSDATE);

INSERT INTO tblMemo(seq, memo, regdate)
    VALUES(2, '메모 내용입니다.', SYSDATE);

INSERT INTO tblMemo(seq, memo)
    VALUES(3, '메모 내용입니다.');


SELECT * FROM tblmemo;

/*

제약 사항을 만드는 방법

1. 컬럼 수준에서 만드는 방법(여태 수업에서 만든 방식)
    - 컬럼 1개를 정의할 때 제약을 같이 정의하는 방식
    - seq number primary key 
    - 컬럼명 자료형(길이) constraint 제약명 제약조건

2. 테이블 수준에서 만드는 방법
    - 컬럼 정의할 때 제약을 정의하지 않고, 나중에 추가로 정의하는 방식
    - seq number
    - primary key
    - constraint 제약명 제약조건
*/

DROP TABLE tblMemo;

CREATE TABLE tblMemo
(
    --seq NUMBER PRIMARY KEY, -- 컬럼 수준의 정의 (생략 버전)
    --seq NUMBER CONSTRAINT aaa PRIMARY KEY, --컬럼 수준의 정의 (생략이 안된 버전) aaa : 제약 사항명
    --seq NUMBER CONSTRAINT tblMemo_seq_PK PRIMARY KEY, -- 권장 (****) : 프로젝트 때 사용
    seq NUMBER,
    name VARCHAR2(20),
    memo VARCHAR2(2000), 
    regdate DATE,
    
    CONSTRAINT tblmemo_seq_PK PRIMARY KEY(seq), -- 테이블 수준의 제약 정의
    CONSTRAINT tblmemo_name_CK CHECK(name IN ('홍길동', '아무개')),
    CONSTRAINT tblmemo_regdate_CK CHECK(TO_CHAR(regdate, 'mm') = '03')
);

-- ORA-00001: unique constraint (HR.SYS_C007051) violated
-- ORA-00001: unique constraint (HR.AAA) violated
-- ORA-00001: unique constraint (HR.TBLMEMO_SEQ_PK) violated
INSERT INTO tblMemo(seq, name, memo, regdate)
    VALUES(1, '홍길동', '메모 내용입니다.', SYSDATE);

SELECT * FROM tblmemo;

UPDATE tblmemo SET name = '아무개' WHERE seq = 1;
UPDATE tblmemo SET name = '유재석' WHERE seq = 1;





















