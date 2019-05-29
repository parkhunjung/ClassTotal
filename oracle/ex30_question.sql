--ex30_question.sql

/*
1. tblStaff, tblProject. 현재 재직중인 모든 직원의 이름, 주소, 월급, 담당프로젝트명을 가져오시오.

2. tblVideo, tblRent, tblMember. '뽀뽀할까요' 라는 비디오를 빌려간 회원의 이름은?

3. tblStaff, tblProejct. '노조협상'을 담당한 직원의 월급은 얼마인가?

4. tblVideo, tblRent, tblMember. '털미네이터' 비디오를 한번이라도 빌려갔던 회원들의 이름은?

5. tblStaff, tblProject. 서울시에 사는 직원을 제외한 나머지 직원들의 이름, 월급, 담당프로젝트명을 가져오시오.

6. tblCustomer, tblSales. 상품을 2개(단일상품) 이상 구매한 회원의 연락처, 이름, 구매상품명, 수량을 가져오시오.

7. tblVideo, tblRent, tblGenre. 모든 비디오 제목, 보유수량, 대여가격을 가져오시오.

8. tblVideo, tblRent, tblMember, tblGenre. 2007년 2월에 대여된 구매내역을 가져오시오. 회원명, 비디오명, 언제, 대여가격

9. tblVideo, tblRent, tblMember. 현재 반납을 안한 회원명과 비디오명, 대여날짜를 가져오시오.

10. tblInsa. 남자 직원 중에서 급여를 3번째로 많이 받는 직원과 9번째로 많이 받는 직원의 급여 차액은 얼마?

11. employees, departments. 사원들의 이름, 부서번호, 부서명을 가져오시오.

12. employees, jobs. 사원들의 정보와 직위명을 가져오시오.

13. employees, jobs. 직무(job_id)별 최고급여(max_salary) 받는 사원 정보를 가져오시오.

14. departments, locations. 모든 부서와 각 부서가 위치하고 있는 도시의 이름을 가져오시오.

15. locations, countries. location_id 가 2900인 도시가 속한 국가 이름을 가져오시오.

16. employees. 급여를 12000 이상 받는 사원과 같은 부서에서 근무하는 사원들의 이름, 급여, 부서번호를 가져오시오.

17. employees, departments. locations.  'Seattle'에서(LOC) 근무하는 사원의 이름, 직위, 부서번호, 부서이름을 가져오시오.

18. employees, departments. first_name이 'Jonathon'인 직원과 같은 부서에 근무하는 직원들 정보를 가져오시오.

19. employees, departments. 사원이름과 그 사원이 속한 부서의 부서명, 그리고 월급을 출력하는데 월급이 3000이상인 사원을 가져오시오.

20. employees, departments. 부서번호가 10번인 사원들의 부서번호, 부서이름, 사원이름, 월급을 가져오시오.

21. employees, departments. 모든 부서의 정보를 가져오되 부서장이 있는 부서는 부서장의 정보도 같이 가져오시오.

22. departments, job_history. 퇴사한 사원의 입사일, 퇴사일, 근무했던 부서 이름을 가져오시오.

23. employees. 사원번호와 사원이름, 그리고 그 사원을 관리하는 관리자의 사원번호와 사원이름을 출력하되 각각의 컬럼명을 '사원번호', '사원이름', '관리자번호', '관리자이름'으로 하여 가져오시오.

24. employees, jobs. 직책(Job Title)이 Sales Manager인 사원들의 입사년도와 입사년도(hire_date)별 평균 급여를 가져오시오. 년도를 기준으로 오름차순 정렬.

25. employees, departments. locations. 각 도시(city)에 있는 모든 부서 사원들의 평균급여가 가장 낮은 도시부터 도시명(city)과 평균연봉, 해당 도시의 사원수를 가져오시오. 단, 도시에 근 무하는 사원이 10명 이상인 곳은 제외하고 가져오시오.

26. employees, jobs, job_history. ‘Public  Accountant’의 직책(job_title)으로 과거에 근무한 적이 있는 모든 사원의 사번과 이름을 가져오시오. 현재 ‘Public Accountant’의 직책(job_title)으로 근무하는 사원은 고려 하지 말것.

27. employees, departments, locations. 커미션을 받는 모든 사람들의 first_name, last_name, 부서명, 지역 id, 도시명을 가져오시오.

28. employees. 자신의 매니저보다 먼저 고용된 사원들의 first_name, last_name, 고용일을 가져오시오.

29. employees. 매니저로 근무하는 사원이 총 몇명인가?

30. employees. 자신의 매니저보다 연봉(salary)를 많이 받는 사원들의 성(last_name)과 연봉(salary)를 가져오시오.

31. employees. 총 사원 수 및 2003, 2004, 2005, 2006 년도 별 고용된 사원들의 총 수를 가져오시오.

32. employees, departments. 2007년에 입사(hire_date)한 사원들의 사번(employee_id), 이름(first_name), 성(last_name), 부서명(department_name)을 가져오시오. 단, 부서에 배치되지 않은 사원은 'Not Assigned'로 가져오시오.

33. employees. 직업이 'AD_PRESS' 인 사람은 A 등급을, 'ST_MAN' 인 사람은 B 등급을, 'IT_PROG' 인 사람은 C 등급을, 'SA_REP' 인 사람은 D 등급을, 'ST_CLERK' 인 사람은 E 등급을 기타는 0 을 부여하여 가져오시오.

34. employees, jobs. 업무명(job_title)이 ‘Sales Representative’인 사원 중에서 연봉(salary)이 9,000이상, 10,000 이하인 사원들의 이름(first_name), 성(last_name)과 연봉(salary)를 가져오시오.

35. employees, departments. 부서별로 가장 적은 급여를 받고 있는 사원의 이름, 부서이름, 급여를 가져오시오. 이름은 last_name만 가져오고, 부서이름으로 오름차순 정렬하고, 부서가 같은 경우 이름을 기준 으로 오름차순 정렬하여 가져오시오. 

36. employees, departments, locations. 사원의 부서가 속한 도시(city)가 ‘Seattle’인 사원의 이름, 해당 사원의 매니저 이름, 사원 의 부서이름을 가져오시오. 이때 사원의 매니저가 없을 경우 ‘없음’이라고 가져오시오. 이름은 last_name만 가져오고, 사원의 이름을 오름차순으로 정렬하시오.

37. employees, jobs. 각 업무(job) 별로 연봉(salary)의 총합을 구하고자 한다. 연봉 총합이 가장 높은 업무부터 업무명(job_title)과 연봉 총합을 가져오시오. 단 연봉총합이 30,000보다 큰 업무만 가져오시오.

38. employees, departments, locations, jobs. 각 사원(employee)에 대해서 사번(employee_id), 이름(first_name), 업무명(job_title), 부서 명(department_name)을 가져오시오. 단 도시명(city)이 ‘Seattle’인 지역(location)의 부서 (department)에 근무하는 사원을 사원번호 오름차순으로 가져오시오.

39. employees. 2001~20003년사이에 입사한 사원의 이름(first_name), 입사일(hire_date), 관리자사번 (employee_id), 관리자 이름(fist_name)을 가져오시오. 단, 관리자가 없는 사원정보도 결과에 포함시켜 가져오시오.

40. employees, departments. ‘Sales’ 부서에 속한 사원의 이름(first_name), 급여(salary), 부서이름(department_name)을 가져오시오. 단, 급여는 100번 부서의 평균보다 적게 받는 사원 정보만 가져오시오.

41. employees. last_name 에 'u' 가 포함되는 사원들과 동일 부서에 근무하는 사원들의 사번 및 last_name을 가져오시오.

42. employees, departments. 부서별 사원들의 최대, 최소, 평균급여를 조회하되, 평균급여가 ‘IT’ 부서의 평균급여보다 많고, ‘Sales’ 부서의 평균보다 적은 부서 정보만 가져오시오. 

43. employees, departments. 각 부서별로 사원이 한명만 있는 부서만 가져오시오. 단, 사원이 없는 부서에 대해서는 ‘신생부서’라는 문자열을 가져오고,  결과는 부서명이 내림차순으로 정렬되게 하시오.

44. employees, departments. 부서별 입사월별 사원수를 가져오시오. 단, 사원수가 5명 이상인 부서만 가져오고,  결과는 부서이름 순으로 하시오.

45. employees, departments, locations, countries. 국가(country_name) 별 도시(city)별 사원수를 가져오시오.  부서정보가 없는 사원은 국가명과 도시명 대신에 ‘부서없음’을 넣어서 가져오시오.

46. employees, departments. 각 부서별 최대 급여자의 아이디(employee_id), 이름(first_name), 급여(salary)를 가져오시오.

47. employees. 커미션(commission_pct)별 사원수를 가져오시오. 커미션은 0.2, 0.25는 모두 0.2로, 0.3, 0.35는 0.3 형태로 바꾸시오. 단, 커미션 정보가 없는 사원들도 있는 데 커미션이 없는 사원 그룹은 ‘커미션 없음’으로 바꿔 가져오시오.

48. employees, departments. 커미션(commission_pct)을 가장 많이 받은 상위 4명의 부서명(department_name), 사원명 (first_name), 급여(salary), 커미션(commission_pct) 정보를 가져오시오. 결과는 커미션 을 많이 받는 순서로 가져오되 동일한 커미션에 대해서는 급여가 높은 사원을 먼저 정렬하시오.

49. tblInsa. 부서별 기본급이 가장 높은 사람을 가져오시오. (이름, 부서, 기본급)       

50. tblTodo. 등록 후 가장 빠르게 완료한 할일을 순서대로 상위 5개를 가져오시오.

*/


