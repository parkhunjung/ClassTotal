--ex24_alter.sql

/*

객체 생성 : CREATE
객체 삭제 : DROP
객체 수정 : ALTER

데이터 생성 : INSERT
데이터 삭제 : DELETE
데이터 수정 : UPDATE

테이블 수정하기, ALTER TABLE 
- 테이블의 구조를 수정하기 > 컬럼의 정의를 수정한다.
- 최대한 테이블을 수정할 상황을 만들면 안된다. (*****************************************)

1. 테이블 삭제 > 테이블 DDL(CREATE) 수정 > 수정된 DDL로 새롭게 테이블을 만든다.
    - 기존에 데이터가 있다면 > 데이터 백업 > 테이블 삭제 > 테이블 생성 > 데이터 복구
    : 개발(공부)중에만 사용 가능, 서비스 운영도중? (절대 불가능)사용 불가능
    
2. ALTER 명령어 > 테이블의 구조 변경 + 기존 데이터 유지
    : 개발(공부)중에 사용 가능, 서비스 운영 도중 사용 가능(쉽지는 않다.)
    
테이블 수정 > 컬럼 수정
1. 새로운 컬럼 추가하기 > 난이도 : 하 + 업무 강도 : 중,하
2. 기존 컬럼의 정의 수정하기(자료형, 길이, 제약 사항) >> 난이도 : 중 + 업무 강도 : 중(기존 데이터)
3. 기존 컬럼 삭제하기 > 난이도 : 중 + 업무 강도 : 중

*/

CREATE TABLE tblEdit
(
    seq NUMBER PRIMARY KEY,
    data VARCHAR2(20) NOT NULL
);

INSERT INTO tblEdit VALUES (1, '마우스');
INSERT INTO tblEdit VALUES (2, '키보드');
INSERT INTO tblEdit VALUES (3, '모니터');

--1. 새로운 컬럼 추가하기
ALTER TABLE tblEdit
    add (price NUMBER(5) NULL);

--사용이 안됨.  ORA-01758: table must be empty to add mandatory (NOT NULL) column 컬럼값이 비어잇어서
ALTER TABLE tblEdit
    add (description VARCHAR2(100) NOT NULL);

--1. 해결법 디폴트
ALTER TABLE tblEdit
    add (description VARCHAR2(100) DEFAULT '임시' NOT NULL); -- 추후 올바른 값으로 수정
--NULL로 생성 -> 올바른 값을 대입 -> 다시 NOT NULL 수정 (같은 방식)

--2. 기존 컬럼의 정의 수정하기(자료형, 길이, 제약사항)
INSERT INTO tblEdit VALUES (4, '최신게임을 지원하는 게이밍 노트북', 10000, '좋아요');

--2.A 자료형의 크기를 늘리기
ALTER TABLE tblEdit
    MODIFY(data VARCHAR2(100));

--2.B 자료형의 크기를 줄이기
-- ORA-01441: cannot decrease column length because some value is too big 현재 가지고잇는 정보가 너무 크다.
-- 기존 데이터가 수정하려는 크기보다 크면 에러 발생
ALTER TABLE tblEdit
    MODIFY(data VARCHAR2(20));

--2.C NOT NULL > NULL
ALTER TABLE tbledit
    MODIFY (description VARCHAR2(100) NULL);

ALTER TABLE tbledit
    MODIFY (description VARCHAR2(100) NOT NULL);

--2.D 자료형 바꾸기 > 되도록 하지 말것(*************) > 만약 한다면 기존 데이터의 형태를 잘 확인
ALTER TABLE tblEdit
    MODIFY (price VARCHAR2(5));

--2.E 컬럼명 바꾸기 > 얘는 진짜 오타가아닌바에야 사용하는것 자체가 말이안된다.
ALTER TABLE tbledit
    RENAME COLUMN description to info;


    
UPDATE tblEdit SET price = null; 

DESC tbledit;


--3. 컬럼 삭제하기
ALTER TABLE tbledit
    DROP COLUMN info;

ALTER TABLE tbledit
    DROP COLUMN seq; -- PK : 절대 하지 말아야한다..!!


SELECT * FROM tbledit;

-----------------------------------------------------------------------------------------------

-- 제약 사항 추가하기
DROP TABLE tbledit;

CREATE TABLE tbledit
(
    seq NUMBER,
    name VARCHAR2(30),
    color VARCHAR2(30)
);

ALTER TABLE tbledit
    --ADD (seq NUMBER PRIMARY KEY); -- 컬럼 수준
    ADD CONSTRAINT tbledit_seq_pk PRIMARY KEY(seq); -- 테이블 수준

ALTER TABLE tblEdit
    ADD CONSTRAINT tblEdit_color_ck CHECK (color IN ('red', 'yellow', 'blue'));

INSERT INTO tblEdit VALUES (1, '빨강', 'red');
INSERT INTO tblEdit VALUES (2, '노랑', 'yellow');



SELECT * FROM tbledit;

CREATE TABLE tbledit2
(
    seq NUMBER PRIMARY KEY,
    data VARCHAR2(30) NOT NULL,
    pseq NUMBER NOT NULL --FK
);

-- ORA-00972: identifier is too long 
-- *Cause:    An identifier with more than 30 characters was specified.
-- 오라클은 객체 식별자 30자를 넘을 수 없다. 
ALTER TABLE tbledit2
    ADD CONSTRAINT tblparent_tblchildren_pseq_fk
        FOREIGN KEY(pseq) REFERENCES tbledit(seq);
        
--삭제 
ALTER TABLE tbledit2
    DROP CONSTRAINT tblparent_tblchildren_pseq_fk;
DESC tbledit;

/*

테이블의 모든 행 삭제하기
- 테이블 초기화(구조는 그대로 두고 데이터만 삭제)
- 개발 > 테스트 > 완료 > 초기화

1. DROP > CREATE
- 사용 빈도 꽤 있음
- 되돌리기 불가능(복구 불가능)
- 편법

2. DELETE
- 정석
- 초기화 용도 & 일반 업무 용도
- 되돌리기 가능(트랜잭션 가능)

3. TRUNCATE
- 테이블 초기화 명령어
- 정석
- 테이블의 모든 행을 삭제한다. > DELETE와 유사 + 되돌리기 불가능

*/

CREATE TABLE 영업부
AS
SELECT * FROM tblinsa WHERE buseo = '영업부';

SELECT * FROM 영업부;

DELETE FROM 영업부;
ROLLBACK;

TRUNCATE TABLE 영업부;--**
















ALTER TABLE tblSubject 
    add (delete_status VARCHAR2(15) CONSTRAINT tblSubject_delete_status_CK CHECK(delete_status IN ('가능', '불가능')) NOT NULL);








