--ex10_matter.sql


--01. tblCountry 모든 행과 컬럼
SELECT * FROM tblcountry;

--02. 국가명과 수도명을 가져오시오
SELECT name, capital 
FROM tblCountry;

--03. 아래와 같이 가져오시오.
SELECT 
    name as 국가명,  
    capital as 수도명, 
    population as 인구수, 
    continent as 면적,
    area as 대륙
FROM tblCountry;

--04. 아래와 같이 가져오시오.
SELECT 
    '국가명' || ':' || name || ', ' || 
    '수도명' || ':' || capital || ', ' || 
    '인구수' || ':' || population AS 국가정보 
FROM tblCountry;

--05. 아래와 같이 가져오시오.
SELECT 
    first_name || last_name as 이름, 
    email || '@GMAIL.COM' AS 이메일, 
    phone_number AS 연락처, 
    salary AS 급여
FROM employees;

--06. 면적이 100이하인 국가의 이름과 면적을 가져오시오.
SELECT 
    name, 
    area
FROM tblCountry
WHERE area <= 100;

--07 아시아와 유럽 대륙에 속한 나라를 가져오시오.
SELECT name, capital, population, continent, area
FROM tblCountry
WHERE continent IN ('AS', 'EU');


--08 직업(job-id)이 프로그래머(it_prog)인 직원의 이름(풀네임)과 연락처 가져오시오.
SELECT
    first_name || last_name AS 이름,
    phone_number AS 연락처
FROM employees
WHERE job_id  = 'IT_PROG';

--09 last_name이 'Grant'인 직원의 이름, 연락처, 고용날짜를 가져오시오.
SELECT
    first_name || last_name AS 이름,
    phone_number AS 연락처,
    hire_date AS 고용날짜
FROM employees
WHERE last_name = 'Grant';

--10 특정 매니저(120)이 관리하는 직원의 이름, 급여, 연락처를 가져오시오.
SELECT
    first_name || last_name AS 이름,
    salary AS 급여,
    phone_number AS 연락처
FROM employees
WHERE manager_id = '120';

--11.  특정 부서(60,80,100)에 속한 직원들의 이름, 연락처, 이메일, 부서ID  가져오시오.
SELECT
    first_name || last_name AS 이름,
    phone_number AS 연락처,
    email AS 이메일,
    department_id AS 부서ID
FROM employees
WHERE department_id IN ('60', '80', '100');

--12. 기획부 직원들 가져오시오.
SELECT
    *
FROM tblinsa
WHERE buseo = '기획부';

--13 서울에 있는 직원들 중 직위가 부장인 사람의 이름,직위,전화번호 가져오시오
SELECT
    name AS 이름,
    jikwi AS 직위,
    tel AS 전화번호
FROM tblinsa
WHERE jikwi = '부장';

--14 기본급여 + 수당 합쳐서 150만원 이상인 직원 중 서울에 직원만 가져오시오.
SELECT
    *
FROM tblinsa
WHERE (basicpay + sudang) >= 1500000 AND city = '서울';

--15. 수당이 15만원 이하인 직원 중 직위가 사원,대리만 가져오시오.
SELECT
    *
FROM tblinsa
WHERE sudang <= 150000 AND jikwi IN ('사원', '대리');


--16. 수당을 제외한 기본 연봉이 2천만원 이상,서울, 직위 과장(부장)만 가져오시오.
SELECT
    *
FROM tblinsa
WHERE (basicpay + sudang) * 12 >= 20000000 AND jikwi IN ('과장', '부장');

--17. 국가명 'O국'인 나라를 가져오시오.
SELECT
    *
FROM tblCountry
--WHERE name LIKE '_국';
WHERE name LIKE '%국';

--18. 연락처가 515로 시작하는 직원들 가져오시오.
SELECT
    *
FROM employees
WHERE phone_number LIKE '515.___.____';

--19 직업ID 가 SA로 시작하는 직원들 가져오시오.
SELECT
    *
FROM employees
WHERE job_id LIKE 'SA%';

--20 FIRST_NAME에 'de'가 들어간 직원들 가져오시오.
SELECT
    *
FROM employees;
WHERE first_name LIKE '%de%';

--21 남자 직원만 가져오시오.
SELECT
    *
FROM tblinsa
WHERE ssn LIKE '______-1%';

--22 여자 직원만 가져오시오
SELECT
    *
FROM tblinsa
WHERE ssn LIKE '______-2%';

--23 여름에 태어난 직원들 가져오시오.
SELECT
    *
FROM tblinsa
WHERE ssn LIKE '__07%' OR ssn LIKE '__08%' OR ssn LIKE '__09%';

--24 서울, 인천에 사는 김씨만 가져오시오.
SELECT
    *
FROM tblinsa
WHERE city IN ('서울', '인천') AND name LIKE '김%';

--25 영업부/총무부/개발부 직원 중 사원급(사원/대리) 중에 010 을 사용하는 직원들을 가져오시오.
SELECT
    *
FROM tblinsa
WHERE buseo IN ('영업부', '총무부', '개발부') AND jikwi IN ('사원', '대리') AND tel LIKE '010%';

--26 서울/인천/경기에 살고 입사일이 2008~2010년 사이인 직원들을 가져오시오.
SELECT
    *
FROM tblinsa
WHERE city IN ('서울', '인천', '경기') AND ibsadate BETWEEN '2008-01-01' AND '2010-12-31';

--27 부서가 아직 배정 안된 직원들을 가져오시오.
SELECT
    *
FROM employees
WHERE department_id IS null;


--28 직업이 어떤것들이 있는지 가져오시오.
SELECT
    distinct job_id AS 직업
FROM employees;

--29 고용일이 2002~2004년 사이인 직원들은 어느 부서에 근무합니까?
SELECT
    distinct department_id
FROM employees
WHERE hire_date BETWEEN '2002-01-01' AND '2004-12-31'; 


--30 급여가 5000불 이상인 직원들은 담당 매니저가 누구?
SELECT
    manager_id AS 매니저
FROM employees
WHERE salary >= 5000;

--31 남자 직원 + 80년대생들의 직급은 뭡니까?
SELECT
    distinct jikwi AS 직급
FROM tblinsa
WHERE ssn LIKE '8%' AND ssn LIKE '______-1%';

--32 수당 20만원 넘는 직원들은 어디 삽니까?
SELECT
    distinct city
FROM tblinsa
WHERE sudang > 200000; 

--33 연락처가 아직 없는 직원은 어느 부서입니까?
SELECT
    buseo AS 부서
FROM tblinsa
WHERE tel IS null; 








