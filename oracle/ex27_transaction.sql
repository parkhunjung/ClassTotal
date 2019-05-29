--ex27_transaction.sql

/*

트랜잭션, transaction
- 오라클(DBMS)에서 발생하는 1개 이상의 명령어들을 하나의 논리 집합으로 묶어 놓은 단위 > 제어
- 트랜잭션에 의해서 관리되는 명령어 : DML만 포함된다. (INSERT, UPDATE, DELETE) <- 데이터에 조작을 가하는 명령어

트랜잭션 관리(처리)
- DCL
1. COMMIT
2. ROLLBACK
3. SAVEPOINT

트랜잭션 기본 원칙
- 하나의 트랜잭션에 묶여있는 모든 명령어 대상 > 오라클이 감시 
    > 모든 명령어가 성공하면 트랜잭션 성공 or 일부 명령어가 실패하면 트랜잭션 실패

새 트랜잭션이 시작하는 경우
1. 클라이언트 접속할 때
2. ROLLBACK 실행했을 때
3. COMMIT 실행했을 때

트랜잭션이 종료되는 경우
1. COMMIT을 실행했을 때 > 작업 결과를 DB에 반영함.
2. ROLLBACK을 실행했을 때 > 작업 결과를 DB에 반영 안함.
3. 클라이언트 접속을 해제했을 때 > 클라이언트의 선택에 따라 COMMIT or ROLLBACK
4. 클라이언트 툴 기능 > AUTO COMMIT 지원 > DML 문장을 실행할 때마다 자동으로 COMMIT 실행

*/


CREATE TABLE 기획부
AS
SELECT name, city, buseo, jikwi FROM tblinsa WHERE buseo = '기획부';

SELECT * FROM 기획부;

-- 클라이언트 접속

DELETE FROM 기획부 WHERE name = '홍길동';

SELECT * FROM 기획부;

DELETE FROM 기획부 WHERE name = '이영숙';

SELECT * FROM 기획부;

--현시점 잘못 발견 > 되돌리기

ROLLBACK; -- 되돌리기 + 새 트랜잭션 시작

SELECT * FROM 기획부;

DELETE FROM 기획부 WHERE name = '홍길동';

SELECT * FROM 기획부;

--현시점
COMMIT; --승인 + 새 트랜잭션 시작

SELECT * FROM 기획부;

ROLLBACK; --새 트랜잭션 시작

DELETE FROM 기획부 WHERE name = '김말자';

-- 여태 했던 마지막 트랜잭션에서 뭘했는지 기억이 안나도 
-- 새로운 작업을 시작하려면 일단 ROLLBACK이나 COMMIT을 실행한 뒤 작업을 시작한다.
COMMIT;

SELECT * FROM 기획부;

DELETE FROM 기획부 WHERE name = '김신제';

SELECT * FROM 기획부;

ROLLBACK;

/*

자동 커밋, AUTO COMMIT
- 오라클(DBMS)에서 지원
- 개발자(사용자)가 명시적으로 COMMIT을 실행하지 않았는데자동으로 COMMIT 되는 경우
- DDL, DCL 을 실행하면 자동으로 COMMIT 이 된다.
    CREATE, DROP, ALTER, TRUCATE 등을 실행하면 COMMIT이 포함된다.
    > 구조를 조작하는 명령어


*/


SELECT * FROM 기획부;

DELETE FROM 기획부 WHERE name = '김신제';

SELECT * FROM 기획부;

CREATE TABLE tblTemp
(
    num NUMBER PRIMARY KEY
);

SELECT * FROM 기획부;

ROLLBACK;

SELECT * FROM 기획부;


/*
1. COMMIT
2. ROLLBACK
3. SAVEPOINT

*/

SELECT * FROM 기획부;

DELETE FROM 기획부 WHERE name = '이영숙';

SAVEPOINT a;

DELETE FROM 기획부 WHERE name = '지재환';

SAVEPOINT b;

DELETE FROM 기획부 WHERE name = '이정석';

--현시점
ROLLBACK;
ROLLBACK TO b;
ROLLBACK TO a;

SELECT * FROM 기획부;














COMMIT;


SELECT * FROM 기획부;





