--1. tblStaff, tblProject. 현재 재직중인 모든 직원의 이름, 주소, 월급, 담당프로젝트명을 가져오시오.
SELECT 
    s.name, 
    s.address, 
    s.salary, 
    p.projectname 
FROM tblstaff s
    LEFT OUTER JOIN tblProject p
        ON s.seq = p.staffseq;

--2. tblVideo, tblRent, tblMember. '뽀뽀할까요' 라는 비디오를 빌려간 회원의 이름은?
SELECT m.name, v.name FROM tblvideo v
    INNER JOIN tblrent r
        ON v.seq = r.video
            INNER JOIN tblmember m
                ON m.seq = r.member
                    WHERE v.name = '뽀뽀할까요';

--3. tblStaff, tblProejct. '노조협상'을 담당한 직원의 월급은 얼마인가?
SELECT s.name, s.salary FROM tblstaff s
    INNER JOIN tblproject p
        ON s.seq = p.staffseq
            WHERE p.projectname = '노조 협상';
    
--4. tblVideo, tblRent, tblMember. '털미네이터' 비디오를 한번이라도 빌려갔던 회원들의 이름은?
SELECT m.name AS "회원이름", v.name AS "비디오이름" FROM tblvideo v
    INNER JOIN tblrent r
        ON v.seq = r.video
            INNER JOIN tblmember m
                ON m.seq = r.member
                    WHERE v.name = '털미네이터';

