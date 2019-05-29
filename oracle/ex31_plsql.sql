--ex31_plsql.sql

/*

PL/SQL
- Procedural Language Extensions to SQL > ANSI SQL + 프로그래밍 기능
- ANSI SQL : 비 절차성 언어(명령어들간의 순서가 없음. 연속적이지 않다. 독립적인 문장 단위 실행
- ANSI SQL + 절차적 기능 추가 -> 오라클(PL/SQL)
- 추가된 부분 : 변수, 제어문, 함수 등..
- 오라클 전용 SQL

ANSI SQL 자료형 = PL/SQL 자료형 : 거의 유사함
ANSI SQL 문장 종결자 선택
PL/SQL 문장 종결자 필수

SQL 처리 과정 & 순서

1. ANSI SQL 
    - 클라이언트 구문 작성(SELECT 문) > 실행(Ctrl + Enter) > 네트워크를 통해 SQL(문자열)이
        DBMS에게 전달 > DBMS가 전달 받음 > 구문 분석(파싱) > 컴파일(인터프리터) > 기계어(명령어)
            > 실제 실행(CPU) > 결과 처리(ResultSet) > 클라이언트에게 반환
    - 동일한 쿼리를 다시 실행 > 위의 과정을 처음부터 끝까지 동일하게 실행(반복)

2. PL/SQL
    - 클라이언트 구문 작성(SELECT 문) > 실행(Ctrl + Enter) > 네트워크를 통해 SQL(문자열)이
        DBMS에게 전달 > DBMS가 전달 받음 > 구문 분석(파싱) > 컴파일(인터프리터) >
        > 컴파일 결과물 서버에 저장 > 기계어(명령어) > 실제 실행(CPU) > 결과 처리(ResultSet) > 클라이언트에게 반환
        - 동일한 쿼리를 다시 실행 > PL/SQL 의 이름을 전송
        
        
프로시저, Procedure
- 메소드, 함수, 서브루틴 등..
- 특정 목적을 가지고 모인 순서대로 실행하는 명령어의 집합
- SQL의 집합

1. 익명 프로시저
- 이름 없음
- 재사용을 목적으로 하지 않는다. > 1회용
- 개발용(테스트용)
- 동작 방식이 ANSI-SQL과 거의 동일하다.

2. 실명 프로시저
- 이름 있음
- 재사용이 가능하다. > 여러번 반복해서 사용한다.
- 실무용(운영할때)
- 동작 방식이 PL/SQL 방식으로 돌아간다. (재사용 할수록 비용 절감)

        
*/

SET SERVEROUTPUT ON; --화면에 보여주는 상태를 켜주는 제어문 (접속할때마다 해야되는 번거로움이 존재)

BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello'); --System.out.println("Hello")
END;

/*

PL/SQL 프로시저 블럭
1. 4개의 키워드(블럭)로 구성
    a. DECLARE -- 필요에의해 생략가능
    b. BEGIN -- 필수
    c. EXCEPTION -- 필요에의해 생략가능
    d. END  -- 필수
    
2. DECLARE
- 선언부, DECLARE BLOCK, DECLARE SECTION
- 프로그램에서 사용하는 변수, 객체 등을 선언하는 영역
- 생략 가능(변수가 필요없을때)

3. BEGIN
- BEGIN ~ END
- 실행부, 구현부, executable section(block)
- 프로그램에서 구현할 실제 SQL을 작성하는 영역
- 생략 불가능

4. EXCEPTION
- 예외 처리부, EXCEPTION SECTION(BLOCK)
- CATCH 절 역할
- 예외 처리 코드를 작성하는 영역
- 생략 가능

5. END;
- 블럭의 종료
- 생략 불가능

6. PL/SQL 블럭 = 선언부 + 구현부 + 예외처리부

자바  {  { }  } 블럭이 있는데
오라클 BEGIN           를 블럭처럼 사용
                BEGIN
                
                END
        END

자료형 & 변수

자료형
- 표준 SQL과 거의 동일

변수 선언하기
- 변수명 자료형 [NOT NULL][DEFAULT 값];
- 표준 SQL 컬럼 정의와 유사한 문법 제공
- 변수의 역할 : 질의(SELECT)의 결과를 저장 OR 인자값을 저장

연산자
- 표준 SQL과 동일

표준 SQL 대입 연산자
- 컬럼명 = 값; -- UPDATE TBLINSA SET BUSEO = '영업부';
- 용도 : 컬럼값 대입

PL/SQL 대입 연산자
- 변수 := 값;
- 용도 : 변수값 대입


*/

DECLARE
    num NUMBER; --NUMBER : PL/SQL 자료형
    name VARCHAR2(30);
    today DATE;
    
BEGIN
    num := 10;
    DBMS_OUTPUT.put_line(num);
    
    name := '홍길동';
    DBMS_OUTPUT.PUT_LINE(name);
    
    today := SYSDATE;
    DBMS_OUTPUT.PUT_LINE(today);
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(today, 'yyyy-mm-dd'));
    
    -- ORA-06502: PL/SQL: numeric or value error: character string buffer too small : 길이가 너무길다고한다.
    -- name := '가나다라마바사아자차카타파하';
    DBMS_OUTPUT.PUT_LINE(name);
    
END;

DECLARE
    num1 NUMBER;
    num2 NUMBER NOT NULL := 10;
    -- 변수선언과 동시에 초기화를 해야한다.
    num3 NUMBER DEFAULT 100; -- 변수 초기화 용도로 잘씀
    
    num4 NUMBER NOT NULL DEFAULT 300; -- num2 보다 이표현으로 초기화를 한다.    

BEGIN
    --변수를 초기화 하지 않은 상태에서 호출 > 사용가능(null)
    DBMS_OUTPUT.PUT_LINE('num1 : ' || num1);
    
    --not null 선언 변수는 사용 유무와 상관없이 반드시 값을 가져야 한다.
    --num2 := 10;
    DBMS_OUTPUT.PUT_LINE(num2);
    DBMS_OUTPUT.PUT_LINE(num3);
    
    num3 := 200;
    DBMS_OUTPUT.PUT_LINE(num3);
    
    DBMS_OUTPUT.PUT_LINE(num4);
    
END;

-- 테이블에서 조회한 데이터를 변수에 담기
DECLARE

    vbuseo VARCHAR2(15);

BEGIN

    --vbuseo := (SELECT buseo FROM tblinsa WHERE name = '홍길동');
    
    --SELECT 의 결과를 변수에 넣는 방법 > INTO
    
    SELECT buseo INTO vbuseo FROM tblinsa WHERE name = '홍길동';
    DBMS_OUTPUT.PUT_LINE(vbuseo);
    
END;

DECLARE
    vcnt NUMBER;
    
BEGIN
    
    SELECT COUNT(*) INTO vcnt FROM tblinsa WHERE buseo = '기획부';
    
    DBMS_OUTPUT.PUT_LINE(vcnt);
    
END; 

DECLARE
    vbuseo VARCHAR2(15);
    vname VARCHAR2(15);
    
BEGIN
    SELECT buseo INTO vbuseo FROM tblinsa WHERE name = '김영길';
    SELECT name INTO vname FROM tblinsa WHERE buseo = vbuseo AND jikwi = '부장';
    
    DBMS_OUTPUT.PUT_LINE(vname);
END;



DECLARE

BEGIN
    SELECT name FROM tblinsa WHERE num = 1001;
    
END;


DECLARE
    vcnt VARCHAR2(50); --형변환이 가능한 상황에서는 적당한 암시적 형변환이 발생
BEGIN
    SELECT COUNT(*) INTO vcnt FROM tblinsa;
    DBMS_OUTPUT.PUT_LINE(vcnt);
END;

DECLARE
    vbuseo VARCHAR2(100); --원래 buseo 컬럼의 길이가 생각이 안남;; > 적당히 100으로 잡음
BEGIN
    -- '기획부' 9바이트 > vbuseo 100바이트 변수 //문제없음
    -- '기획부' 9바이트 > vbuseo 5바이트 변수 //에러발생
    
    SELECT buseo INTO vbuseo FROM tblinsa WHERE name = '홍길동';
    DBMS_OUTPUT.PUT_LINE(vbuseo);
