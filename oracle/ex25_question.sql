--ex25_question.sql
/*
1. tblCountry. 모든 행과 모든 컬럼을 가져오시오.

2. tblCountry. 국가명과 수도명을 가져오시오.

3. tblCountry. 아래와 같이 가져오시오.
    [국가명]       [수도명]       [인구수]       [면적]        [대륙]
    대한민국        서울          4405           10           AS
    ..

4. tblCountry. 아래와 같이 가져오시오.
    [국가정보]
    국가명:대한민국, 수도명:서울, 인구수:4405
    국가명:중국, 수도명:베이징, 인구수: 120660
    ..

5. employees. 직원명, 이메일, 연락처, 급여를 가져오시오.
    [이름]            [이메일]                   [연락처]           [급여]
    Steven King       SKING@GMAIL.COM           515.123.4567     $24000
    ..

6. tblCountry. 면적(area)이 100이하인 국가의 이름과 면적을 가져오시오.

7. tblCountry. 아시아와 유럽 대륙에 속한 나라를 가져오시오.

8. employees. 직업(job_id)이 프로그래머(it_prog)인 직원의 이름(풀네임)과 연락처 가져오시오.

9. employees.  last_name이 'Grant'인 직원의 이름, 연락처, 고용날짜를 가져오시오.

10. employees. 특정 매니저(120)이 관리하는 직원의 이름, 급여, 연락처를 가져오시오.

11. employees. 특정 부서(60, 80, 100)에 속한 직원들의 이름, 연락처, 이메일, 부서ID 가져오시오.

12. tblInsa. 기획부 직원들을 모두 가져오시오.

13. tblInsa. 서울에 있는 직원들 중 직위가 부장인 사람의 이름, 직위, 전화번호를 가져오시오.

14. tblInsa. 기본급여 + 수당 합쳐서 150만원 이상인 직원 중 서울에 직원만 가져오시오.

15. tblInsa. 수당이 15만원 이하인 직원 중 직위가 사원, 대리만 가져오시오.

16. tblInsa. 수당을 제외한 기본 연봉이 2천만원 이상, 서울, 직위 과장(부장)만 가져오시오

17. tblCountry. 국가명 'O국'인 나라를 가져오시오.
    a. 국가명 2글자
    b. 국가명 글자수 상관없이

18. employees. 연락처가 '515'로 시작하는 직원들을 가져오시오.

19. employees. 직업 ID가 'SA'로 시작하는 직원들을 가져오시오.

19. employees. first_name에 'de'가 들어간 직원들을 가져오시오.(대소문자 상관없이)

20. tblInsa. 남자 직원만 가져오시오.

21. tblInsa. 여자 직원만 가져오시오.

22. tblInsa. 여름에 태어난 직원들을 가져오시오.(7~9월생)

23. tblInsa. 서울, 인천에 사는 김씨 성을 가진 직원들을 가져오시오.

24. tblInsa. 영업부/총무부/개발부 직원 중  사원급(사원/대리) 중에 010을 사용하는 직원들을 가져오시오.

25. tblInsa. 서울/인천/경기에 살고 입사일이 1998~2000년 사이인 직원들을 가져오시오.

26. employees. 아직 부서가 배정 안된 직원들을 가져오시오.

27. employees. 해당 테이블에는 직업의 종류가 어떤 것들이 있습니까?

28. employees. 고용일이 2002~2004년 사이인 직원들은 어느 부서에 근무합니까?

29. employees. 급여가 5000불 이상인 직원들은 담당 매니저가 누구입니까?

30. tblInsa. 남자이며 80년대생은 직급이 어떤 것들이 있습니까?

31. tblInsa. 수당 20만원 넘는 직원들은 어디 삽니까?

32. tblInsa. 연락처가 아직 없는 직원은 어느 부서입니까?

33. tblCountry. 아시아와 유럽에 속한 국가는 총 몇개입니까?

34. tblCountry. 인구가 5000 ~ 20000 사이인 국가 총 몇개입니까? 

35. employees. 직업이 'IT_PROG'인 직원 중에서 급여가 5000불 넘는 직원 몇명입니까?

36. tblInsa. 010이 아닌 번호를 사용하는 직원은 몇명입니까?(연락처가 없는 사람 제외)

37. tblInsa. 서울 사람 빼고 나머지는 모두 몇명입니까?

38. tblInsa. 남자 직원은 모두 몇명입니까?

39. tblCountry. 유럽과 아프리카에 속한 나라의 모든 인구의 합은?

40. employees. 매니저(108)이 관리하고 있는 직원들의 급여 총 합은?

41. employees. 직업이 ST_CLERK, SH_CLERK인 직원들을 급여 총 합은?

42. tblInsa. 서울에 있는 직원들의 급여 합은(급여 + 수당)?

43. tblInsa. 장급(부장+과장)들의 총 급여 합은?

44. tblCountry. 아시아에 속한 국가의 평균 인구수는?

45. employees. 이름(first_name)에 'AN'이 포함된 직원들의 평균 급여는?(대소문자 구분없이)

46. tblInsa. 간부급(과장,부장)들의 평균 급여는?

47. tblInsa. 사원급(사원,대리)들의 평균 급여는?

48. tblCountry. 면적이 가장 넓은 나라의 면적은?

49. tblInsa. 급여(급여+수당)가 가장 적게 받는 직원의 금액은?

50. tblInsa. 직원명과 태어난 년도을 가져오되 태어난 년도를 오름차순으로 가져오시오.

51. tblInsa. 서울에 사는 여직원 중 80년대생 몇명인지?

52. tblInsa. 간부급(과장/부장)들은 어떤 성(김,이,박..)이 있는지?

53. tblInsa. 직원들을 태어난 월순으로 정렬해서 가져오시오.(오름차순 → 월, 이름)

54. tblInsa. 모든 직원을 남자 → 여자 순으로 가져오시오. (같은 성별끼리는 이름순으로 정렬)

55. employees. 이름(first_name + last_name)이 가장 긴 순서대로 가져오시오.

56. employees. 이름(first_name + last_name)이 가장 긴사람은 몇글자?

57. employees. last_name이 4자인 사람들은 first_name이 몇글자?

58. tblCountry. 대륙별로 최대 인구수, 최소 인구수,  최대 면적, 최소 면적을 가져오시오.

59. employees. 직업별 직원수를 가져오시오.

60. tblInsa. 부서별 직원수를 가져오시오. + 직원이 많은 순으로..

61. tblInsa. 지역별 직원수를 가져오시오. + 직원이 많은 순으로..

62. tblInsa. 부서별 직원들의 급여합을 가져오시오.(basicpay + sudang)

63. tblInsa. 성별 인원수를 가져오시오.

64. tblInsa. 태어난 월별 인원수를 가져오시오.

65. tblInsa. 부서별로 직급의 인원수 가져오시오.
    [부서]        [총인원]       [부장]        [과장]        [대리]        [사원]
    기획부         6             1            1            2            2
    영업부         13            1            2            3            7
    ..

66. tblInsa. 지역별 그룹을 나누고 그룹별 총 인원이 10명 넘는 지역의 이름과 인원수를 가져오시오.

67. tblCountry. 최대 인구를 가지는 국가의 이름은?

68. tblCountry. 최소 인구를 가지는 국가의 이름은?

69. tblInsa. 월급이 가장 많은 직원 이름?

70. tblInsa. 월급이 가장 적은 직원 이름?

71. tblInsa. 평균 급여보다 많이 받는 직원들은?

72. tblname. 가장 키가 큰 사람의 이름은?

73. tblname. 가장 몸무게가 적은 사람의 이름은?

74. tblInsa. '김정훈'보다 월급 더 많이 받는 사람을 가져오시오.

75. employees. departments. locations. 'London'에 위치한 부서에 근무하는 직원들을 가져오시오.

76. tblInsa. 수당을 21만원 이상 받는 직원들이 소속된 부서의 직원들 명단을 가져오시오.

77. tblDiary. 날씨별 적은 다이어리의 갯수를 가져오시오. (갯수를 내림차순으로)

78. tblHouseKeeping. 구매한 물건의 총합(price * qty)이 많은 순서대로 가져오시오.

79. tblZoo. 종류(family)별 평균 다리의 갯수를 가져오시오.

80. tblZoo. 체온이 변온인 종류 중 아가미 호흡과 폐 호흡을 하는 종들의 갯수를 가져오시오.

81. tblZoo. 사이즈와 종류별로 그룹을 나누고 각 그룹의 갯수를 가져오시오.

82. tblMen. tblWomen. 서로 짝이 있는 사람 중 남자와 여자의 정보를 모두 가져오시오.
    [남자]        [남자키]   [남자몸무게]     [여자]    [여자키]   [여자몸무게]
    홍길동         180       70            장도연     177        65
    아무개         175       null          이세영     163        null
    ..

83. tblTodo. 완료한 일의 갯수와 완료하지 않은 일의 갯수를 가져오시오.

84. tblAddressBook. 서울에 사는 10대, 20대, 30대, 40대 인원수를 가져오시오.

85. tblAddressBook. 현재 주소(address)와 고향(hometown)이 같은 지역인 사람들을 가져오시오.

86. tblAddressBook. 역삼로에 사는 사람 중 gmail을 사용하는 사람들을 가져오시오.

87. tblAddressBook. 가장 많은 사람들이 가지고 있는 직업은 주로 어느 지역 태생(hometown)인가?

88. tblAddressBook. 전화번호에 '123'이 들어간 사람 중 여학생만을 가져오시오.

89. tblAddressBook. 관리자의 실수로 몇몇 사람들의 이메일 주소가 중복되었다. 중복된 이메일 주소만 가져오시오.

90. tblAddressBook. 이메일 도메인들 중 평균 아이디 길이가 가장 긴 이메일 사이트의 도메인은 무엇인가?

91. tblAddressBook. 평균 나이가 가장 많은 출신(hometown)들이 가지고 있는 직업 중 가장 많은 직업은?

92. tblAddressBook. 성씨별 인원수가 100명 이상 되는 성씨들을 가져오시오.

93. tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.

94. tblAddressBook. 이메일이 스네이크 명명법으로 만들어진 사람들 중에서 여자이며, 20대이며, 키가 150~160cm 사이며, 고향이 서울 또는 인천인 사람들만 가져오시오.

95. tblAddressBook. gmail.com을 사용하는 사람들의 성별 > 세대별(10,20,30,40대) 인원수를 가져오시오.

96. tblAddressBook. 가장 나이가 많으면서 가장 몸무게가 많이 나가는 사람과 같은 직업을 가지는 사람들을 가져오시오.

97. tblAddressBook. '건물주'와 '건물주자제분'들의 거주지가 서울과 지방의 비율이 어떻게 되느냐?

98. tblAddressBook.  동명이인이 여러명 있습니다. 이 중 가장 인원수가 많은 동명이인(모든 이도윤)의 명단을 가져오시오.

99. tblAddressBook. 가장 사람이 많은 직업의(332명) 세대별 비율을 구하시오.
    [10대]       [20대]       [30대]       [40대]
    8.7%        30.7%        28.3%        32.2%
*/