--5. tblStaff, tblProject. 서울시에 사는 직원을 제외한 나머지 직원들의 이름, 월급, 담당프로젝트명을 가져오시오.
SELECT s.name, s.salary, p.projectname FROM tblstaff s
    INNER JOIN tblproject p
        ON s.seq = p.staffseq
            WHERE address <> '서울시';

--6. tblCustomer, tblSales. 상품을 2개(단일상품) 이상 구매한 회원의 연락처, 이름, 구매상품명, 수량을 가져오시오.
SELECT c.name, c.tel, s.item, s.qty FROM tblcustomer c
    INNER JOIN tblsales s
        ON c.seq = s.customerseq
            WHERE qty >= 2;

--7. tblVideo, tblRent, tblGenre. 모든 비디오 제목, 보유수량, 대여가격을 가져오시오.
SELECT 
    DISTINCT(v.name), 
    v.qty,
    v.qty - (SELECT COUNT(*) FROM tblRent WHERE video = v.seq AND retdate IS NULL) AS "현재수량",
    g.price 
FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre
            LEFT OUTER JOIN tblrent r
                ON v.seq = r.video;

SELECT * FROM tblvideo;

--8. tblVideo, tblRent, tblMember, tblGenre. 2007년 2월에 대여된 구매내역을 가져오시오. 회원명, 비디오명, 언제, 대여가격
SELECT 
    m.name,
    v.name,
    r.rentdate,
    g.price
