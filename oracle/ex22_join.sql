--ex22_join.sql

--조인, JOIN + 테이블간의 관계(****)

-- 직원 + 담당 프로젝트 정보 > 테이블 생성
DROP TABLE tblStaff;

CREATE TABLE tblStaff
(
    seq NUMBER PRIMARY KEY, --직원번호(PK)
    name VARCHAR2(30) NOT NULL, --직원명
    salary NUMBER NOT NULL, --급여
    address VARCHAR2(300) NOT NULL, --거주지
    projectname VARCHAR2(100) NULL -- 이 직원이 담당하는 프로젝트명
);

INSERT INTO tblStaff (seq, name, salary, address, projectname)
    VALUES(1, '홍길동', 250, '서울시', '홍콩 수출');
INSERT INTO tblStaff (seq, name, salary, address, projectname)
    VALUES(2, '아무개', 230, '부산시', 'TV 광고');
INSERT INTO tblStaff (seq, name, salary, address, projectname)
    VALUES(3, '하하하', 210, '서울시', '매출 분석');

-- 정책 : 직원 1명이 여러 프로젝트를 담당하는게 가능        
INSERT INTO tblStaff (seq, name, salary, address, projectname)
    VALUES(4, '홍길동', 250, '서울시', '인사 처리');
INSERT INTO tblStaff (seq, name, salary, address, projectname)
    VALUES(5, '홍길동', 250, '서울시', '자재 납품');

-- 관계형 데이터베이스(오라클)에서 1개의 셀안에는 분리될 수 없는 원자값이 들어있어야 한다.
UPDATE tblstaff SET
    projectname = '홍콩 수출, 인사 처리, 자재 납품'
        WHERE seq = '1';
        
DELETE FROM tblstaff WHERE seq IN ('4', '5');

SELECT * FROM tblstaff;





DROP TABLE tblStaff;
DROP TABLE tblProject;


--직원 테이블
CREATE TABLE tblStaff
(
    seq NUMBER PRIMARY KEY, --직원번호(PK)
    name VARCHAR2(30) NOT NULL, --직원명
    salary NUMBER NOT NULL, --급여
    address VARCHAR2(300) NOT NULL
);

--프로젝트 테이블(자식 테이블)
CREATE TABLE tblProject
(
    seq NUMBER PRIMARY KEY, -- 프로젝트 번호(PK)
    projectname VARCHAR2(100) NOT NULL, -- 프로젝트 명
    --staffseq NUMBER NOT NULL -- 담당 직원 번호
    staffseq NUMBER NOT NULL REFERENCES tblStaff(seq) -- 제약사항(FOREIGN KEY)
);

INSERT INTO tblStaff (seq, name, salary, address)
    VALUES (1, '홍길동', 250, '서울시');
INSERT INTO tblStaff (seq, name, salary, address)
    VALUES (2, '아무개', 230, '부산시');
INSERT INTO tblStaff (seq, name, salary, address)
    VALUES (3, '하하하', 210, '서울시');

INSERT INTO tblProject (seq, projectname, staffseq)
    VALUES (1, '홍콩 수출', 1); --홍길동
INSERT INTO tblProject (seq, projectname, staffseq)
    VALUES (2, 'TV 광고', 2); --아무개
INSERT INTO tblProject (seq, projectname, staffseq)
    VALUES (3, '매출 분석', 3); --하하하
INSERT INTO tblProject (seq, projectname, staffseq)
    VALUES (4, '노조 협상', 1); --홍길동
INSERT INTO tblProject (seq, projectname, staffseq)
    VALUES (5, '대리점 분양', 1); --홍길동
    
SELECT * FROM tblstaff;
SELECT * FROM tblproject;

-- 서로 관계를 맺고 있는 두 테이블간의..
-- tblStaff(기본 테이블, 부모 테이블)
-- tblProject(참조 테이블, 자식 테이블)