--76. tblInsa. 수당을 21만원 이상 받는 직원들이 소속된 부서의 직원들 명단을 가져오시오.
SELECT name, buseo FROM tblinsa
    WHERE buseo IN (SELECT buseo FROM tblinsa WHERE sudang > 210000);

--79. tblZoo. 종류(family)별 평균 다리의 갯수를 가져오시오.
SELECT family, ROUND(AVG(leg),1)
FROM tblzoo
GROUP BY family;
    
--80. tblZoo. 체온이 변온인 종류 중 아가미 호흡과 폐 호흡을 하는 종들의 갯수를 가져오시오.
SELECT 
    COUNT(CASE
        WHEN breath = 'gill' THEN 1
    END) AS "아가미호흡 종갯수",
    COUNT(CASE
        WHEN breath = 'lung' THEN 1
    END) AS "폐호흡 종갯수"
FROM tblzoo 
    WHERE thermo = 'variable';
    
SELECT family, COUNT(*) 
FROM tblzoo 
    WHERE thermo = 'variable' 
        AND breath IN ('gill', 'lung')
            GROUP BY family;

--81. tblZoo. 사이즈와 종류별로 그룹을 나누고 각 그룹의 갯수를 가져오시오.
SELECT family AS "종류", sizeof AS "크기" , COUNT(*) AS "개수"
FROM tblzoo
GROUP BY family, sizeof
ORDER BY family;

