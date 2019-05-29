--ex16_sequence.sql

/*

시퀀스, sequence
- OB OBject 중 하나
- 식별자를 만드는데 주로 사용한다. (PK에 적용)
- 중복되지 않고 순차적으로 증가하는 숫자를 반환한다.

시퀀스 객체 조작하기
1. CREATE : 생성
2. ALTER : 수정
3. DROP : 삭제

시퀀스 객체 생성하기
- CREATE SEQUENCE 시퀀스명;
1. testSeq.nextVal
2. testSeq.currVal

*/

CREATE SEQUENCE testSeq;

SELECT testSeq.nextVal FROM dual;

DROP TABLE tblMemo;

CREATE TABLE tblMemo
(
    seq NUMBER PRIMARY KEY, --PK
    --name VARCHAR2(20) CHECK (name = '홍길동' OR name = '아무개' OR name = '테스트'), --회원제 운영(홍길동, 아무개, 테스트)
    name VARCHAR2(20),
    memo VARCHAR2(2000), 
    regdate DATE
);

INSERT INTO tblmemo (seq, name, memo, regdate)
    VALUES (testSeq.nextVal, '홍길동', '하이', SYSDATE);

SELECT * FROM tblmemo;

SELECT testSeq.nextVal FROM dual; -- 값을 사용하는데 쓰임
SELECT testSeq.currVal FROM dual; -- 값을 확인하는데 쓰임


-- 테이블 식별자(PK)
-- 1. 숫자
-- 2. 문자열
-- ex) 상품 테이블
--      1. 마우스 3000
--      2. 키보드 5000
-- ex) 상품 테이블
--      A001 마우스 3000
--      B002 키보드 5000


CREATE SEQUENCE productSeq;
DROP SEQUENCE productSeq;

--상품 등록 과정 > 대(AA) + 중(VB) + 소(OP)  선택과정 > 'AAVBOP001 

SELECT 'AAVBOP' || LTRIM(TO_CHAR(productSeq.nextVal, '000')) FROM dual;


-- 시퀀스 내부 + 옵션
-- CREATE SEQUENCE testSeq; -- 기본형(가장 많이 사용)
-- CREATE SEQUENCE testSeq 옵션 옵션 옵션 옵션 옵션...; 

DROP SEQUENCE testSeq;
CREATE SEQUENCE testSeq; -- 다시 1부터 시작

CREATE SEQUENCE testSeq 
    INCREMENT BY -1 -- 증감치 조절 (양수/음수 모두가능)
    START WITH 20 -- 시작값
    MAXVALUE 30 -- 최대값(넘으면 에러)
    MINVALUE 10; -- 최소값보다 START 값이 작으면 안된다. (넘으면 에러)

CREATE SEQUENCE testSeq 
    INCREMENT BY 1
    START WITH 1 
    MAXVALUE 40 
    CYCLE -- 순환 (루프를 돌게해줌) PK 용도로는 못쓰고 순환돌게끔 하고싶을때쓴다.
    cache 10; 
    
SELECT testSeq.nextVal FROM dual;

DROP SEQUENCE testSeq;
CREATE SEQUENCE testSeq cache 20;

SELECT testSeq.nextVal FROM dual; --51