-- *** 관계를 맺고 있는 2개의 테이블의 데이터를 조작하면.. 생기는 일들..
-- 이 부분을 실수하면 > 데이터의 무결성(유효성)이 깨진다. > 데이터의 가치가 상실된다.
-- 1. 부모 테이블 조작
--      a. 행 추가 : 아무 제약 없음
--      b. 행 수정 : 아무 제약 없음
--      c. 행 삭제 : 자식 테이블에 나를 참조하고 있는 행이 존재하는지 체크
-- 2. 자식 테이블 조작
--      a. 행 추가 : 참조하는 컬럼값이 부모 테이블 존재하는 값인지 체크(직원 번호)
--      b. 행 수정 : 참조하는 컬럼값이 부모 테이블 존재하는 값인지 체크(직원 번호)
--      c. 행 삭제 : 아무 제약 없음

-- 외래키(참조키), Foreign Key
-- 참조 관계에 있는 두 테이블간의 연결 고리 역할을 하는 컬럼(키)이 있다. 그 컬럼에게 항상
-- 유효한 값을 저장할 수 있도록 동작하는 제약 사항
-- 부모 테이블(PK) <-> 자식 테이블(PK)




SELECT * FROM tblstaff; -- 3명
SELECT * FROM tblproject; -- 5건

-- A. 신입 사원 입사 > 신규 프로젝트 담당
-- A.1 신입 사원 추가
INSERT INTO tblStaff (seq, name, salary, address)
    VALUES (4, '신입이', 200, '인천시');

-- A.2 신규 프로젝트 추가
INSERT INTO tblProject (seq, projectname, staffseq)
    VALUES (6, '자재 매입', 4); --신입이

-- A.3 신규 프로젝트 추가 > 잘못된 경우(!!!!)
-- ORA-02291: integrity constraint (HR.SYS_C007134) violated - parent key not found : 참조하는 부모키가 없다.
INSERT INTO tblProject (seq, projectname, staffseq)
    VALUES (7, '고객 유치', 5); --홍길동

-- B. '홍길동' 퇴사
-- B.1 '홍길동' 삭제
-- ORA-02292: integrity constraint (HR.SYS_C007134) violated - child record found : 내가 참조하는 자식레코드가 있다.
DELETE FROM tblstaff WHERE name = '홍길동'; --비권장
DELETE FROM tblstaff WHERE seq = 1; --권장(PK)

-- C.1 업무 인수 인계 > '홍길동' 프로젝트 > 다른 직원에게 위임
-- ORA-02291: integrity constraint (HR.SYS_C007134) violated - parent key not found : 참조하는 부모키가 없다.
-- UPDATE tblProject SET staffseq = 10 WHERE staffseq = 1;
UPDATE tblProject SET staffseq = 2 WHERE staffseq = 1;

-- C.2 '홍길동' 퇴사
DELETE FROM tblstaff WHERE seq = 1; --권장(PK)


-- 관계 맺은 테이블들
-- 고객 <-> 판매
-- 고객 테이블
CREATE TABLE tblCustomer
(
    seq NUMBER PRIMARY KEY, --고객 번호(PK)
    name VARCHAR2(30) NOT NULL, --고객명
    tel VARCHAR2(15) NOT NULL, --연락처
    address VARCHAR2(100) NOT NULL--주소
);

-- 판매 테이블
CREATE TABLE tblSales
(
    seq NUMBER PRIMARY KEY, --판매번호(PK)
    item VARCHAR2(50) NOT NULL, --상품명
    qty NUMBER NOT NULL, --판매수량
    regdate DATE DEFAULT SYSDATE NOT NULL, --판매날짜
    customerseq NUMBER NOT NULL REFERENCES tblCustomer(seq)
);

-- 관계맺은 테이블 경우
-- 생성 : 부모부터 > 자식순으로
-- 삭제 : 자식부터 > 부모순으로

DROP TABLE tblCustomer;
DROP TABLE tblSales;

--비디오 판매점
--장르 테이블
CREATE TABLE tblGenre
(
    seq NUMBER PRIMARY KEY, --장르번호(PK)
    name VARCHAR2(30) NOT NULL, --장르명
    price NUMBER NOT NULL, --대여 가격
    period NUMBER NOT NULL --대여 기간
);

