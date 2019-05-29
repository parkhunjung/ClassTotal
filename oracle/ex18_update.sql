--ex18_update.sql

/*
UPDATE 문
- DML(INSERT, UPDATE, DELETE)
-원하는 행의 원하는 컬럼을 (셀값) 수정하는 명령어
- UPDATE 테이블명 SET 컬럼명  = 수정할 값[, 컬럼명 = 수정할 값] X N회 [WHERE 절]
- WHERE을 명시안하면 모든 행을 수정한다. (*****************)

*/


COMMIT; -- 작업승인 (SAVE)
ROLLBACK; -- 작업취소 (되돌리기, CTRL + Z)

SELECT * FROM tblcountry;


-- 중국의 수도가 변경 > 청도
UPDATE tblcountry SET capital = '청도'; --절대하면 안되는행동
UPDATE tblcountry SET capital = '청도' WHERE name = '중국';
UPDATE tblcountry SET capital = '청도' WHERE name = '프랑스';

SELECT * FROM tblinsa;

-- 연봉 협상 > 1.1배 인상
UPDATE tblinsa SET basicpay = basicpay * 1.1;
-- 부장 > 수당 x 2배 인상
UPDATE tblinsa SET sudang = sudang * 2 WHERE jikwi = '부장';


SELECT * FROM tbltodo;
-- 16. 과제 제출하기 > 지금 완료 : 빈칸(셀)을 채우는 작업은 UPDATE

UPDATE tbltodo SET
    completedate = SYSDATE
        --WHERE title = '과제 제출하기'; --유일한 1개의 할일을 찾아야 한다. (PK 를 조건으로 건다. ***)
        WHERE seq = 16;

UPDATE tbltodo SET
    completedate = SYSDATE
        WHERE seq = 16;

UPDATE tbltodo SET
    adddate = null
        WHERE seq = 16; --not null 이라 null 값 갱신 불가능

UPDATE tbltodo SET
    seq = 100
        WHERE seq = 16; -- 절대 금지!! 절대 하면 안되는 행동입니다. (PK 는 수정하면 안되는 행동입니다. 위험그자체)






