END;


DECLARE
    vname VARCHAR2(15);
BEGIN
    SELECT name INTO vname FROM tblinsa; --결과셋의 레코드가 2개이상일때 에러 발생
    DBMS_OUTPUT.PUT_LINE(vname);
END;




DECLARE
    --변수??
BEGIN
    SELECT * FROM tblinsa WHERE name = '홍길동';
END;

--프로시저(= 메소드)
--반복해서 사용 쿼리 or 의미있는 쿼리 > 집합
--ANSI-SQL 에는 없었던 절차가 생겼음 > 쿼리의 실행 순서가 생김

SET SERVEROUTPUT ON;

DECLARE
    vcouple VARCHAR2(30);
    vheight NUMBER;
BEGIN
    
    SELECT couple INTO vcouple FROM tblmen WHERE name = '홍길동';
    DBMS_OUTPUT.PUT_LINE(vcouple);
    
    --질의 결과를 다른 질의에서 사용(PL/SQL 변수의 목적)
    SELECT height INTO vheight FROM tblwomen WHERE name = vcouple;
    DBMS_OUTPUT.PUT_LINE(vheight);
    
END;

-- 위의 커리
-- 질의의 결과가 단일행 + 단일컬럼이어야 한다. (= 원자값)
-- 단일행 + 단일컬럼 질의
--      a. PK 조건(유일한 행) + 단일컬럼(SELECT 절) = 원자값 반환
--      b. 집계 함수 결과
-- 반환되는 컬럼의 개수를 여러개 받을 경우 + 행의 개수는 1개
-- N개의 컬럼 => N개의 변수 // 개수일치!! 필수

DECLARE
    vname VARCHAR2(20);
    vbuseo VARCHAR2(50);
    vjikwi VARCHAR2(50);
    vbasicpay NUMBER;
    vcnt NUMBER;
BEGIN

    SELECT 
        name, buseo, jikwi, basicpay, (SELECT COUNT(*) FROM tblinsa WHERE buseo = i.buseo) 
        INTO 
        vname,vbuseo,vjikwi,vbasicpay, vcnt 
    FROM tblinsa i WHERE name = '홍길동';
    
    DBMS_OUTPUT.PUT_LINE(vname);
    DBMS_OUTPUT.PUT_LINE(vbuseo);
    DBMS_OUTPUT.PUT_LINE(vjikwi);
    DBMS_OUTPUT.PUT_LINE(vbasicpay);
    DBMS_OUTPUT.PUT_LINE(vcnt);
END;


/*
참조형
- 원본(컬럼)의 자료형을 오라클이 직접 참조해서 변수의 자료형으로 사용한다.
- 개발자가 원본(컬럼)의 자료형을 몰라도 된다.
- 유지 보수 유리

1. %type
- 대상 컬럼의 자료형과 길이를 참조

2. %rowtype
-대상 테이블의 레코드를 참조(모든 컬럼)
-%type 의 집합


*/

DECLARE
    --vname VARCHAR2(??); 잘 생각이 안남 몇바이트햇는지
    vname tblinsa.name%type;
    vbuseo tblinsa.buseo%type;
    vbasicpay tblinsa.basicpay%type;
    
BEGIN
    SELECT 
        name, buseo, basicpay
        INTO
        vname, vbuseo, vbasicpay
    FROM tblinsa
        WHERE (basicpay + sudang) = (SELECT min(basicpay + sudang) FROM tblinsa);
        
    DBMS_OUTPUT.PUT_LINE(vname);
    DBMS_OUTPUT.PUT_LINE(vbuseo);
    DBMS_OUTPUT.PUT_LINE(vbasicpay);
END;

-- tblinsa 직원 중 일부에게 보너스 지급. 지급 후 지급 내역 보관
CREATE TABLE tblBonus
(
    seq NUMBER PRIMARY KEY, --일련번호 (PK)
    insaseq NUMBER REFERENCES tblInsa(num) NOT NULL, --직원 번호(FK)
    bonus NUMBER NOT NULL
);

CREATE SEQUENCE bonuse_seq;

DECLARE
    --vnum NUMBER;
    --vsudang NUMBER;
    vnum tblinsa.num%type;
    vsudang tblinsa.sudang%type;
BEGIN
    
    --1. 보너스 지급할 특정 직원 검색 : SELECT
    SELECT 
        num, sudang 
        INTO
        vnum, vsudang
    FROM tblinsa
        WHERE city = '서울' AND jikwi = '부장' AND TO_CHAR(ibsadate, 'yyyy') = '2005';
    --2. 직원 수당 * 3 -> 보너스로 지급 : INSERT
    INSERT INTO tblbonus (seq, insaseq, bonus) VALUES (bonuse_seq.nextval, vnum, vsudang * 3);
    
    DBMS_OUTPUT.PUT_LINE('지급 완료');    
    
END;

SELECT * FROM tblbonus;

CREATE VIEW vwBonus
AS
SELECT i.name, i.buseo, i.jikwi, i.sudang, b.bonus FROM tblbonus b
    INNER JOIN tblinsa i
        ON i.num = b.insaseq
            WHERE b.seq = 1;

--할일들 > 가장 오랫동안 하지 않은 일 > 포기 > 삭제
SELECT * FROM tbltodo;

SELECT * FROM tbltodo
    WHERE completedate IS NULL;

--가장 오래된 일
--1. 서브쿼리
SELECT * FROM tbltodo
    WHERE adddate =
(SELECT MIN(adddate) FROM tbltodo
    WHERE completedate IS NULL);

--2. rownum
SELECT a.* FROM  
(SELECT * FROM tbltodo
    WHERE completedate IS NULL ORDER BY adddate ASC) a
        WHERE ROWNUM = 1;

DELETE FROM tbltodo WHERE seq = 6; --좀 있다가 실행

commit;

DECLARE
    vseq tbltodo.seq%type;
    vtitle tbltodo.title%type;
BEGIN
    SELECT seq, title INTO vseq, vtitle FROM tbltodo
        WHERE adddate =
    (SELECT MIN(adddate) FROM tbltodo
        WHERE completedate IS NULL);
        
   DELETE FROM tbltodo WHERE seq = vseq;
   DBMS_OUTPUT.PUT_LINE(vtitle || '- 삭제완료');
        
END;

SELECT * FROM tbltodo;

ROLLBACK;



--PL/SQL 프로시저 구성 블럭
--프로시저 변수 생성
--SELECT 결과 > 단일값 > 변수 대입(INTO)
--SELECT 결과 > 단일레코드 + 다중컬럼값 > 변수 대입(INTO)
--변수값을 여러 SELECT, INSERT, DELETE문에 사용하기
--참조형 변수(변수명 테이블명.컬럼%type)

DECLARE
    --참조형 변수 생성 + 컬럼 개수가 많을 경우
    --vnum tblinsa.num%type;
    --vname tblinsa.name%type;
    --vssn tblinsa.ssn%type;
    --...
    --7개생성
    
    vrow tblinsa%rowtype; --행 전체를 담을 수 있는 변수(모든 컬럼)
    
BEGIN
    --SELECT num, name, ssn, city, tel, buseo, jikwi INTO vrow FROM tblinsa
    --    WHERE num = '1001';
    
    --SELECT * INTO vrow FROM tblinsa
     --   WHERE num = '1001';    
    
    SELECT name, buseo INTO vrow.name, vrow.buseo FROM tblinsa
        WHERE num = '1001';
        
    --DBMS_OUTPUT.PUT_LINE(vrow);
    --DBMS_OUTPUT.PUT_LINE(vrow.요소명);
    --DBMS_OUTPUT.PUT_LINE(vrow.컬럼명);
    --DBMS_OUTPUT.PUT_LINE(vrow.num);
    DBMS_OUTPUT.PUT_LINE(vrow.name);
    DBMS_OUTPUT.PUT_LINE(vrow.buseo);
    --DBMS_OUTPUT.PUT_LINE(vrow.jikwi);
    
END;


DECLARE
    vrow tblinsa%rowtype; --레코드 참조 변수
    vnum tblinsa.num%type; --컬럼 참조 변수