--비디오 테이블
CREATE TABLE tblVideo
(
    seq NUMBER PRIMARY KEY, --비디오번호(PK)
    name VARCHAR2(100) NOT NULL, --비디오제목
    qty NUMBER NOT NULL, --보유 수량
    company VARCHAR2(50) NULL, --제작사
    director VARCHAR2(50) NULL, -- 감독
    major VARCHAR2(50) NULL, -- 주연배우
    genre NUMBER NOT NULL REFERENCES tblGenre(seq) --장르번호
);

--회원 테이블
CREATE TABLE tblMember
(
    seq NUMBER PRIMARY KEY, --회원번호(PK)
    name VARCHAR2(30) NOT NULL, --회원이름
    grade NUMBER(1) NOT NULL, --회원등급(1,2,3)
    byear NUMBER(4) NOT NULL, --생년
    tel VARCHAR2(15) NOT NULL, --연락처
    address VARCHAR2(300) NULL, --주소
    money NUMBER NOT NULL --예치금
);

--대여 테이블
CREATE TABLE tblRent
(
    seq NUMBER PRIMARY KEY, --대여번호(PK)
    member NUMBER NOT NULL REFERENCES tblMember(seq), --대여한 회원번호(PK)
    video NUMBER NOT NULL REFERENCES tblVideo(seq), -- 대여한 비디오번호(PK)
    rentdate DATE DEFAULT SYSDATE NOT NULL, -- 대여 날짜
    retdate DATE NULL, --반납 날짜
    remart VARCHAR2(500) --비고
);

CREATE SEQUENCE memberSeq;
CREATE SEQUENCE genreSeq;
CREATE SEQUENCE videoSeq;
CREATE SEQUENCE rentSeq;

/*
조인, JOIN
-2개(1개) 이상의 테이블의 내용을 한번에 가져와서 1개의 결과셋을 만드는 작업
- 분리되어 있는 2개 이상의 테이블을 1개로 만드는 작업(테이블 합치기)
- 단, 테이블간의 관계를 맺고 있어야만 한다.

조인의 종류(ANSI SQL)
1. 단순 조인, CROSS JOIN
2. 내부 조인, INNER JOIN
3. 외부 조인, OUTER JOIN
4. 셀프 조인, SELF JOIN

*/

-- 1. 단순 조인, CROSS JOIN
SELECT * FROM tblcustomer; --부모, 3명
SELECT * FROM tblsales; --자식, 9건

SELECT * FROM tblcustomer CROSS JOIN tblSales; --ANSI 표현(표준)
SELECT * FROM tblcustomer, tblsales; -- Oracle 표현

/*
2. 내부 조인, INNER JOIN
- 단순 조인에서 유효한 레코드만 취하는 조인
- 부모 테이블의 PK와 자식테이블의 FK가 동일한 레코드만 취하는 조인

SELECT 컬럼리스트 FROM 테이블A INNER JOIN 테이블B ON 테이블A.컬럼명 = 테이블B.컬럼명

SELECT 컬럼리스트 FROM 테이블A 
    INNER JOIN 테이블B 
        ON 테이블A.컬럼명 = 테이블B.컬럼명

*/
--INNER JOIN 의 결과 레코드 수도 미리 예측 가능하다. > 자식 테이블 레코드 수와 동일
-- 구매내역과 그 구매한 손님 정보를 같이 가져오시오.
SELECT * FROM tblcustomer 
    INNER JOIN tblsales 
        ON tblCustomer.seq = tblSales.customerseq;

SELECT * FROM tblsales 
    INNER JOIN tblcustomer 
        ON tblCustomer.seq = tblSales.customerseq;

-- ORA-00918: column ambiguously defined : 컬럼이 모호하게 정의되어잇다
SELECT * FROM tblcustomer
    INNER JOIN tblsales
        --ON seq = customerseq;
        ON tblcustomer.seq = customerseq;

