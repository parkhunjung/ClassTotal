--ex28_account.sql

/*

계정 SQL
- DCL
- 계정 생성(소멸)
- 리소스 접근 권한 제어

사용자 계정 생성하기 
- 시스템 권한을 가지고 있는 계정만 가능하다.
    - 관리자만 가능
    - SYS, SYSTEM
    - 계정 생성 권한을 가지고 있는 일반 계정


*/

-- SYSTEM 으로 전환

-- CREATE USER 계정명 IDENTIFIED BY 암호 : 계정 생성
-- ALTER USER 계정명 IDENTIFIED BY  암호 : 암호 변경
-- DROP USER 계정명 : 계정 삭제

CREATE USER hong IDENTIFIED BY java1234;

-- 접속 테스트
-- 새로운 계정에게 접속 권한 부여하기
-- GRANT 권한 TO 유저명

--system 으로!
GRANT CREATE SESSION TO hong; -- 접속 권한 부여

--hong 계정으로 !
SELECT * FROM tabs;

CREATE table tblmyinfo
(
    seq NUMBER PRIMARY KEY,
    data VARCHAR2(1000) NOT NULL
);



--system으로 변경
GRANT CREATE TABLE TO hong; --테이블 생성 권한
GRANT CREATE VIEW TO hong; -- 뷰 생성 권한
GRANT RESOURCE TO hong; -- 여러 권한들을 하나의 패키지로 만들어 놓음(권한 집합 : Role)

-- hong 변경
CREATE table tblmyinfo
(
    seq NUMBER PRIMARY KEY,
    data VARCHAR2(1000) NOT NULL
);

/*

관리자 시스템 권한
1. CREATE USER : 계정 생성 권한
2. DROP USER : 계정 삭제 권한
3. DROP ANY TABLE : 소유주와 상관없이 모든 테이블 삭제 권한
..

사용자 시스템 권한
1. CREATE SESSION : DB 접속 권한
2. CREATE TABLE : 테이블 생성 권한
3. CREATE VIEW
4. CREATE SEQEUNCE
5. CREATE PROCEDURE

130~140여가지

GRANT 권한명 TO 유저명;


역할, ROLE
- 사용자에게 여러개의 권한을 주기 위한 권한 그룹

1. CONNECT
    - 사용자가 DB 접속 + 기본 행동 포함

2. RESOURCE
    - 사용자 객체 생성 + 조작 행동 포함
    
3. DBA
    - 관리자 권한

*/

-- 평범한 상황(프로젝트 계정 만들기) > SYSTEM 계정
--1. 계정 생성
CREATE USER team IDENTIFIED BY java1234;

--2. 권한 부여
GRANT CONNECT, RESOURCE TO team;

--3. 권한 뺏기
REVOKE RESOURCE FROM team;


























