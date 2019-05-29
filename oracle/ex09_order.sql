--ex09_order.sql

/*

정렬, Sort
- 원본 테이블의 정렬이 아니다. (***** 원본 테이블의 레코드 정렬은 오라클이 알아서 한다.)
- SELECT 의 결과 테이블의 정렬이 중료하다. > ORDER BY 절을 사용한다.

ORDER BY 절
- 결과 셋을 정렬하는데 사용한다.
- 오름차순 정렬, 내림차순 정렬
- ORDER BY 컬럼명 ASC(DESC)
    -ASC, ASCENDING
        a. 숫자 : 10 -> 20 -> 30
        b. 문자 : '가' -> '나' -> '다'
        c. 날짜 : '2016' -> '2017' -> '2018'
    -DESC, DESCENDING
        - 위와 반대 순서로
    
SELECT 문
- SELECT 컬럼리스트 FROM 테이블
- SELECT 컬럼리스트 FROM 테이블 WHERE 조건
- SELECT 컬럼리스트 FROM 테이블 WHERE 조건 ORDER BY 정렬

1. SELECT 컬럼리스트
    - 가져올 컬럼을 지정한다.
    - 가져올 값을 연산하기도 한다.
2. FROM 테이블
    - 테이블을 선택함
3. WHERE 조건
    - 가져올 레코드를 지정한다.
4. ORDER BY 정렬
    - 가져올 레코드의 순서를 지정한다. (정렬)

절 실행 순서    
- FROM(1) > SELECT(2)
- FROM(1) > WHERE(2) > SELECT(3)
- FROM(1) > WHERE(2) > ORDER BY(3) > SELECT(4)
- FROM(1) > WHERE(2) > GROUP BY(3) > ORDER BY(4) > SELECT(5)
*/

SELECT *
FROM tblinsa;

SELECT *
FROM tblinsa ORDER BY name ASC; --이름순으로 (오름차순)(가나다)
FROM tblinsa ORDER BY name DESC; --이름순으로 (내림차순)(다나가)


