SELECT tblCustomer.name, tblsales.item, tblsales.qty FROM tblcustomer
    INNER JOIN tblsales
        ON tblCustomer.seq = tblSales.customerseq;

SELECT c.name, s.item, s.qty 
    FROM tblcustomer c INNER JOIN tblsales s
        ON c.seq = s.customerseq;

SELECT c.name, c.tel FROM tblcustomer c;
SELECT tblCustomer.*, LENGTH(name) FROM tblcustomer;

SELECT c.*, LENGTH(name) FROM tblcustomer c; --혼자서 앨리야스를 쓰는이유 길이를보고싶은데 *이거 혼자있으면 실행x





-- 데이터 백업 & 복구
-- 1. 스크립트 사용
--      a. create 문
--      b. insert 문 (update + delete)
-- 2. 클라이언트 툴 사용
--      a. 백업 & 복구 기능

-- 2개 테이블 > 합쳐서 > 1개 결과셋 ?? 양쪽에 관련 있는 행들끼리 연결하려고

-- 표준 SQL
SELECT * FROM tblcustomer c
    INNER JOIN tblsales s
        ON c.seq = s.customerseq; -- 부모테이블(PK) = 자식테이블(FK)


-- 오라클
SELECT * FROM tblcustomer c, tblsales s
    WHERE c.seq = s.customerseq;

-- 조인 사용 시 반드시 관계있는 테이블끼리만 묶자 > 반드시 부모 자식 테이블간에만 한다.
SELECT * FROM tblcustomer c
    INNER JOIN tblproject p
        ON c.seq = p.staffseq;

-- 노트(tblSales)를 사간 회원(tblCustomer)의 연락처?
-- 1. 서브쿼리
SELECT customerseq FROM tblsales 
    WHERE item = '노트';

SELECT name, tel FROM tblcustomer 
    WHERE seq = (SELECT customerseq FROM tblsales 
                            WHERE item = '노트');

-- 2. 조인
SELECT c.name, c.tel FROM tblcustomer c
    INNER JOIN tblsales s
        ON c.seq = s.customerseq
            WHERE s.item = '노트';


-- 질의 > 2개 이상의 테이블이 관계되었다. 
-- a. 서브쿼리 : 결과셋이 1개의 테이블로 나올때만 추천
-- b. 조인 : 결과셋이 2개이상의 테이블로부터 나올때만 추천



-- 노트(tblSales)를 사간 회원의 연락처(tblCustomer) + 몇개(tblSales)?
-- 1. 서브쿼리
SELECT customerseq FROM tblsales 
    WHERE item = '노트';

SELECT name, tel, qty FROM tblcustomer 
    WHERE seq = (SELECT customerseq FROM tblsales 
                            WHERE item = '노트');

SELECT name, tel, (SELECT qty FROM tblsales WHERE customerseq = tblcustomer.seq AND item = '노트') AS "qty" FROM tblcustomer 
    WHERE seq = (SELECT customerseq FROM tblsales 
                            WHERE item = '노트');


-- 2. 조인
SELECT c.name, c.tel, s.qty FROM tblcustomer c
    INNER JOIN tblsales s
        ON c.seq = s.customerseq
            WHERE s.item = '노트';




SELECT * FROM tblcustomer; -- 3명
SELECT * FROM tblsales; -- 9건

--회원 1명 가입
INSERT INTO tblcustomer VALUES (4, '호호호', '010-2929-3838', '서울시');

--평범한 내부조인
--** '호호호' 가 없다. 
SELECT * FROM tblcustomer c
    INNER JOIN tblsales s
         ON c.seq = s.customerseq;

-- 쇼핑몰의 구매 내역과 상관없이 모든 회원을 가져와라~~ + 단, 구매이력이 있다면 그것도 같이
/*
3. 외부 조인, OUTER JOIN
*/

-- LEFT 와 RIGHT 는 왼쪽테이블 ? 오른쪽테이블 ? 을 선택할지 결정하는 문법 지금LEFT는 TBLCUSTOMER 부모테이블을 가르키고 잇다.
-- 보통 거의 LEFT 만쓴다. 왜냐? 부모가 없는 자식은 없지만 자식이없는 부모는 있을수 있기때문이다. RIGHT 를 쓸 경우는 거의없다.
SELECT * FROM tblcustomer c
    LEFT OUTER JOIN tblsales s
        ON c.seq = s.customerseq;