BEGIN
    
    SELECT num INTO vnum FROM tblInsa
        WHERE name = '유관순'; --1011
    
    SELECT * INTO vrow FROM tblinsa 
        WHERE buseo = (SELECT buseo FROM tblinsa WHERE num = vnum) AND jikwi = '부장' AND ROWNUM = 1;
    
    DBMS_OUTPUT.PUT_LINE(vrow.name);
    DBMS_OUTPUT.PUT_LINE(vrow.jikwi);
    DBMS_OUTPUT.PUT_LINE(vrow.buseo);
    DBMS_OUTPUT.PUT_LINE(vrow.tel);
END;

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(100);
END;


DECLARE
    vnum NUMBER;
BEGIN
    
    vnum := 0;
    
    IF vnum > 0 THEN --{
        DBMS_OUTPUT.PUT_LINE('양수');
    END IF; --}
    
    IF vnum > 0 THEN
        DBMS_OUTPUT.PUT_LINE('양수');
    ELSE
        DBMS_OUTPUT.PUT_LINE('음수');
    END IF;
    
    IF vnum > 0 THEN 
        DBMS_OUTPUT.PUT_LINE('양수');
    ELSIF vnum < 0 THEN
        DBMS_OUTPUT.PUT_LINE('음수');
    ELSE
        DBMS_OUTPUT.PUT_LINE('0');
    END IF;
    
    
END;




-- 남녀 커플의 나이의 합이 가장 많은 커플?? => 남자가연상? 여자가연상?
SELECT * FROM tblmen;
SELECT * FROM tblwomen;

--ANSI-SQL
SELECT 
    CASE
        WHEN m.age > w.age THEN '남자연상'
        WHEN w.age > m.age THEN '여자연상'
        ELSE '동갑내기'
    END AS "연상확인"
FROM tblmen m
    INNER JOIN tblwomen w
        ON m.couple = w.name
            WHERE m.age + w.age =
(SELECT MAX(m.age + w.age) FROM tblmen m
    INNER JOIN tblwomen w
        ON m.couple = w.name);


DECLARE
    mage NUMBER; --tblmen.age%type
    wage tblWomen.age%type;

