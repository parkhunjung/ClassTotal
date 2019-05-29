--ex23_view.sql

/*

뷰, view
- DB Object 중 하나 (테이블, 시퀀스, 제약사항, 뷰)
- 가상 테이블
- 테이블의 복사본 > 뷰, 뷰 테이블, 가상 테이블, 복사 테이블 등..
- 테이블처럼 취급한다.(****)
- 답 : SELECT 쿼리를 저장하는 객체입니다.

*/

-- 뷰 생성
CREATE VIEW vwInsa
AS
SELECT * FROM tblinsa;

-- 복사 테이블(제약사항 X)
CREATE TABLE tblCopy
AS
SELECT * FROM tblinsa;

SELECT * FROM tblcopy; -- 복사 테이블 => 얘는 본 테이블과는 다른아이다.
SELECT * FROM vwinsa; -- 위와 동일 => 얘는 본 테이블 수정시 뷰테이블마저도 바뀐다 (딥 카피)

UPDATE tblinsa SET city = '제주'; -- 원본 테이블

commit;

-- 업무 > 직원 정보 열람 > (영업부, 기획부) + 남자직원 > 하루 100회 * 1년 내내
SELECT * FROM tblinsa
    WHERE buseo IN ('영업부', '기획부') AND SUBSTR(ssn, 8, 1) = '1';

CREATE VIEW 자주쓰는업무
AS
SELECT * FROM tblinsa
    WHERE buseo IN ('영업부', '기획부') AND SUBSTR(ssn, 8, 1) = '1';

SELECT * FROM 자주쓰는업무;


/*
뷰의 특징
1. 자주 반복하는 쿼리를 간단하게 줄일 수 있다. > 네이밍(***)
2. 원본 테이블 복사본(X) > 쿼리 자체를 저장하기 때문에 항상 원본 테이블의 데이터를 가져온다.
3. 원본 테이블 자체가 부담이 되면 일부 서브셋(자바의 메소드)을 만들어서 사용하는데 그때 뷰를 사용한다. ex) 직원의 남자테이블,여자테이블
4. 정리
    a. 자주 반복되는 쿼리 저장
    b. 반복과 상관없이 쿼리의 의미를 부여하기위해 쓴다.(가독성 상승)
    c. 보안 : 권한 제어

*/

SELECT * FROM tblinsa; --그룹 전체 정보(사장, 관리급)

CREATE VIEW 긴급연락망
AS 
SELECT name, tel FROM tblinsa;

SELECT * FROM 긴급연락망; -- 신입사원에게만 보여주고싶은 정보를 주는, 즉 볼 정보의 권한을 제어하는 방법

CREATE OR REPLACE VIEW vwRent -- 만듬과 동시에 수정까지도 가능하게 해줌 CREATE OR REPLACE VIEW
AS
SELECT   
    m.name AS "회원명",
    m.tel AS "연락처",
    v.name AS "비디오제목",
    TO_CHAR(r.rentdate, 'yyyy-mm-dd') AS "대여 일자",
    CASE
        WHEN r.retdate IS NOT NULL THEN '반납 완료'         
        WHEN r.retdate IS NULL THEN '미반납'
    END AS "반납유무",
    g.name,
    g.period,
    g.price,
    CASE
        WHEN r.retdate IS NULL THEN ROUND(SYSDATE - r.rentdate + g.period)
        WHEN r.retdate IS NOT NULL THEN 0
    END AS "연체 기간",
    CASE
        WHEN r.retdate IS NULL THEN ROUND(SYSDATE - r.rentdate + g.period) * (g.price * 0.05)
        WHEN r.retdate IS NOT NULL THEN 0
    END AS "연체료"
    
    FROM tblmember m
    INNER JOIN tblrent r
        ON m.seq = r.member
            INNER JOIN tblvideo v
                ON v.seq = r.video
                    INNER JOIN tblgenre g
                        ON g.seq = v.genre;


SELECT * FROM vwRent;

/*

뷰의 사용 방법
1.C(쓰기) > 절대 금지
2.R(읽기) > 뷰는 읽기 전용으로 사용한다. 이외에는 절대사용금지
3.U(수정) > 절대 금지
4.D(삭제) > 절대 금지

-CRUD 전부 가능하다. 그러나.. R빼고는 절대 사용 금지 절대!!(****)

*/

CREATE OR REPLACE VIEW vwTodo
AS
SELECT title, adddate FROM tbltodo WHERE completedate IS NOT NULL;


--2. R > O
SELECT * FROM vwTodo;

--1. C > O 
INSERT INTO vwTodo (seq, title, adddate, completedate) VALUES (50, '뷰 테스트', SYSDATE, NULL);

--3. U > O
UPDATE vwTodo SET title = 'View Test' WHERE seq = 50;

--4. D > O
DELETE FROM vwTodo WHERE seq = 50;

/*

뷰의 종류
1. 단순 뷰
- 하나의 기본 테이블에 의해 만들어진 뷰
- CRUD 가능

2. 복합 뷰
- 두개 이상의 기본 테이블에 의해 만들어진 뷰 (서브쿼리, 조인 사용)
- R 가능

결론
1. 뷰는 읽기 전용 테이블이다.
2. CUD 는 가능해도 하지마라. > CUD는 원본 테이블을 대상으로 직접 실행해라.


*/

--ORA-00957: duplicate column name ?? => 같은 컬럼의 이름이 존재하기때문에 난 오류 => 해결법 > 앨리야스
CREATE VIEW vwVideo
AS
SELECT v.name AS vname, g.name gname 
FROM tblvideo v
    INNER JOIN tblgenre g
        ON g.seq = v.genre;

SELECT * FROM vwvideo;
INSERT INTO vwVideo (vname, gname) VALUES ('캡틴 마블', 'SF');
 



















