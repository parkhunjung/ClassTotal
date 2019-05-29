--ex26_union.sql

/*
JOIN, 조인
- 테이블을 합치는 기술
- 횡, 가로
- 컬럼 합치기
- 분산되어 있는 정보(컬럼)를 하나의 결과셋에서 보고 싶을 때 사용

UNION, 유니온
- 테이블을 합치는 기술
- 종, 세로
- 레코드 합치기
- 분산되어 있는 데이터(레코드, 객체, 행)를 하나의 결과셋에서 보고 싶을 때 사용

*/

SELECT * FROM tblmen;
SELECT * FROM tblwomen;

-- 남,녀 모두를 보고싶습니다.
SELECT * FROM tblmen
UNION
SELECT * FROM tblwomen;    

-- 회사. 부서별 게시판
CREATE TABLE tblUnion1 --영업부 게시판
(
    seq NUMBER PRIMARY KEY,
    subject VARCHAR2(100) NOT NULL
);

CREATE TABLE tblUnion2 --총무부 게시판
(
    seq NUMBER PRIMARY KEY,
    subject VARCHAR2(100) NOT NULL
);

CREATE TABLE tblUnion3 --기획부 게시판
(
    seq NUMBER PRIMARY KEY,
    subject VARCHAR2(100) NOT NULL
);

DROP TABLE tblunion1;
-- 게시물
INSERT INTO tblunion1 VALUES (1, '영업부 게시판입니다.');
INSERT INTO tblunion1 VALUES (2, '영업부 게시판입니다.');
INSERT INTO tblunion1 VALUES (3, '영업부 게시판입니다.');

INSERT INTO tblunion2 VALUES (1, '총무부 게시판입니다.');
INSERT INTO tblunion2 VALUES (2, '총무부 게시판입니다.');
INSERT INTO tblunion2 VALUES (3, '총무부 게시판입니다.');
INSERT INTO tblunion2 VALUES (4, '총무부 게시판입니다.');


INSERT INTO tblunion3 VALUES (1, '기획부 게시판입니다.');
INSERT INTO tblunion3 VALUES (2, '기획부 게시판입니다.');

SELECT * FROM tblunion1
union
SELECT * FROM tblunion2
union
SELECT * FROM tblunion3;

-- 축구선수 공격수, 수비수 

CREATE TABLE 공격수
(
    이름 VARCHAR2(30) PRIMARY KEY, --일반 특성
    키 NUMBER NOT NULL, --일반 특성
    몸무게 NUMBER NOT NULL, --일반 특성
    근력 NUMBER NOT NULL, --공격수 특징
    스피드 NUMBER NOT NULL --공격수 특징
);

CREATE TABLE 수비수
(
    이름 VARCHAR2(30) PRIMARY KEY, --일반 특성
    키 NUMBER NOT NULL, --일반 특성
    몸무게 NUMBER NOT NULL, --일반 특성
    지구력 NUMBER NOT NULL --수비수 특징
);

INSERT INTO 공격수 VALUES ('홍길동', 180, 80, 100, 90);
INSERT INTO 공격수 VALUES ('아무개', 185, 82, 95, 85);
INSERT INTO 수비수 VALUES ('하하하', 192, 90, 88);
INSERT INTO 수비수 VALUES ('후후후', 188, 81, 95);

SELECT 이름, 몸무게, 키 FROM 공격수
UNION
SELECT 이름, 몸무게, 키 FROM 수비수;

SELECT 이름, 몸무게, 키, 근력, 스피드, 0 as 지구력 FROM 공격수
UNION
SELECT 이름, 몸무게, 키, 0, 0, 지구력 FROM 수비수;


CREATE TABLE tblunionA
(
    name VARCHAR2(20) NOT NULL
);

CREATE TABLE tblunionB
(
    name VARCHAR2(20) NOT NULL
);

INSERT INTO tbluniona VALUES ('빨강');
INSERT INTO tbluniona VALUES ('파랑');
INSERT INTO tbluniona VALUES ('노랑');
INSERT INTO tbluniona VALUES ('검정');
INSERT INTO tbluniona VALUES ('하양');

INSERT INTO tblunionb VALUES ('주황');
INSERT INTO tblunionb VALUES ('초록');
INSERT INTO tblunionb VALUES ('빨강'); --**
INSERT INTO tblunionb VALUES ('남색');
INSERT INTO tblunionb VALUES ('검정'); --**

--두 테이블을 합쳣을때 중복되는 행을 자동으로 제거
SELECT * FROM tbluniona
UNION
SELECT * FROM tblunionb;

-- UNION ALL
-- 두 테이블을 합쳤을때 중복되는 행도 같이 가져오기
SELECT * FROM tbluniona
UNION ALL
SELECT * FROM tblunionb;

-- INTERSECT
-- 두 테이블을 합쳤을때 중복되는 행만 가져오기
SELECT * FROM tbluniona
INTERSECT
SELECT * FROM tblunionb;

-- MINUS
-- 차집합
-- A - B
SELECT * FROM tbluniona
MINUS
SELECT * FROM tblunionb;






















