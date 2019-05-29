--ex05_operator.sql

/*

연산자

1. 산술 연산자
- +, -, *, /
- %(없음) -> 함수로 제공(mod()) 이녀석을 대신해서 씀

2. 문자열 연산자
- + -> ||

3. 비교 연산자
- >, >=, <, <=
- =(==)같다, <>(!=)같지않다
- 논리값을 결과값으로 반환
- 비교 연산자의 결과는 컬럼 리스트에 들어갈 수 없다. (출력 못함 - boolean 자료형이 없기 때문에)
- SQL 자료형에는 boolean이 없다.
- 조건절에서 사용한다. (where 절)

4. 논리 연산자
- and(&&), or(||), not(!)
- 조건절에서 사용한다.
- 컬럼리스테에 넣을 수 없다.

5. 대입 연산자
- 없음
- 있음(변수 대신에 컬럼이 존재) > 컬럼을 대상으로 수정 작업할 때 사용 > update문
- 컬럼명(셀값) = 새로운 값
- 복합 대입 연산자(+=, -= 등등) 없음 > weight += 1 (x) > weight = weight + 1 (o)

6. 3항 연산자
- 없음
- 제어문이 없음
- 비슷한 행동을 하는 함수 몇개가 제공

7. 증감 연산자
- 없음
- ++num(x) > num = num + 1 (o)

8. SQL 연산자(절)
- 자바 : instanceof
- in, between, like, is, any, all 등..




*/

SELECT * FROM tblcomedian;

SELECT last, first, weight + 5, height * 2, (weight / (height * height) * 10000) FROM tblcomedian;

--ORA-01722: invalid number // 오라클에선 문자열 연산자가 + 가 아니다.
SELECT last + first, weight + 5, height * 2, (weight / (height * height) * 10000) FROM tblcomedian;

SELECT last || first, weight + 5, height * 2, (weight / (height * height) * 10000) FROM tblcomedian;

-- 컬럼 별칭(Alias) 만들기
-- : 식별자로 유효한 컬럼명 만들기
-- : 별명(x) > 개명(o) : 이전 컬럼명은 더이상 사용되지 않는다.(****)


SELECT 
    last || first as fullname, 
    weight + 5 as weight, --원본테이블의 컬럼명과 동일 > 아무 상관없음.
    height * 2 as height, 
    (weight / (height * height) * 10000) as BMI
FROM tblcomedian;

SELECT nick as 별명 FROM tblcomedian; -- 가공되지 않은 컬럼에도 별칭 가능

SELECT nick as 개그맨 별명 FROM tblcomedian; -- 식별자에 공백 불가능
SELECT nick as 개그맨_별명 FROM tblcomedian;
SELECT nick as "개그맨 별명" FROM tblcomedian; -- 사용 비권장

SELECT
    nick as "SELECT"
FROM tblcomedian; -- => 절대 비권장


SELECT height > weight FROM tblcomedian;