FROM tblgenre g
    INNER JOIN tblvideo v
        ON g.seq = v.genre
            INNER JOIN tblrent r
                ON v.seq = r.video
                    INNER JOIN tblmember m
                        ON m.seq = r.member
                            WHERE TO_CHAR(r.rentdate, 'yyyy-mm') = '2007-02';


--9. tblVideo, tblRent, tblMember. 현재 반납을 안한 회원명과 비디오명, 대여날짜를 가져오시오.
SELECT 
    m.name AS "회원이름", 
    v.name AS "비디오이름", 
    r.rentdate AS "대여날짜" 
FROM tblvideo v
    INNER JOIN tblrent r
        ON v.seq = r.video
            INNER JOIN tblmember m
                ON m.seq = r.member
                    WHERE r.retdate is null;

--10. tblInsa. 남자 직원 중에서 급여를 3번째로 많이 받는 직원과 9번째로 많이 받는 직원의 급여 차액은 얼마?

---- 3번째
--SELECT * FROM 
SELECT
(SELECT b.* FROM 
    (SELECT a.* FROM
        (SELECT basicpay FROM tblinsa
            WHERE SUBSTR(ssn, 8, 1) = '1'
                GROUP BY basicpay
                    ORDER BY basicpay desc) a
                        WHERE rownum <= 3
                            ORDER BY basicpay) b
                                WHERE rownum = 1)
-                                                                
----9번째
(SELECT b.* FROM 
(SELECT a.* FROM
(SELECT basicpay FROM tblinsa
    WHERE SUBSTR(ssn, 8, 1) = '1'
        GROUP BY basicpay
            ORDER BY basicpay desc) a
                WHERE rownum <= 9
                    ORDER BY basicpay) b
                        WHERE rownum = 1)
AS "차액"
FROM dual;


--11. employees, departments. 사원들의 이름, 부서번호, 부서명을 가져오시오.
SELECT 
    e.first_name || e.last_name AS "사원이름", 
    e.department_id AS "부서번호", 
    d.department_name AS "부서명" 
FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id;

--12. employees, jobs. 사원들의 정보와 직위명을 가져오시오.
SELECT e.*, j.job_title AS "직위명" FROM employees e
    INNER JOIN jobs j
        ON j.job_id = e.job_id;

--13. employees, jobs. 직무(job_id)별 최고급여(max_salary) 받는 사원 정보를 가져오시오.
SELECT * FROM employees
WHERE (job_id, salary) IN
    (SELECT j.job_id, MAX(e.salary) 
        FROM employees e
            INNER JOIN jobs j
                ON e.job_id = j.job_id
                    GROUP BY j.job_id);

SELECT * FROM employees WHERE (salary, job_id) IN
    (SELECT max_salary, job_id FROM jobs);

--14. departments, locations. 모든 부서와 각 부서가 위치하고 있는 도시의 이름을 가져오시오.
SELECT d.department_name, l.city FROM departments d
    LEFT OUTER JOIN locations l
        ON d.location_id = l.location_id;

--15. locations, countries. location_id 가 2900인 도시가 속한 국가 이름을 가져오시오.
SELECT c.country_name FROM locations l
    INNER JOIN countries c
        ON l.country_id = c.country_id
            WHERE l.location_id = 2900;