SELECT * FROM tblcustomer c
    INNER JOIN tblsales s
        ON c.seq = s.customerseq;

-- 오라클
SELECT * FROM tblcustomer c, tblsales s
    WHERE c.seq = s.customerseq; --이너 조인
    
SELECT * FROM tblcustomer c, tblsales s
    WHERE c.seq = s.customerseq(+); --아우터 조인
        
    
    
    

SELECT * FROM tblmen;
SELECT * FROM tblwomen;

SELECT m.name, w.name FROM tblmen m
    LEFT OUTER JOIN tblwomen w
        ON m.name = w.couple;
        
SELECT m.name, w.name FROM tblmen m
    RIGHT OUTER JOIN tblwomen w
        ON m.couple = w.name;

/*
4. 셀프 조인, SELF JOIN
- 1개의 테이블을 사용해 조인
- 자기가 자기를 참조하는 경우(빈도가 낮음) ex) 재귀 메소드

*/

-- 직원 테이블
CREATE TABLE tblSelf
(
    seq NUMBER PRIMARY KEY, -- 직원번호(PK)
    name VARCHAR2(30) NOT NULL, --직원명
    department VARCHAR2(30) NULL, --부서명
    super NUMBER NULL REFERENCES tblSelf(seq) --직속상사번호(FK)
    
);

INSERT INTO tblself VALUES (1, '홍사장', NULL, NULL);
INSERT INTO tblself VALUES (2, '김부장', '영업부', 1);
INSERT INTO tblself VALUES (3, '이과장', '영업부', 2);
INSERT INTO tblself VALUES (4, '정대리', '영업부', 3);
INSERT INTO tblself VALUES (5, '최사원', '영업부', 4);

INSERT INTO tblself VALUES (6, '박부장', '홍보부', 1);
INSERT INTO tblself VALUES (7, '하과장', '홍보부', 6);

SELECT * FROM tblself;

-- 직원 명단(tblSelf) + 상사 정보(tblSelf) 같이 가져오시오.
-- INNER JOIN
SELECT s2.name AS 직원명, s2.department AS 부서, s1.name AS 상사명  FROM tblself s1 --상사 테이블
    INNER JOIN tblself s2 --직원 테이블
        ON s1.seq = s2.super;

SELECT s2.name AS 직원명, s2.department AS 부서, s1.name AS 상사명  FROM tblself s1 --상사 테이블
    RIGHT OUTER JOIN tblself s2 --직원 테이블
        ON s1.seq = s2.super;

SELECT e2.first_name AS 직원, e1.first_name AS 매니저 FROM employees e1 -- 부모PK
    INNER JOIN employees e2 -- 자식FK
        ON e1.employee_id = e2.manager_id
            ORDER BY 매니저 ASC;


-- 테이블 1개 
-- 비디오가 뭐뭐?
SELECT * FROM tblvideo;

-- 테이블 2개
-- 모든 비디오 정보(tblvideo) + 대여 가격 + 대여 기간(tblgenre)?
SELECT * FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre;

-- 테이블 3개
SELECT * FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre -- A 관계 선
            INNER JOIN tblrent r
                ON r.video = v.seq; -- B 관계선
                
-- 테이블 4개
SELECT * FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre -- A 관계 선
            INNER JOIN tblrent r
                ON r.video = v.seq -- B 관계선
                    INNER JOIN tblMember m
                        ON m.seq = r.member; -- C 관계선

--OUTER JOIN(회원)
--대여기록의 유무와 상관없이 모든 회원을 보고 싶다. (대여기록이 있으면 같이 열람)
SELECT * FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre -- A 관계 선
            INNER JOIN tblrent r
                ON r.video = v.seq -- B 관계선
                    RIGHT OUTER JOIN tblMember m
                        ON m.seq = r.member; -- C 관계선