--82. tblMen. tblWomen. 서로 짝이 있는 사람 중 남자와 여자의 정보를 모두 가져오시오.
SELECT * FROM tblmen m
    INNER JOIN tblwomen w
        ON m.name = w.couple;

--83. tblTodo. 완료한 일의 갯수와 완료하지 않은 일의 갯수를 가져오시오.
SELECT 
    COUNT(CASE
        WHEN completedate IS NULL THEN 1
    END) AS "완료안함",
    COUNT(CASE
        WHEN completedate IS NOT NULL THEN 1
    END) AS "완료"
FROM tbltodo;

--84. tblAddressBook. 서울에 사는 10대, 20대, 30대, 40대 인원수를 가져오시오.
SELECT * FROM tbladdressbook WHERE SUBSTR(address, 1, 2) = '서울';

SELECT * 
FROM tbladdressbook 
    WHERE SUBSTR(age, 1, 1) IN (1, 2, 3, 4) 
        AND SUBSTR(address, 1, 2) = '서울';

--85. tblAddressBook. 현재 주소(address)와 고향(hometown)이 같은 지역인 사람들을 가져오시오.
SELECT * FROM tbladdressbook
    WHERE address LIKE '%' || hometown || '%';
    
SELECT * FROM tbladdressbook;

--86. tblAddressBook. 역삼로에 사는 사람 중 gmail을 사용하는 사람들을 가져오시오.
SELECT * 
FROM tbladdressbook 
    WHERE address LIKE '%역삼로%' 
        AND email LIKE '%gmail%';