--16. employees. 급여를 12000 이상 받는 사원과 같은 부서에서 근무하는 사원들의 이름, 급여, 부서번호를 가져오시오.
SELECT 
    first_name || last_name AS "사원이름", 
    salary AS "급여", 
    department_id AS "부서번호" 
FROM employees
    WHERE department_id IN 
    (SELECT department_id FROM employees
        WHERE salary >= 12000
            GROUP BY department_id);

--17. employees, departments. locations.  'Seattle'에서(LOC) 근무하는 사원의 이름, 직위, 부서번호, 부서이름을 가져오시오.
SELECT 
    e.first_name || e.last_name AS "이름", 
    d.department_id AS "부서번호",
    d.department_name "부서이름"
FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id
            INNER JOIN locations l
                ON d.location_id = l.location_id
                    WHERE l.city = 'Seattle';

--18. employees, departments. first_name이 'Jonathon'인 직원과 같은 부서에 근무하는 직원들 정보를 가져오시오.
SELECT * FROM employees
WHERE department_id = 
(SELECT d.department_id 
FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id
            WHERE e.first_name = 'Jonathon');

--19. employees, departments. 사원이름과 그 사원이 속한 부서의 부서명, 그리고 월급을 출력하는데 월급이 3000이상인 사원을 가져오시오.
SELECT 
    e.first_name || e.last_name AS "사원이름",
    d.department_name AS "부서명",
    e.salary AS "월급"
FROM employees e
    LEFT OUTER JOIN departments d
        ON e.department_id = d.department_id
            WHERE salary >= 3000;

--20. employees, departments. 부서번호가 10번인 사원들의 부서번호, 부서이름, 사원이름, 월급을 가져오시오.
SELECT 
    d.department_id AS "부서번호",
    d.department_name AS "부서이름",
    e.first_name || e.last_name AS "사원이름",
    e.salary AS "월급"
FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id
            WHERE d.department_id = 10;

SELECT * FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id;
--21. employees, departments. 모든 부서의 정보를 가져오되 부서장이 있는 부서는 부서장의 정보도 같이 가져오시오.
SELECT d.*, e.* FROM employees e
    RIGHT OUTER JOIN departments d
        ON e.employee_id = d.manager_id;

--22. departments, job_history. 퇴사한 사원의 입사일, 퇴사일, 근무했던 부서 이름을 가져오시오.
SELECT 
    j.start_date AS "입사일",
    j.end_date AS "퇴사일",
    d.department_name AS "부서"
FROM departments d
    INNER JOIN job_history j
        ON j.department_id = d.department_id;

--23. employees. 사원번호와 사원이름, 그리고 그 사원을 관리하는 관리자의 사원번호와 사원이름을 출력하되 각각의 컬럼명을 '사원번호', '사원이름', '관리자번호', '관리자이름'으로 하여 가져오시오.
SELECT 
    e1.employee_id AS "사원번호",
    e1.first_name || e1.last_name AS "사원이름",
    e2.employee_id AS "관리자번호",
    e2.first_name || e2.last_name AS "관리자이름"
FROM employees e1
    LEFT OUTER JOIN employees e2
        ON e1.manager_id = e2.employee_id
            ORDER BY 사원번호; 
--        AND e1.manager_id IS NOT NULL; 

SELECT * from employees;

--24. employees, jobs. 직책(Job Title)이 Sales Manager인 사원들의 입사년도와 입사년도(hire_date)별 평균 급여를 가져오시오. 년도를 기준으로 오름차순 정렬.
SELECT 
    TO_CHAR(e.hire_date, 'yyyy') AS "입사년도",
    avg(e.salary) AS "년도별 평균 급여"
FROM employees e
    INNER JOIN jobs j
        ON j.job_id = e.job_id
            WHERE job_title = 'Sales Manager'
                GROUP BY TO_CHAR(e.hire_date, 'yyyy')
                    ORDER BY 입사년도 ASC;