--** 해당 쿼리가 뭘 질문하는지 문장을 만들기(****)


--OUTER JOIN(회원)
--대여기록의 유무와 상관없이 모든 비디오 정보 열람 (대여기록이 있으면 같이 열람)
SELECT * FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre -- A 관계 선
            LEFT OUTER JOIN tblrent r
                ON r.video = v.seq -- B 관계선
                    LEFT OUTER JOIN tblMember m
                        ON m.seq = r.member; -- C 관계선

-- 점포 주인 : 대여 기록 출력 > 회원명, 비디오 제목, 언제, 반납 유무('반납 완료' or '미반납')
SELECT   
    m.name AS "회원명",
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

/*

-- 서브쿼리 + 조인

01. tblInsa. 80년대생 남자 직원들의 평균 월급(basicpay)보다 더 많이 받는 70년대생 
    여직원들을 가져오시오.
02. tblStaff, tblProject. 현재 재직중인 모든 직원의 이름, 주소, 월급, 담당 프로젝트명을 가져오시오.
03. tblVideo, tblRent, tblMember. '뽀뽀할까요'라는 비디오를 빌려간 회원의 이름은?
04. tblInsa. 평균 이상의 월급을 받는 직원들을 가져오시오.
05. tblStaff, tblProject. '노조 협상' 프로젝트를 담당한 직원의 월급은?
06. tblMember. 가장 나이가 많은 회원의 주소?(byear)
07. tblVideo, tblRent, tblMember. '털미네이터'를 빌려갔던 회원들의 이름은?
08. tblStaff, tblProject. '서울시'에 사는 직원을 제외한 나머지 직원들의
    이름, 월급, 담당 프로젝트명을 가져오시오.
09. tblCustomer, tblSales. 상품을 2개(qty) 이상 구매한 회원의 연락처, 이름
    , 구매상품명, 수량을 가져오시오.
10. tblVideo, tblGenre. 모든 비디오의 제목과 보유수량, 대여 가격을 가져오시오.
11. tblGenre, tblVideo, tblRent, tblMember. 2007년 2월에 대여된 구매내역을 가져오시오.
    회원명, 비디오명, 언제, 대여가격
12. tblGenre, tblVideo, tblRent, tblMember. 현재 반납을 안한 회원명과 비디오명, 대여날짜를 가져오시오.

*/

-- 01.
SELECT ROUND(AVG(basicpay)) AS "80년대생 남자평균월급" FROM tblinsa WHERE SUBSTR(ssn, 1, 1) = '9' AND SUBSTR(ssn, 8, 1) = '1';


SELECT *
FROM tblinsa WHERE basicpay > (SELECT AVG(basicpay) FROM tblinsa WHERE SUBSTR(ssn, 1, 1) = '9' AND SUBSTR(ssn, 8, 1) = '1') 
    AND SUBSTR(ssn, 1, 1) = '8' AND SUBSTR(ssn, 8, 1) = '2';

--02. tblStaff, tblProject. 현재 재직중인 모든 직원의 이름, 주소, 월급, 담당 프로젝트명을 가져오시오.

SELECT s.name, s.address, s.salary, p.projectname FROM tblstaff s
    LEFT OUTER JOIN tblproject p
        ON s.seq = p.staffseq;
        
SELECT * FROM tblstaff;

--03. tblVideo, tblRent, tblMember. '뽀뽀할까요'라는 비디오를 빌려간 회원의 이름은?
--서브쿼리로
SELECT seq FROM tblvideo WHERE name = '뽀뽀할까요'; --1번
SELECT member FROM tblrent WHERE video = (SELECT seq FROM tblvideo WHERE name = '뽀뽀할까요'); --2번
SELECT name 
FROM tblmember 
    WHERE seq = (SELECT member FROM tblrent 
                    WHERE video = (SELECT seq FROM tblvideo 
                                    WHERE name = '뽀뽀할까요')); --마무리
                                    
--조인으로
SELECT 
    m.name AS "회원명", 
    v.name AS "비디오명" 