BEGIN
    SELECT 
        m.age, w.age INTO mage, wage
    FROM tblmen m
        INNER JOIN tblwomen w
            ON m.couple = w.name
                WHERE m.age + w.age =
                    (SELECT MAX(m.age + w.age) FROM tblmen m
                        INNER JOIN tblwomen w
                            ON m.couple = w.name);

    DBMS_OUTPUT.PUT_LINE(mage);
    DBMS_OUTPUT.PUT_LINE(wage);
    
    IF mage > wage THEN
        DBMS_OUTPUT.PUT_LINE('남자가 연상입니다');
    ELSIF wage > mage THEN
        DBMS_OUTPUT.PUT_LINE('여자가 연상입니다.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('동갑내기입니다.');
    END IF;
        
END;


-- 현재 시각이 홀수초면 유재석의 몸무게 + 1kg 증가, 짝수초면 김숙의 몸무게 +1kg 증가.
BEGIN
    
    IF MOD(TO_CHAR(SYSDATE, 'ss'), 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('짝수' || TO_CHAR(SYSDATE, 'ss'));
        UPDATE tblwomen SET weight = weight + 1 WHERE name = '장도연';
    ELSE
        DBMS_OUTPUT.PUT_LINE('홀수' || TO_CHAR(SYSDATE, 'ss'));
        UPDATE tblmen SET weight = weight + 1 WHERE name = '홍길동';
    END IF;
    
END;

SELECT * FROM tblmen;
SELECT * FROM tblwomen;

SELECT * FROM tblbonus;

-- 특정 직원 > 부장,과장(수당 3배) OR 대리,사원(수당 2배)
DECLARE
    vnum tblinsa.num%type;
    vjikwi tblinsa.jikwi%type;
    vsudang tblinsa.sudang%type;
BEGIN
    vnum := 1055; --1055번 직원
    
    SELECT jikwi, sudang INTO vjikwi, vsudang FROM tblinsa WHERE num = vnum;
    
    IF vjikwi IN ('과장', '부장') THEN 
        DBMS_OUTPUT.PUT_LINE(vjikwi || '3배 지급');
    ELSE
        DBMS_OUTPUT.PUT_LINE(vjikwi || '2배 지급');
    END IF;
END;


/*

반복문
1. LOOP
- 조건 반복

2. FOR LOOP
- 지정 횟수 반복(자바 FOR문 유사)

3. WHILE LOOP
- 조건 반복(자바 WHILE문 유사)


*/

--LOOP

BEGIN
    
    LOOP
        DBMS_OUTPUT.PUT_LINE('현재 시각 : ' || TO_CHAR(SYSDATE, 'hh24:mi:ss'));
        --EXIT; -- BREAK
        --EXIT WHEN 조건;
        EXIT WHEN MOD(TO_CHAR(SYSDATE, 'ss'), 2) = 1;
    END LOOP;

END;


--사원 번호 홀수인 직원에게만 보너스 지급. 1001 ~ 1060
DECLARE
    vloop NUMBER;
    
BEGIN
    vloop := 1001;
    
    LOOP
        DBMS_OUTPUT.PUT_LINE(vloop);
        
        IF MOD(vloop, 2) = 1 THEN
            INSERT INTO tblbonus (seq, insaseq, bonus)
                VALUES (bonus_seq.NEXTVAL, vloop, 100000);
        END IF;
        
        vloop := vloop + 1;
        EXIT WHEN vloop > 1060;
    END LOOP;
    

    
END;

SELECT * FROM tblbonus;

-- 2. FOR LOOP
-- : 문법상에서 루프 변수를 제공한다.

BEGIN
    -- i : 루프변수(따로 선언부를 가지지 않는다. 빌트인 변수)
    -- 변수 in 집합
    -- 1 집합의 초기값
    -- .. 순차적 증가값
    -- 10 집합의 최대값
    
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        
    END LOOP;

    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        
    END LOOP;    

END;


--3. WHILE LOOP
DECLARE
    
    vloop NUMBER;
    
BEGIN
    vloop := 1;
    
    WHILE vloop <= 10 LOOP --기본 루프의 exit when절과 동일
        DBMS_OUTPUT.PUT_LINE(vloop);
        vloop := vloop + 1;
    END LOOP;
    
    
END;

-- 구구단 테이블
CREATE TABLE tblgugudan
(

    dan NUMBER NOT NULL, --2,2,2..
    num NUMBER NOT NULL, --1,2,3..
    result NUMBER NOT NULL, --2,4,6..
    -- 복합키는 컬럼 수준의 정의를 못한다. 테이블 수준의 정의만 가능하다.
    CONSTRAINT tblgugudan_dan_num_pk PRIMARY KEY(dan, num) -- 복합키 만드는방법
    
);

INSERT INTO tblgugudan VALUES (2,1,2);
INSERT INTO tblgugudan VALUES (2,2,4);
INSERT INTO tblgugudan VALUES (2,3,6);

SELECT * FROM tblgugudan;

ROLLBACK;


DECLARE
    
--FOR 로 구구단    
BEGIN
    
    FOR dan IN 2..9 LOOP
        FOR num IN 1..9 LOOP
            INSERT INTO tblgugudan VALUES (dan,num,dan*num);
            
        END LOOP;    
    END LOOP;

END;

--WHILE 로 구구단

DECLARE
    vdan NUMBER;
    vnum NUMBER;
BEGIN
    
    vdan := 2;
    
    WHILE vdan <= 19 LOOP
        vnum := 1;
        WHILE vnum <= 19 LOOP
            INSERT INTO tblgugudan VALUES (vdan,vnum,vdan*vnum);
            vnum := vnum + 1;
        END LOOP;
        
        vdan := vdan+1;
    END LOOP;

END;


/*

SELECT문을 사용해서 데이터 가져오기 + PL/SQL 변수에 넣기
1. SELECT INTO 사용
    - 결과셋의 레코드가 1개일때
    - PK 조건, 집계함수 사용 등
    
2. CURSOR 사용
    - 결과셋의 레코드가 1개 이상일 때 사용 가능

커서 구문

DECLARE
    변수 선언;
    커서 선언;
BEGIN
    커서 열기;
    LOOP
        커서를 사용해서 각각의 레코드를 접근(읽기)
    END LOOP;
    커서 닫기;

END;


*/

--tblInsa 60명 이름
DECLARE
    vname tblInsa.name%TYPE; -- 한사람의 이름을 담을 변수
    CURSOR vcursor 
    IS 
    SELECT name FROM tblInsa ORDER BY name ASC; --선언O, 실행X

BEGIN
    
    OPEN vcursor; --커서 열기(select문 실행)
    
    LOOP
        
        FETCH vcursor INTO vname;
        --커서 내장 속성
        EXIT WHEN vcursor%NOTFOUND; -- 다음 레코드가 존재하면(true), 존재하지 않으면(false) 
        
        DBMS_OUTPUT.PUT_LINE(vname);
        
    END LOOP;
    
    CLOSE vcursor; --커서 닫기(자원 해제)
END;

SET SERVEROUTPUT ON;


DECLARE

    cursor vcursor IS
        SELECT first, last, height, weight FROM tblcomedian;
    vfirst tblComedian.first%type;
    vlast tblComedian.last%type;
    vheight tblComedian.height%type;
    vweight tblComedian.weight%type;
BEGIN
    OPEN vcursor;
    
    LOOP
    
        FETCH vcursor INTO vfirst, vlast, vheight, vweight;
        EXIT WHEN vcursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(vfirst || vlast);
        DBMS_OUTPUT.PUT_LINE(vheight);
        DBMS_OUTPUT.PUT_LINE(vweight);
        
    END LOOP;
    
    CLOSE vcursor;
END;




DECLARE

    cursor vcursor IS
        SELECT * FROM tblcomedian;
    vrow tblcomedian%rowtype; -- 레코드 참조변수
BEGIN
    OPEN vcursor;
    
    LOOP
    
        FETCH vcursor INTO vrow;
        EXIT WHEN vcursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(vrow.first || vrow.last);
        DBMS_OUTPUT.PUT_LINE(vrow.height);
        DBMS_OUTPUT.PUT_LINE(vrow.weight);
        DBMS_OUTPUT.PUT_LINE(vrow.gender);
        
    END LOOP;
    
    CLOSE vcursor;
END;


-- 1. 단일행 + 단일컬럼
-- : 테이블명.변수명%type //컬럼 자료형 참조 > PL/SQL 변수 생성
-- : SELECT INTO 절 // 단일 레코드 반환 + 변수 대입

DECLARE
    vcnt NUMBER;
    vname tblInsa.name%type;
BEGIN
    SELECT COUNT(*) INTO vcnt FROM tblinsa;
    SELECT name INTO vname FROM tblinsa WHERE num = 1001;
    
    DBMS_OUTPUT.PUT_LINE(vcnt);
    DBMS_OUTPUT.PUT_LINE(vname);
END;

SET SERVEROUTPUT ON;
-- 2. 단일행 + 복합컬럼
-- : SELECT INTO 절 // 레코드1개
-- : 테이블명.변수명%type x N개 or 테이블명%rowtype x 1개
DECLARE
    vname tblinsa.name%type;
    vbuseo tblinsa.buseo%type;
    vjikwi tblinsa.jikwi%type;
    vcity tblinsa.city%type;
    vrow tblinsa%rowtype; -- 위의 4개포함 + 6개 추가생성
    vrownum NUMBER;
BEGIN
    SELECT name, jikwi, buseo, city INTO vname, vjikwi, vbuseo, vcity FROM tblinsa WHERE num = 1001;
    DBMS_OUTPUT.PUT_LINE(vname || ', ' || vjikwi || ', ' || vbuseo || ', ' || vcity);
    
    SELECT * INTO vrow FROM tblinsa WHERE num = 1002;
    DBMS_OUTPUT.PUT_LINE(vrow.name || ', ' || vrow.jikwi || ', ' || vrow.buseo || ', ' || vrow.city);
    
    SELECT name, rownum INTO vname, vrownum FROM tblinsa a WHERE num =1003;
    DBMS_OUTPUT.PUT_LINE(vname || ', ' || vrownum);
END;


-- 3. 복합행 + 단일컬럼
-- : cursor + fetch into  // 복합행
DECLARE
    CURSOR vcursor IS SELECT name FROM tblcountry;
    vname tblCountry.name%type;
BEGIN
    
    OPEN vcursor;
    LOOP
        
        FETCH vcursor INTO vname;
        EXIT WHEN vcursor%notfound;
        
        DBMS_OUTPUT.PUT_LINE(vname);
            
    END LOOP;
    CLOSE vcursor;
    
    
    
END;


-- 4. 복합행 + 복합컬럼
DECLARE
    CURSOR vcursor IS SELECT * FROM tblcountry;
    vrow tblCountry%rowtype;
BEGIN
    
    OPEN vcursor;
    LOOP
        
        FETCH vcursor INTO vrow; --select * into vrow 동일한 구문
        EXIT WHEN vcursor%notfound; -- 커서 속성
        
        DBMS_OUTPUT.PUT_LINE(vrow.name || ', ' || vrow.capital);
            
    END LOOP;
    CLOSE vcursor;
    
    
    
END;


/*

cursor 사용법
1. cursor + loop 
    : 커서 객체 생성(declare + select 정의) > 커서 열기(open + select 실행) > 루프
    > 레코드 단위 데이터 접근(fetch) + into 절(변수 대입) > 업무 > 커서 닫기(close)

2. cursor + for loop
    : 커서 처리 단순해짐
    

*/

DECLARE
    CURSOR vcursor IS  
        SELECT * FROM tblinsa;
BEGIN

    --open cursor; 생략
    FOR vrow IN vcursor LOOP
        DBMS_OUTPUT.PUT_LINE(vrow.name);
    
    END LOOP;
    --close cursor; 생략

END;


BEGIN
    FOR vrow IN (SELECT * FROM tblinsa) LOOP
        DBMS_OUTPUT.PUT_LINE(vrow.name || ', ' || vrow.jikwi);
    
    

    END LOOP;
END;


/*
exception
-예외 처리부

*/

DECLARE
    vname NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('시작');
    SELECT name INTO vname FROM tblinsa WHERE num = 1001;
    DBMS_OUTPUT.PUT_LINE('끝');
    
exception
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('예외처리');
    
END;


--예외 발생 기록 (로그 테이블)

CREATE TABLE tblLog
(
    seq NUMBER PRIMARY KEY,
    code VARCHAR2(20) CHECK (code in ('AAA001', 'AAA002', 'BBB001', 'CCC001' )) NOT NULL,
    messege VARCHAR2(100) NULL, -- 상태메시지
    regdate DATE DEFAULT SYSDATE NOT NULL -- 발생 시작
);

CREATE SEQUENCE log_seq;


SELECT * FROM tblcomedian;
DELETE FROM tblcomedian;
ROLLBACK;

DECLARE
    vbonus NUMBER;
    vname tblComedian.first%type;
BEGIN

    --1. 
    SELECT 10000000 / COUNT(*) INTO vbonus FROM tblcomedian;
    DBMS_OUTPUT.PUT_LINE(vbonus);
    
    --2. 
    SELECT first INTO vname FROM tblcomedian;

EXCEPTION
    WHEN ZERO_DIVIDE THEN 
        DBMS_OUTPUT.PUT_LINE('tblComedian 테이블에 레코드가 없습니다.');
        INSERT INTO tblLog 
            VALUES (log_seq.nextval, 'AAA001', 'tblComedian 테이블에 레코드가 없습니다.', DEFAULT);
    
    WHEN too_many_rows THEN
        DBMS_OUTPUT.PUT_LINE('가져온 코메디언이 너무 많습니다.');
        INSERT INTO tblLog 
            VALUES (log_seq.nextval, 'BBB001', '가져온 코메디언이 너무 많습니다.', DEFAULT);
            
    WHEN OTHERS THEN --기타등등
        DBMS_OUTPUT.PUT_LINE('오류발생');
        INSERT INTO tblLog 
            VALUES (log_seq.nextval, 'CCC001', '오류발생', DEFAULT);
END;

SELECT * FROM tbllog;


--PL/SQL 트랜잭션 처리(****) + 예외처리와 같이
SELECT * FROM tblmen; --정형돈
SELECT * FROM tblwomen; --박나래

COMMIT;

DECLARE
    vman VARCHAR2(20);
    vwomen VARCHAR2(20);
BEGIN
    vman := '정형돈';
    vwomen := '박나래';
    
    --1.
    UPDATE tblmen SET couple = vwomen WHERE name = vman;
    
    
    --2.
    UPDATE tblmen SET couple = '가가가가가가가가가가가가가가가' WHERE name = vwomen;    
    

    COMMIT; --**위치 + 역할
    
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('');
            ROLLBACK; --** 위치 + 역할


END;

SELECT * FROM tblmen;


/*

PL/SQL 블록 > 프로시저
1. 익명 프로시저
    - 재사용 불가
    - 매번 동일한 비용 발생(실행할 때마다 컴파일)
2. 실명 프로시저
    - 재사용 가능
    - 첫번째만 비용 발생(컴파일) > 이후 실행 컴파일 과정 생략
    - 저장 프로시저 > Stored Procedure


저장 프로시저 구문


CREATE OR REPLACE PROCEDURE 프로시저명
IS(AS)
    선언부;
BEGIN
    구현부;
EXCEPTION
    예외처리부;
END [프로시저명];


*/

-- 저장 프로시저 정의
CREATE OR REPLACE PROCEDURE procTest
IS -- DECLARE 역할
    vnum NUMBER;
BEGIN
    vnum := 10;
    DBMS_OUTPUT.PUT_LINE(vnum);
    
END procTest;

SET SERVEROUTPUT ON;

/*
저장 프로시저 호출하기
1. PL/SQL 블록내에서 호출하기
- 프로그래밍 방식
- 주로 사용되는 방식
- 프로그램에 적용


2. 스크립트 환경에서 호출하기(ANSI-SQL에서)
- 관리자 운영
    
*/

--1번 방식으로 호출(익명 프로시저에서)
BEGIN
    procTest();
    procHello();
END;

--1번 방식으로 호출(실명 프로시저에서 호출)

CREATE OR REPLACE PROCEDURE procHello
IS

BEGIN
    DBMS_OUTPUT.PUT_LINE('다른 프로시저 호출하기');
    procTest();
    
END procHello;


--2번 방식

EXEC procTest();
EXEC procHello();
EXECUTE procHello;
CALL procTest; -- 오류
CALL procTest();



-- 프로시저 : 인자와 반환값

-- 매개변수가 있는 저장 프로시저
CREATE OR REPLACE PROCEDURE procTest(pnum NUMBER)
IS
    vresult NUMBER;
BEGIN
    
    vresult := pnum * pnum;
    DBMS_OUTPUT.PUT_LINE(vresult);
    
    
END procTest;



CREATE OR REPLACE PROCEDURE procTest
(
    pwidth NUMBER, -- 매개변수는 자료형과 관계없이 길이를 표현할 수 없다.(****)
    pheight NUMBER
)
IS
    varea NUMBER(10);
BEGIN
    
    varea := pwidth * pheight;
    DBMS_OUTPUT.PUT_LINE(varea);
END procTest;


BEGIN
    procTest(100,50);
END;




CREATE OR REPLACE PROCEDURE procTest
(
    pname VARCHAR2,
    pwidth NUMBER DEFAULT 100, 
    pheight NUMBER DEFAULT 50
)
IS
    varea NUMBER(10);
BEGIN
    
    varea := pwidth * pheight;
    DBMS_OUTPUT.PUT_LINE(pname || ' , ' || varea);
END procTest;

BEGIN
    procTest('사각형A',300,150);
    procTest('사각형B',70);
    -- procTest('사각형C',DEFAULT,70);
    procTest('사각형C');
   
END;



SET SERVEROUTPUT ON;
-- 실명 프로시저 > 저장 프로시저(Stored Procedure) // 자바의 메소드(정의, 호출, 매개변수, 반환값)
-- 생성
CREATE OR REPLACE PROCEDURE proTest
(
    --매개변수
    x NUMBER, --길이를 정할 수 없다.
    y NUMBER
)--헤더
IS --목
    --변수선언부
    result NUMBER; --여기는 길이를 정할 수 있다.
BEGIN --몸통
    --구현부
    result := x * y;
    DBMS_OUTPUT.PUT_LINE(result);
    
    --추가하자면 EXCEPTION 이추가된다.
END;



--호출하기
BEGIN
    proTest(10, 20);
END;


/*
매개변수의 작동(동작) 모드
- 매개변수가 전달되는 방법
1. IN : 기본값 => 원래 우리가 알고있는 매개변수 역할(외부에서 메소드에게 값을 전달하는 역할)
2. OUT : 명시적으로 선언시 사용, 성질은 변수. 반환값 역할을 한다.(실상 반환값이란 표현이아니라 OUT PARAMETER 라 불러야 한다.)
3. IN OUT : 사용 X

*/

CREATE OR REPLACE PROCEDURE procTest
(
    a IN NUMBER, -- IN ? 
    b NUMBER, -- == b IN NUMBER 와 같다.  // IN PARAMETER
    c OUT NUMBER, -- OUT PARAMETER
    d OUT VARCHAR2
)
IS
    result NUMBER;
BEGIN
    result := a+b;
    DBMS_OUTPUT.PUT_LINE(result);
    
    c := a*b;
    
    if a > b THEN
        d := '크다';
    else 
        d := '작다';
    end if;
        
END;


DECLARE
    vtemp NUMBER;
    vtemp2 VARCHAR2(100);
BEGIN
    procTest(10,20, vtemp, vtemp2);
    DBMS_OUTPUT.PUT_LINE(vtemp);
    DBMS_OUTPUT.PUT_LINE(vtemp2);
END;

-- 메모 추가하기 프로시저
CREATE OR REPLACE PROCEDURE procAddMemo
(
    pname VARCHAR2,
    pmemo VARCHAR2,
    ppriority NUMBER,
    presult OUT NUMBER -- 업무 성공 유무(executeUpdate()의 반환값과 유사)
    
)
IS

BEGIN
    INSERT INTO tblMemo (seq, name, memo, priority, regdate)
        VALUES (memo_seq.nextVal, pname, pmemo, ppriority, default);
    presult := 1;
        
EXCEPTION
    WHEN OTHERS THEN
        presult := 0;
END;


DECLARE
    vresult NUMBER;
    
BEGIN
    procAddMemo('홍길동', '프로시저 테스트', 1, vresult);
    
    if vresult = 1 THEN
        DBMS_OUTPUT.PUT_LINE('쓰기 완료');
    else 
        DBMS_OUTPUT.PUT_LINE('쓰기 실패');
    end if;
END;

SELECT * FROM tblmemo;

--회원가입 > 회원 정보 테이블 (주요, 보조)
--1. INSERT
--2. SELECT
--3. INSERT


-- 주요정보
CREATE TABLE tblMain
(
    id VARCHAR2(30) NOT NULL,
    pw VARCHAR2(30) NOT NULL,
    name VARCHAR2(30) NOT NULL,
    constraint tblmain_id_pk PRIMARY KEY(id)
);


--보조 정보
CREATE TABLE tblSub
(
    age NUMBER NULL,
    tel VARCHAR2(15) NULL,
    email VARCHAR2(50) NOT NULL,
    id VARCHAR2(30) NOT NULL,
    CONSTRAINT tblSub_id_pk PRIMARY KEY(id),
    CONSTRAINT tblSub_id_fk FOREIGN KEY(id) REFERENCES tblMain(id)
);

--회원 가입 프로시저
CREATE OR REPLACE PROCEDURE procRegister
(
    pid VARCHAR2,
    ppw VARCHAR2,
    pname VARCHAR2,
    page NUMBER,
    ptel VARCHAR2,
    pemail VARCHAR2
)
IS

BEGIN
    --1. tblMain에 추가하기
    INSERT INTO tblMain(id, pw, name) VALUES (pid, ppw, pname);
    
    --2. tblSub에 추가하기
    INSERT INTO tblSub(age, tel, email, id) VALUES (page, ptel, pemail, pid);


    --1. tblMain에 추가하기
    INSERT INTO tblMain(seq, id, pw, name) VALUES (mseq.nextVal, pid, ppw, pname);
    
    --1.5 위에서 가입할 때 사용한 마지막 seq 알아내기
    SELECT MAX(seq) INTO vseq FROM tblMain;
    
    --2. tblSub에 추가하기
    INSERT INTO tblSub(age, tel, email, pseq) VALUES (page, ptel, pemail, vseq);
    

END;

--저장 프로그램
--1. 저장 프로시저
-- : 메소드
-- : in 매개변수 개수 자유(0~마음대로)
-- : out 매개변수 개수 자유(0~마음대로)


--2. 저장 함수
-- : 메소드
-- : in 매개변수 개수 자유
-- : out 매개변수 사용 금지
-- : return 문 사용 > 반환값 1개(*****)

CREATE OR REPLACE PROCEDURE procAAA
(
    pnum1 IN NUMBER,
    pnum2 IN NUMBER,
    presult OUT NUMBER
)
IS

BEGIN
    presult := pnum1 + pnum2;
END;

--함수로
CREATE OR REPLACE FUNCTION fnBBB
(
    pnum1 NUMBER,
    pnum2 NUMBER
) RETURN NUMBER -- public int fnBBB(int a, int b)
IS

BEGIN
    
    RETURN pnum1 + pnum2;
END;




DECLARE
    vresult1 NUMBER;
    vresult2 NUMBER;
    vbasicpay1 NUMBER;
BEGIN
    procAAA(30,40, vresult1);
    DBMS_OUTPUT.PUT_LINE(vresult1);
    
    --vresult1의 값을 홍길동의 급여에 더하기
    SELECT basicpay INTO vbasicpay1 FROM tblinsa WHERE num = 1001;
    
    DBMS_OUTPUT.PUT_LINE(vbasicpay1 + vresult1);
    
    vresult2 := fnBBB(50,60);
    DBMS_OUTPUT.PUT_LINE(vresult2);
    
    SELECT basicpay INTO vbasicpay1 FROM tblinsa WHERE num = 1001;
    
    DBMS_OUTPUT.PUT_LINE(vbasicpay1 + vresult2);
    
    SELECT basicpay + fnBBB(50,60) INTO vbasicpay1 FROM tblinsa WHERE num = 1001;
    DBMS_OUTPUT.PUT_LINE(vbasicpay1);
    
END;

SELECT name,
    CASE
        WHEN substr(ssn, 8, 1) = '1' THEN '남자'
        WHEN substr(ssn, 8, 1) = '1' THEN '여자'
    END
FROM tblinsa;

--프로시저는 PL/SQL 에서만 사용이 가능하다.(ANSI 에서는 사용이 불가능하다.)
--함수는 거의 ANSI에서 사용하기 위해 만든다.
SELECT name, procGender(ssn, vgender) FROM tblinsa; -- 사용 불가능(100%)
SELECT name, fnGender(ssn) FROM tblinsa; 



CREATE OR REPLACE PROCEDURE procGender
(
    pssn VARCHAR2,
    pgender OUT VARCHAR2
)
IS

BEGIN

    IF substr(pssn, 8, 1) = '1' THEN
        pgender := '남자';
    ELSIF substr(pssn, 8, 1) = '2' THEN
        pgender := '여자';
    END IF;    
    

END;


CREATE OR REPLACE FUNCTION fnGender
(
    pssn VARCHAR2
) return VARCHAR2
IS

BEGIN

    IF substr(pssn, 8, 1) = '1' THEN
        return '남자';
    ELSIF substr(pssn, 8, 1) = '2' THEN
        return '여자';
    END IF;    
    
    return null;
    
END;


/*
트리거, TRIGGER
- 저장 프로시저의 일종
- 특정 테이블에 특정 사건이 발생하면 자동으로 실행되는 저장 프로시저
- 개발자 호출X, DBMS 호출O 
- 특정 사건이 언제 발생??? => 실시간 감시 => 사건이 발생 => 프로시저 호출
- 특정 사건(테이블 조작 : INSERT, UPDATE, DELETE)
- 자주 사용하면 안된다. : 고비용(실시간 감시)
    a. 트리거 처리
    b. 프로시저 처리

트리거 구문

CREATE OR REPLACE TRIGGER 트리거명
    - 트리거 동작 옵션
    BEFORE | AFTER -- 언제 실행? 사건발생 전? / 후? 
    INSERT | UPDATE | DELETE -- 사건의 종류
    ON 테이블명 -- 감시 대상 테이블
    FOR EACH ROW
DECLARE
    선언부
BEGIN
    구현부
EXCEPTION
    예외부
END;

*/


-- 메모장, 목요일에는 글을 삭제를 못하게 하고 싶습니다.
CREATE OR REPLACE TRIGGER trgDeleteMemo
    BEFORE 
    DELETE
    ON tblmemo --이테이블에서 삭제라는행위를 하기전에 이트리거를 실행하겠다는 소리
--DECLARE 변수선언을 안할거라 생략가능해서 생략
BEGIN
    DBMS_OUTPUT.PUT_LINE('trgDeleteMemo 실행되었습니다.');
    
    IF TO_CHAR(SYSDATE, 'd') = 5 THEN
        --강제로 에러 발생 THROW NEW EXCEPTION();
        --RAISE_APPLICATION_ERROR(에러번호, 메시지)
        -- 에러번호 : -20000~29990
        RAISE_APPLICATION_ERROR(-20000, '목요일에는 메모를 삭제할 수 없습니다.');
    END IF;
END;

SELECT * FROM tblMemo;
DELETE FROM tblMemo WHERE seq = 1;

-- 트리거 사용 예
-- 1. 부모 삭제 (삭제 BEFORE 트리거) => 자식 삭제
-- 2. 게시판 글쓰기 (등록 AFTER 트리거) => 포인트 업데이트
-- 3. 로그 기록(각종 테이블, INSERT, UPDATE, DELETE 트리거) > 로그 테이블 기록

SELECT * FROM tbllog;


--로그 트리거
-- : tblMemo 을 대상으로 변화가 생기면 나중에 관리자가 볼수 있게 로그를 기록

CREATE OR REPLACE TRIGGER trgMemo
    AFTER
    INSERT OR UPDATE OR DELETE
    ON tblMemo
    FOR EACH ROW -- 사건이 적용되는 레코드 마다 프로시저를 호출해라 ~ N회 반복
DECLARE
    vmessage VARCHAR2(100);
BEGIN
    -- 사건의 종류를 알아내는 방법??
--    DBMS_OUTPUT.PUT_LINE(INSERTING); => BOOLEAN 타입이라 오라클은 출력이 불가능하다.
    
    
    
    IF inserting THEN
        vmessage := 'tblMemo에 새로운 레코드가 추가되었습니다.';
        DBMS_OUTPUT.PUT_LINE(vmessage);
    ELSIF updating THEN
        vmessage := 'tblMemo에 레코드 수정이 발생했습니다.';
        DBMS_OUTPUT.PUT_LINE(vmessage);
    ELSIF deleting THEN
        vmessage := 'tblMemo에 레코드 삭제가 발생했습니다.';
        DBMS_OUTPUT.PUT_LINE(vmessage);    
    END IF;
    
    INSERT INTO tblLog(seq, code, messege, regdate)
        VALUES (log_seq.nextVal, 'BBB001', vmessage, DEFAULT);
    
END;

SELECT * from tbllog;

SET SERVEROUTPUT ON;

-- 테이블 1개에 여러개의 트리거를 매핑할 수 있다. (단, ********* 트리거 간에 서로 영향을 주는 업무 구현X)
-- 우리가 어제 만든 tblMemo에 걸린 트리거 1개
-- 방금 만든 tblMemo에 건 트리거 1개
COMMIT;
rollback;

SELECT * FROM tblmemo;

INSERT INTO tblmemo VALUES (memo_seq.nextVal, '아무개', '메모', 1, default);

UPDATE tblMemo SET memo = 'testing..' WHERE seq = 62;

DELETE FROM tblMemo WHERE seq = 62;

SELECT * FROM tbllog;

DELETE FROM tblMemo;

/*
[FOR EACH ROW]

1. 생략
    - 문장 단위 트리거
    - 트리거 실행 횟수 1회
    - DML 에 의해서 적용된 행의 개수와 무관하게 단 1회 실행
    - 행동 자체가 중요한 트리거 => 누가삭제됫는지가 중요한게아닌 이 행위 자체를 중요시하는것.(어떤 레코드가 적용됬는지는 중요하지 않다.)
    
2. 사용
    - 행 단위 트리거
    - 트리거 실행 횟수 N회
    - N : DML에 의해서 적용된 행의 개수
    - 상관 관계 변수 지원
        a. : old
        b. : new
2-1. INSERT 발생
    - 트리거에서 방금 INSERT 된 행의 컬럼값을 접근할 수 있다.
    - INSERT된 데이터를 가져올 수 있다.(새값)
    - : new 사용이 가능하다. > 방금 추가된 레코드 참조 변수 > :new.컬럼명
    - : old 사용이 불가능하다.(기존 행이라는 의미)
    - : after 트리거에서만 사용가능. before 트리거에서는 사용 불가능

2-2. UPDATE 발생
    - 트리거에서 방금 UPDATE된 행의 컬럼값(수정된 전 값 : OLD, 수정된 후 값 : NEW)을 접근할 수 있다.
    - : NEW > 수정된 행 정보
    - : OLD > 수정되기 전 행 정보

2-3. DELETE 발생
    - 트리거에서 방금 DELETE된 행의 컬럼값을 접근할 수 있다.
    - OLD > 방금 삭제된 행
    - NEW 사용 안함
    
    
*/

CREATE OR REPLACE TRIGGER trgInsertTodo
    BEFORE
    INSERT
    ON tblTodo
    FOR EACH ROW

BEGIN
    DBMS_OUTPUT.PUT_LINE(:new.title); --vrow tblTodo%rowtype; > for each row가 없으면 못쓴다.
--    DBMS_OUTPUT.PUT_LINE(:old.title); --사용금지 > null 반환
    
END;

INSERT INTO tblTodo VALUES(50, '프로시저 만들기', sysdate, null);
INSERT INTO tblTodo VALUES(51, '강아지 목욕시키기', sysdate, null);
INSERT INTO tblTodo VALUES(53, '햄스터 목욕시키기', sysdate, null);


CREATE OR REPLACE TRIGGER trgUpdateTodo
    AFTER
    UPDATE
    ON tblTodo
    for each row
BEGIN
    DBMS_OUTPUT.PUT_LINE(:old.title);
    DBMS_OUTPUT.PUT_LINE(:new.title);
    
END;

SELECT * FROM tblTodo;
UPDATE tblTodo SET title = '트리거만들기' WHERE seq = 50;

CREATE OR REPLACE TRIGGER trgDeleteTodo
    BEFORE
    DELETE
    ON tblTodo
    FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(:old.title);
--    DBMS_OUTPUT.PUT_LINE(:new.title); > null

END;

DELETE FROM tbltodo WHERE seq = 50;
DELETE FROM tbltodo WHERE completedate is not null;

SELECT * FROM tbltodo;


--1. 게시판
DROP TABLE tblBoard;

CREATE TABLE tblBoard
(
    seq NUMBER PRIMARY KEY,
    subject VARCHAR2(200) NOT NULL,
    regdate DATE DEFAULT SYSDATE NOT NULL
);


CREATE TABLE tblComment
(
    seq NUMBER PRIMARY KEY,
    subject VARCHAR2(200) NOT NULL,
    regdate DATE DEFAULT SYSDATE NOT NULL,
    bseq NUMBER NOT NULL REFERENCES tblBoard(seq)
);

INSERT INTO tblBoard VALUES (1, '게시판 테스트입니다.', DEFAULT);
INSERT INTO tblBoard VALUES (2, '안녕하세요~', DEFAULT);

INSERT INTO tblComment VALUES (1, '댓글입니다~', DEFAULT, 1);
INSERT INTO tblComment VALUES (2, '댓글입니다~', DEFAULT, 1);
INSERT INTO tblComment VALUES (3, '댓글입니다~', DEFAULT, 1);

INSERT INTO tblComment VALUES (4, 'ㅎㅇ~', DEFAULT, 2);
INSERT INTO tblComment VALUES (5, '방가방가~', DEFAULT, 2);

SELECT * FROM tblboard;
SELECT * FROM tblcomment;

DELETE FROM tblcomment WHERE bseq = 1;
DELETE FROM tblboard WHERE seq = 1;


-- 게시판 테이블 > 삭제 > 삭제할 번호를 알아내서 > 댓글 삭제 : 트리거
CREATE OR REPLACE TRIGGER trgDeleteBoard
    BEFORE
    DELETE
    ON tblBoard
    for each row
BEGIN

    DELETE FROM tblComment WHERE bseq = :old.seq; --부모 글번호

END;


DELETE FROM tblBoard WHERE seq = 2;


-- 2. 회원 글작성 + 포인트 누적
DROP TABLE tblComment;
DROP TABLE tblBoard;

CREATE TABLE tblUser
(
    id VARCHAR2(50) PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    point NUMBER DEFAULT 1000 NOT NULL

);


CREATE TABLE tblBoard
(
    seq NUMBER PRIMARY KEY,
    subject VARCHAR2(200) NOT NULL,
    regdate DATE DEFAULT SYSDATE NOT NULL,
    id VARCHAR2(50) NOT NULL
);

INSERT INTO tblUser VALUES ('hong', '홍길동', default);
SELECT * FROM tblUser;

INSERT INTO tblBoard VALUES (1, '안녕하세요', DEFAULT, 'hong'); -- 100pt 누적 트리거 생성
UPDATE tblUser SET point = point + 100 WHERE id = 'hong'; --코딩 실수를 줄이기위해 트리거 작성
SELECT * FROM tblBoard;

-- 글쓰면 + 100pt
-- 글 지우면 - 50pt
CREATE OR REPLACE TRIGGER trgInsertBoard
    AFTER
    INSERT
    ON tblBoard
    for each row --id 를 알아내기 위해서
BEGIN
    UPDATE tblUser SET
        point = point + 100
            WHERE id = :new.id; --게시판 글쓴 회원의 포인트 누적
    
END;

INSERT INTO tblBoard VALUES (2, '방가2', DEFAULT, 'hong');
SELECT * FROM tblUser;


CREATE OR REPLACE TRIGGER trgDeleteBoard
    AFTER
    DELETE
    ON tblBoard
    for each row --글삭제한 회원 id 알아내려고
BEGIN
    UPDATE tblUser set
        point = point - 50
            WHERE id = :old.id;
    
END;

COMMIT;

delete from tblBoard where seq = 1;
select * from tblUser;

--하면 안되는 행동
CREATE OR REPLACE TRIGGER trgInsertBoard
    AFTER
    INSERT
    ON tblBoard
    FOR EACH ROW

BEGIN
    
    --INSERT INTO tblBoard VALUES (3, '반갑습니다', DEFAULT, 'hong');
    INSERT INTO tblComment VALUES (5, '댓글', DEFAULT, 'hong');
    
    
END;

CREATE OR REPLACE TRIGGER trgInsertComment
    AFTER
    INSERT
    ON tblComment
    for each row
BEGIN
    INSERT INTO tblBoard VALUES (3, '반갑습니다', DEFAULT, 'hong');
END;


------------0415-------------------
-- 프로시저 총 정리(***)
-- 1. 추가 작업(C)
create or replace procedure 추가작업(
    추가할 데이터 -> in 매개변수,
    추가할 데이터 -> in 매개변수, -- 원하는 개수만큼
    성공 유무 반환 -> out 매개변수 -- return 사용 X
);
is
    내부 변수 선언
begin
    작업(insert + (select, update, delete)
    commit; -- 마무리
exception 
    when others then
        예외작업
        rollback;   -- 마무리
end;
-- 연습
select * from tblTodo;

create sequence todo_seq;
-- 사용중인 테이블에 적용할 시퀀스 객체를 나중에 만들었을 경우(번호 중복 충돌 발생)
-- 해결 1. 노가다 : 원하는 번호까지 강제 증가.(낮은번호)
select todo_seq.nextval from dual;  
-- 해결 2. seed 값 지정(권장)
create sequence todo_seq
    start with 101;  

drop sequence todo_seq;

insert into tblTodo (seq, title, adddate, completedate)
    values (todo_seq.nextval, '할일 추가하기', sysdate, null);

-- 프로시저 생성
create or replace procedure procAddTodo (
    ptitle in varchar2,
    presult out number -- 1 or 0
)
is
    
begin
    insert into tblTodo (seq, title, adddate, completedate)
        values (todo_seq.nextval, ptitle, sysdate, null);
        
    presult := 1; -- 성공 메시지 반환
    commit;
exception
    when others then
        presult := 0; -- 실패 메시지 반환
        rollback;
end;

-- procAddTodo 호출
set serveroutput on;

declare
    vresult number;
begin
    procAddTodo('새로운 할일', vresult);
    dbms_output.put_line(vresult);
end;


-- ++++ 시퀀스를 자동증가하도록 새로만듬
create or replace procedure procAddTodo (
    ptitle in varchar2,
    presult out number -- 1 or 0
)
is
    vseq NUMBER; --시퀀스 역할
begin
    
    SELECT MAX(seq) + 1 INTO vseq FROM tblTodo; --시퀀스 객체와 동일한 역할
    
    insert into tblTodo (seq, title, adddate, completedate)
        values (vseq, ptitle, sysdate, null);
        
    presult := 1; -- 성공 메시지 반환
    commit;
exception
    when others then
        presult := 0; -- 실패 메시지 반환
        rollback;
end;

-- procAddTodo 호출
set serveroutput on;

declare
    vresult number;
begin
    procAddTodo('새로운 할일', vresult);
    dbms_output.put_line(vresult);
end;

--2. 수정 작업(UPDATE)
CREATE OR REPLACE PROCEDURE 수정작업
(
    수정할 데이터 -> IN 매개변수,
    수정할 데이터 -> IN 매개변수, -- 원하는 개수
    식별할 데이터 -> INT 매개변수, -- WHERE 절에 사용할 PK or 데이터
    성공 유무 반환 -> OUT 매개변수 --N or 0
)
IS
    내부 변수
BEGIN
    작업(UPDATE + (INSERT, UPDATE, DELETE, SELECT))
    COMMIT;

EXCEPTION
    WHERE OTHERS THEN
        예외작업
        ROLLBACK;
END;

-- 할일을 했다. > COMPLETEDATE 채우기
CREATE OR REPLACE PROCEDURE procCompleteTodo
(
    -- 수정할 데이터 sysdate 대치
    pseq IN NUMBER, -- 수정할 할일 번호
    presult OUT NUMBER --성공 유무
)
IS
BEGIN
    UPDATE tblTodo SET completedate = SYSDATE WHERE seq = pseq;
    presult := 1;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        presult := 0;
        ROLLBACK;
END;

SELECT * FROM tblTodo;

declare
    vresult number;
begin
    procCompleteTodo(20, vresult);
    dbms_output.put_line(vresult);
end;


--3. 삭제 작업(D)
CREATE OR REPLACE PROCEDURE procDeleteTodo
(
    식별자 데이터 -> IN 매개변수,
    성공 유무 반환 -> OUT 매개변수
)
IS
    내부 변수
BEGIN
    작업(DELETE + (INSERT, UPDATE, DELETE, SELECT));
    COMMIT;
EXCEPTION
    WHEN OTHER THEN
        예외작업
        ROLLBACK;
END;



CREATE OR REPLACE PROCEDURE procDeleteTodo
(
    pseq NUMBER, --삭제할 할일 번호
    presult OUT NUMBER -- N or 0
)
IS
BEGIN
    DELETE FROM tblTodo WHERE seq = pseq;
    presult := 1;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        presult := 0;
        ROLLBACK;
END;


declare
    vresult number;
begin
    procDeleteTodo(101, vresult);
    dbms_output.put_line(vresult);
end;



--4. 읽기 작업(R)
-- : 조건없이 반환
-- : 조건있고 반환
-- : 반환 > 단일행 or 다중행 + 단일컬럼 or 다중행
CREATE OR REPLACE PROCEDURE 읽기작업
(
    조건 데이터 -> IN 매개변수,
    단일 반환값 -> OUT 매개변수
)
IS
    내부 변수
BEGIN
    작업(SELECT + (INSERT, UPDATE, DELETE, SELECT))
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        예외작업
        ROLLBACK;
END;



CREATE OR REPLACE PROCEDURE procCountTodo
(
    pstate IN NUMBER, --0(안한일),1(한일),2(모두)
    pcnt OUT NUMBER
)
IS
BEGIN
      
    IF pstate = 0 THEN
        SELECT COUNT(*) INTO pcnt FROM tbltodo WHERE completedate IS NULL;
    ELSIF pstate = 1 THEN    
        SELECT COUNT(*) INTO pcnt FROM tbltodo WHERE completedate IS NOT NULL;
    ELSE
        SELECT COUNT(*) INTO pcnt FROM tbltodo;
    END IF;
    
    --COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('에러발생');
        --ROLLBACK;
END;

declare
    vcnt number;
begin
    procCountTodo(0, vcnt);
    dbms_output.put_line(vcnt);
    procCountTodo(1, vcnt);
    dbms_output.put_line(vcnt);
    procCountTodo(2, vcnt);
    dbms_output.put_line(vcnt);
end;




CREATE OR REPLACE PROCEDURE 읽기작업
(
    --조건 데이터 -> IN 매개변수,
    단일 반환값 -> OUT 매개변수,
    단일 반환값 -> OUT 매개변수,
    단일 반환값 -> OUT 매개변수 -- 원하는 만큼 > 1행 + 다중컬럼
)
IS
    내부 변수
BEGIN
    작업(SELECT + (INSERT, UPDATE, DELETE, SELECT))
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        예외작업
        ROLLBACK;
END;




CREATE OR REPLACE PROCEDURE procCountSetTodo
(
    --조건 데이터 -> IN 매개변수,
    pcnt1 out number,
    pcnt2 out number,
    pcnt3 out number
)
IS
BEGIN
    
    SELECT COUNT(*) INTO pcnt1 FROM tbltodo WHERE completedate IS NULL;
    SELECT COUNT(*) INTO pcnt2 FROM tbltodo WHERE completedate IS NOT NULL;    
    SELECT COUNT(*) INTO pcnt3 FROM tbltodo;
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('에러 발생');
END;


DECLARE
    vcnt1 NUMBER;
    vcnt2 NUMBER;
    vcnt3 NUMBER;
BEGIN
    procCountSetTodo(vcnt1, vcnt2, vcnt3);
    DBMS_OUTPUT.PUT_LINE(vcnt1);
    DBMS_OUTPUT.PUT_LINE(vcnt2);
    DBMS_OUTPUT.PUT_LINE(vcnt3);
END;

CREATE OR REPLACE PROCEDURE procListTodo
(
    presult OUT sys_refcursor -- 반환값으로 커서를 사용할 때 사용하는 자료형 (= 결과 테이블, ResultSet)
)
IS
BEGIN
    
    OPEN presult FOR
        SELECT * FROM tblTodo;
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('예외 작업');
END;




DECLARE
    vresult sys_refcursor; --프로시저의 커서
    vrow tblTodo%rowtype;
BEGIN
    
    procListTodo(vresult);
    
    loop
        
        fetch vresult INTO vrow;
        exit when vresult%notfound;
        
        DBMS_OUTPUT.PUT_LINE(vrow.title);
        
        
    end loop;
    
END;


create or replace procedure procSearchTodo (
    pbegindate date, -- 시작일
    penddate date, -- 종료일
    presult out sys_refcursor -- 할일들(반환값)
)
is
begin
    open presult
        for select * from tblTodo 
            where adddate between pbegindate and penddate;
end;



DECLARE
    vresult sys_refcursor; --프로시저의 커서
    vrow tblTodo%rowtype;
BEGIN
    
    procSearchTodo('2019-03-15','2019-04-05', vresult);
    
    loop
        
        fetch vresult INTO vrow;
        exit when vresult%notfound;
        
        DBMS_OUTPUT.PUT_LINE(vrow.title);
        
        
    end loop;
    
END;