SELECT * FROM employees;

--25. employees, departments. locations. 각 도시(city)에 있는 모든 부서 사원들의 평균급여가 가장 낮은 도시부터 도시명(city)과 평균연봉, 해당 도시의 사원수를 가져오시오. 
--    단, 도시에 근 무하는 사원이 10명 이상인 곳은 제외하고 가져오시오.
--SELECT * FROM locations;
--SELECT * FROM employees;
--SELECT * FROM departments;
--SELECT 
--    *
--FROM employees e
--    INNER JOIN departments d
--        ON e.department_id = d.department_id
--            INNER JOIN locations l
--                ON l.location_id = d.location_id;

-- 정답?..   
SELECT * FROM                 
    (SELECT 
        l.city AS "도시명", 
        avg(salary) AS "평균급여",
        COUNT(*) AS "사원수"
    FROM employees e
        INNER JOIN departments d
            ON e.department_id = d.department_id
                INNER JOIN locations l
                    ON l.location_id = d.location_id
                        GROUP BY l.city
                            ORDER BY 평균급여) 
                                WHERE "사원수" < 10;


-- 모든 부서 사원들의 평균급여가 가장 낮은 도시부터 뽑아냄
SELECT 
    d.department_name AS "부서명", 
    avg(salary) AS "평균급여",
    COUNT(*) AS "사원수"
FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id
            INNER JOIN locations l
                ON l.location_id = d.location_id
                    GROUP BY d.department_name
                        ORDER BY 평균급여;

--26. employees, jobs, job_history. ‘Public  Accountant’의 직책(job_title)으로 과거에 근무한 적이 있는 모든 사원의 사번과 이름을 가져오시오. 
--    현재 ‘Public Accountant’의 직책(job_title)으로 근무하는 사원은 고려 하지 말것.
SELECT * FROM employees e --??
    INNER JOIN jobs j
        ON e.job_id = j.job_id
            INNER JOIN job_history h
                ON j.job_id = h.job_id;


SELECT * FROM jobs;
SELECT * FROM job_history;    


--27. employees, departments, locations. 커미션을 받는 모든 사람들의 first_name, last_name, 부서명, 지역 id, 도시명을 가져오시오.
SELECT 
    e.first_name || e.last_name AS 사원이름,
    d.department_name AS 부서명,
    l.location_id AS 지역ID,
    l.city AS "도시명"
FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id
            INNER JOIN locations l
                ON d.location_id = l.location_id
                    WHERE e.commission_pct IS NOT NULL;
                    
--28. employees. 자신의 매니저보다 먼저 고용된 사원들의 first_name, last_name, 고용일을 가져오시오.
SELECT 
    e1.employee_id AS "사원번호",
    e1.first_name || e1.last_name AS "사원이름",
    e2.employee_id AS "관리자번호",
    e2.first_name || e2.last_name AS "관리자이름",
    e1.hire_date AS "사원 고용일",
    e2.hire_date AS "매니저 고용일"
FROM employees e1
    INNER JOIN employees e2
        ON e1.manager_id = e2.employee_id
            WHERE TO_CHAR(e1.hire_date, 'yyyy-mm-dd') < TO_CHAR(e2.hire_date, 'yyyy-mm-dd')
                ORDER BY 사원번호;


SELECT * FROM employees;

--29. employees. 매니저로 근무하는 사원이 총 몇명인가?
SELECT COUNT(*) AS "매니저 수" FROM 
(SELECT DISTINCT(manager_id) FROM employees
    WHERE manager_id IS NOT NULL
        GROUP BY manager_id);

--30. employees. 자신의 매니저보다 연봉(salary)를 많이 받는 사원들의 성(last_name)과 연봉(salary)를 가져오시오.
SELECT 
    e1.last_name AS "사원 성",
    (e1.salary * 12) AS "사원 연봉",
    e2.last_name AS "매니저 성",
    (e2.salary * 12) AS "매니저 연봉"