FROM tblvideo v
    INNER JOIN tblrent r
        ON v.seq = r.video
            INNER JOIN tblmember m
                ON m.seq = r.member
                    WHERE v.name = '뽀뽀할까요';
    
--04. tblInsa. 평균 이상의 월급을 받는 직원들을 가져오시오.
SELECT ROUND(AVG(basicpay)) FROM tblinsa;

SELECT * FROM tblinsa 
    WHERE basicpay >= (SELECT AVG(basicpay) FROM tblinsa);

--05. tblStaff, tblProject. '노조 협상' 프로젝트를 담당한 직원의 월급은?
-- 서브쿼리로
SELECT name, salary FROM tblstaff
    WHERE seq = (SELECT staffseq FROM tblproject WHERE tblproject.projectname = '노조 협상');

SELECT name, salary FROM tblstaff s
    INNER JOIN tblproject p
        ON s.seq = p.staffseq
            WHERE p.projectname = '노조 협상';
    
--06. tblMember. 가장 나이가 많은 회원의 주소?(byear)
SELECT name, address FROM tblmember
    WHERE byear = (SELECT MIN(byear) FROM tblmember);




--07. tblVideo, tblRent, tblMember. '털미네이터'를 빌려갔던 회원들의 이름은?
SELECT m.name, v.name FROM tblvideo v
    INNER JOIN tblrent r
        ON v.seq = r.video
            INNER JOIN tblmember m
                ON m.seq = r.member
                    WHERE v.name = '털미네이터';

--08. tblStaff, tblProject. '서울시'에 사는 직원을 제외한 나머지 직원들의
--    이름, 월급, 담당 프로젝트명을 가져오시오.
SELECT s.name, s.salary, p.projectname  FROM tblstaff s
    INNER JOIN tblproject p
        ON s.seq = p.staffseq
            WHERE s.address <> '서울시';
            
--09. tblCustomer, tblSales. 상품을 2개(qty) 이상 구매한 회원의 연락처, 이름
--    , 구매상품명, 수량을 가져오시오.

SELECT 
    c.name AS "이름", 
    c.tel AS "연락처", 
    s.item AS "구매상품명", 
    s.qty AS "수량"  
FROM tblcustomer c
    INNER JOIN tblsales s
        ON c.seq = s.customerseq
            WHERE s.qty >= 2;

--10. tblVideo, tblGenre. 모든 비디오의 제목과 보유수량, 대여 가격을 가져오시오. 
--10. tblVideo, tblGenre 모든 비디오의 제목과 보유수량, 현재 수량, 대여 가격을 가져오시오.
SELECT 
    v.name AS "제목", 
    v.qty AS "보유수량", 
    g.price AS "대여가격" 
FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre;

SELECT
    v.name AS "제목", 
    v.qty AS "보유수량", 
    v.qty - (SELECT COUNT(*) FROM tblRent WHERE video = v.seq AND retdate IS NULL) AS "현재수량",
    g.price AS "대여가격" 
FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre;

            
            
--11. tblGenre, tblVideo, tblRent, tblMember. 2007년 2월에 대여된 구매내역을 가져오시오.
--    회원명, 비디오명, 언제, 대여가격
SELECT 
    m.name AS "회원명",
    v.name AS "비디오명",
    r.rentdate AS "언제",
    g.price AS "대여가격"
FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre
            INNER JOIN tblrent r
                ON r.video = v.seq
                    INNER JOIN tblmember m
                        ON m.seq = r.member
                            WHERE TO_CHAR(r.rentdate, 'yyyy-mm') = '2007-02';

--12. tblGenre, tblVideo, tblRent, tblMember. 현재 반납을 안한 회원명과 비디오명, 대여날짜를 가져오시오.
SELECT 
    m.name AS "회원명",
    v.name AS "비디오명",
    r.rentdate AS "대여날짜"
FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre
            INNER JOIN tblrent r
                ON v.seq = r.video
                    INNER JOIN tblmember m
                        ON m.seq = r.member
                            WHERE r.retdate IS NULL;





