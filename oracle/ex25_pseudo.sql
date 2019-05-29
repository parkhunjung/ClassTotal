--ex25_pseudo.sql


/*

의사 컬럼, PSEUDO COLUMN
-실제 컬럼이 아닌데 컬럼처럼 행동하는 객체
-오라클 전용
- rownum, MS-SQL(top), MySQL(limit)
- 서브쿼리 의존

*/
--1이 포함된것
SELECT name, buseo, jikwi, rownum FROM tblinsa;
SELECT name, buseo, jikwi, rownum FROM tblinsa WHERE ROWNUM = 1;
SELECT name, buseo, jikwi, rownum FROM tblinsa WHERE ROWNUM <= 5;
SELECT name, buseo, jikwi, rownum FROM tblinsa WHERE ROWNUM <= 10;
SELECT name, buseo, jikwi, rownum FROM tblinsa WHERE ROWNUM = 1 OR ROWNUM = 3; -- 1만가져옴 이유는?


--1이 포함안된것
SELECT name, buseo, jikwi, rownum FROM tblinsa WHERE ROWNUM = 5;
SELECT name, buseo, jikwi, rownum FROM tblinsa WHERE ROWNUM >= 3 AND ROWNUM <= 6; 
SELECT name, buseo, jikwi, rownum FROM tblinsa WHERE ROWNUM >= 10 AND ROWNUM <= 20; 

-- ROWNUM은 FROM절이 실행 시 매겨진다.
SELECT a.*, ROWNUM
FROM (SELECT name, buseo, jikwi, basicpay, ROWNUM FROM tblinsa ORDER BY basicpay DESC) a
    WHERE rownum <= 5;
    
SELECT a.*, rownum AS "수당탑5" 
    FROM (SELECT * FROM tblinsa ORDER BY sudang DESC) a
        WHERE rownum <= 5;

SELECT a.*, rownum 
    FROM (SELECT * FROM tblinsa ORDER BY sudang DESC) a
        WHERE rownum <= 10;

-- rownum 을 조건으로 마음대로 사용하려면 최소한 서브쿼리가 3번 중첩이 되어야한다.
SELECT b.*, rownum FROM   
    (SELECT a.*, rownum AS rnum
    FROM (SELECT * FROM tblinsa ORDER BY sudang DESC) a) b
        WHERE rnum >= 5 AND rnum <= 10;

--tblcountry 인구수가 가장많은 나라 1~3위까지
SELECT a.*, rownum FROM 
(SELECT * FROM tblcountry WHERE population IS NOT NULL ORDER BY population DESC) a
    WHERE rownum <= 3;

--tblinsa. 남자 + 부서별 인원이 가장 많은 3부서
SELECT * FROM
    (SELECT a.*, rownum AS rnum FROM 
        (SELECT buseo ,COUNT(*) AS "남자직원수" FROM tblinsa 
            WHERE SUBSTR(ssn, 8, 1) = 1 
                GROUP BY buseo 
                    ORDER BY COUNT(*) DESC) a)
                        WHERE rnum <= 3;






