FROM employees e1
    INNER JOIN employees e2
        ON e1.manager_id = e2.employee_id
            WHERE e1.salary * 12 >= e2.salary * 12 ;

--31. employees. 총 사원 수 및 2003, 2004, 2005, 2006 년도 별 고용된 사원들의 총 수를 가져오시오.
SELECT 
    TO_CHAR(hire_date, 'yyyy') AS "연도 별",
    COUNT(*) AS "연도 별 고용인원수" 
FROM employees
    WHERE TO_CHAR(hire_date, 'yyyy') IN ('2003', '2004', '2005', '2006')
        GROUP BY TO_CHAR(hire_date, 'yyyy')
            ORDER BY "연도 별";
            
SELECT 
    COUNT(*) AS "총 사원수",
    COUNT(CASE
        WHEN TO_CHAR(hire_date, 'yyyy') = '2003' THEN 1
    END) AS "2003",
    COUNT(CASE
        WHEN TO_CHAR(hire_date, 'yyyy') = '2004' THEN 1
    END) AS "2004",
    COUNT(CASE
        WHEN TO_CHAR(hire_date, 'yyyy') = '2005' THEN 1
    END) AS "2005",
    COUNT(CASE
        WHEN TO_CHAR(hire_date, 'yyyy') = '2006' THEN 1
    END) AS "2006"
FROM employees;

-- 32. employees, departments. 2007년에 입사(hire_date)한 사원들의 사번(employee_id), 이름(first_name), 성(last_name), 부서명(department_name)을 가져오시오. 
-- 단, 부서에 배치되지 않은 사원은 'Not Assigned'로 가져오시오.
SELECT 
    e.employee_id AS "사번",
    e.first_name AS "이름",
    e.last_name AS "성",
    CASE
        WHEN d.department_id IS NULL THEN 'Not Assigned'
        WHEN d.department_id IS NOT NULL THEN d.department_name
    END AS "부서명"    
FROM employees e
    LEFT OUTER JOIN departments d
        ON e.department_id = d.department_id
            WHERE TO_CHAR(e.hire_date, 'yyyy') = '2007'
                ORDER BY 사번 ASC; 



SELECT * FROM employees;


--33. employees. 직업이 'AD_PRESS' 인 사람은 A 등급을, 'ST_MAN' 인 사람은 B 등급을, 'IT_PROG' 인 사람은 C 등급을,
--    'SA_REP' 인 사람은 D 등급을, 'ST_CLERK' 인 사람은 E 등급을 기타는 0 을 부여하여 가져오시오.
SELECT 
    job_id AS "직업",
    CASE
        WHEN job_id = 'AD_PRES' THEN 'A'
        WHEN job_id = 'ST_MAN' THEN 'B'
        WHEN job_id = 'IT_PROG' THEN 'C'
        WHEN job_id = 'SA_REP' THEN 'D'
        WHEN job_id = 'ST_CLERK' THEN 'E'
        ELSE '0'
    END AS "등급"
FROM employees;


--34. employees, jobs. 업무명(job_title)이 ‘Sales Representative’인 사원 중에서 
--    연봉(salary)이 9,000이상, 10,000 이하인 사원들의 이름(first_name), 성(last_name)과 연봉(salary)를 가져오시오.
SELECT 
    e.first_name AS 이름,
    e.last_name AS 성,
    salary AS 연봉
FROM employees e
    INNER JOIN jobs j
        ON e.job_id = j.job_id
            WHERE j.job_title = 'Sales Representative' AND e.salary >= 9000 AND e.salary <= 10000;


--35. employees, departments. 부서별로 가장 적은 급여를 받고 있는 사원의 이름, 부서이름, 급여를 가져오시오.
--    이름은 last_name만 가져오고, 부서이름으로 오름차순 정렬하고, 부서가 같은 경우 이름을 기준 으로 오름차순 정렬하여 가져오시오. 

SELECT d.department_id, min(salary) FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id
            GROUP BY d.department_id;