--87. tblAddressBook. 가장 많은 사람들이 가지고 있는 직업은 주로 어느 지역 태생(hometown)인가?                
--------------------결과물 (태생 서울)
SELECT b.hometown AS "태생" FROM 
(SELECT hometown, COUNT(*) FROM tbladdressbook
    WHERE job = (SELECT a.job FROM
        (SELECT job, COUNT(*) FROM tbladdressbook
            GROUP BY job
                ORDER BY COUNT(*) DESC) a
                    WHERE rownum = 1)
                        GROUP BY hometown
                            ORDER BY COUNT(*) DESC) b
                                WHERE rownum = 1;

--88. tblAddressBook. 전화번호에 '123'이 들어간 사람 중 여학생만을 가져오시오.
SELECT * FROM tbladdressbook WHERE tel LIKE '%123%' AND gender = 'f';

--89. tblAddressBook. 관리자의 실수로 몇몇 사람들의 이메일 주소가 중복되었다. 중복된 이메일 주소만 가져오시오. 
SELECT email FROM tbladdressbook 
    GROUP BY email
        HAVING COUNT(*) > 1;
        
 --90. tblAddressBook. 이메일 도메인들 중 평균 아이디 길이가 가장 긴 이메일 사이트의 도메인은 무엇인가?
 


--91. tblAddressBook. 평균 나이가 가장 많은 출신(hometown)들이 가지고 있는 직업 중 가장 많은 직업은?

--SELECT * FROM tbladdressbook
-- 2번째 잡으로 그룹을 한번더 묶은것중 가장많은 수의 직업을 추출(학생)
SELECT a.job FROM
(SELECT job, COUNT(*) FROM tbladdressbook
    WHERE hometown = (SELECT hometown 
        FROM (SELECT hometown, AVG(age) 
            FROM tbladdressbook
                GROUP BY hometown
                    ORDER BY AVG(age) desc)
                        WHERE rownum = 1)
                            GROUP BY job
                                ORDER BY COUNT(*) DESC) a
                                    WHERE rownum = 1;


----------------------- 1. 첫번째 그룹바이(결과물 광주)
SELECT hometown
FROM (SELECT hometown, AVG(age) FROM tbladdressbook
    GROUP BY hometown
        ORDER BY AVG(age) desc)
            WHERE rownum = 1;
----------------------
--92. tblAddressBook. 성씨별 인원수가 100명 이상 되는 성씨들을 가져오시오.
SELECT SUBSTR(name, 1, 1)) FROM tbladdressbook
    WHERE (SELECT name FROM tbladdressbook
            GROUP BY name;
        

SELECT * FROM tbladdressbook;







