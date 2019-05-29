--강사,교재,과정,과정명,과정과목

--강사 더미
--insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
--    values (1, '유병현', '910121-1000000','010-1111-1111', '서울시 송파구 성내천로 37길 37', '2019-01-20', '회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (2, '안지윤', '900121-1444524','010-1441-1333', '경기도 안산시 단원로 23번지', '18/05/30', '회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (3	,'김정앙',	'890321-1324524',	'010-5544-1333',	'경기도 안성시 공도읍 문터1길 6',	'18/04/25',	'회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (4	,'유봉현',	'890121-1124524',	'010-4244-3833',	'경기도 의정부시 신흥로106번길 4',	'17/07/25	','회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (5	,'이예춘',	'910312-1354524',	'010-5844-3933',	'서울특별시 강동구 성내로14길 18',	'18/09/25	','회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (6	,'박혼정',	'901212-1234524',	'010-7777-4933',	'서울특별시 강동구 진황도로 145',	'19/01/27	','회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (7	,'정휘진',	'881112-1337524',	'010-7766-3753',	'서울특별시 광진구 아차산로34길 5',	'19/01/21',	'회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (8	,'최다비',	'871011-1437524',	'010-7749-3358',	'서울특별시 강남구 역삼로 146'	,'19/01/04',	'회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (9	,'박준웅',	'900411-1736524',	'010-7089-0903',	'서울특별시 구로구 구로동로7다길 7',	'18/12/04',	'회원');
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (10	,'조준찬',	'890410-1745324',	'010-0089-0003',	'서울특별시 마포구 성미산로15길 80',	'19/12/12	','회원');
------------------------------------------------------------------------------------------------------------------------------
-- 과정명 더미    
insert into tblCourseTitle(seq,title)
    values(2	,'BigData 관련 취업을 위한 목적으로 양성과정');
    insert into tblCourseTitle(seq,title)
    values(3	,'Oracle 관련 웹프로그랭밍 개발자 양성과정');
    insert into tblCourseTitle(seq,title)
    values(4	,'python 관련 웹, 게임, 그래픽, 데이터 분석 개발자 양성과정');
    insert into tblCourseTitle(seq,title)
    values(5	,'c# 입문자 양성과정');
    insert into tblCourseTitle(seq,title)
    values(6	,'javascript 기반 개발자 양성과정');

------------------------------------------------------------------------------------------------------------------------------
-- 과정 더미

--insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
--    values(1, 1,1, '진행중', '2019-01-28', '2019-08-21', '정보처리기사, 정보처리산업기사 등의 관련 
--    자격증을 취득 및 소프트웨어 개발업체, IT컨설팅 회사, 시스템 통합 및 구축 업체 등에 취업을 할 수
--    있는 응용SW실무개발자로 양성하는 것을 최종 목표로 한다.');

insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(2,	2,	2,	'진행중',	'19/01/07	','19/06/17', '빅데이터를 수집, 저장 및 처리하고, 플랫폼을 개발, 분석하여 의미있는 
결과를 제공하는 능력을 함양하고 데이터 집합으로부터 일정한 법칙을 추론하여 
결과 및 행동을 예측하기 위하여 조직 내, 외부의 정형 및 비정형 대용량 데이터를 
분석 기획하고 수집, 저장, 처리하여 목적에 따라 분석, 시각화를 수행하는 업무능력을 함양할 수 있도록 최종목표로 한다.');   
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(3,	3,	3,	'폐강','18/12/03'	,'19/05/28', '기업의 최근 요구사항을 반영, 전자정부 프레임워크와 Spring 
    프레임워크를 실무형프로젝트를 중심으로 학습하고 또한 SM업체로의 취업을 대비, 기존에 구축된 웹 어플리케이션의 유지 보수를
 위한 Struts 프레임워크를 학습하여 현업에 바로 적응이 가능한 실무형 개발자 양성을 목표로 한다. 
훈련과정 수료 후 본 과정에서 습득한 자바 프로그램 개발 능력을 활용하여 SI, ERP 및 CRM프로그래밍
 개발자나 웹 프로그래밍 개발자 및 웹 컴포넌트 개발자로 취업할 수 있도록 최종목표로 한다.');   
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(4,	4,	4,	'진행중',	'18/12/31','	19/06/25', '2016년 프로그래밍 언어 인기 순위에서 java, c++,
    c# 등을 제치고 1위를 한 언어로 문법이 
간결하고 표현 구조가 인간의 사고 체계와 닮아 있어 프로그래밍에 입문하는 초보자들에게 
가장 추천되는 언어이다. 당연히 오픈소스로 사용료에 대한 걱정이 없다. 파이썬은 유지 보수와
 관리도 쉽고, 다양한 라이브러리가 있어 용도 확장도 쉽고 생산성도 높아, 구글의 사내 프로젝트에서도
 가장 인기있는 언어이다. 웹개발, 데이터 분석, 머신러닝, 그래픽 등 다양한 분야에 응용, 활용할 수 있도록 최종목표로 한다.');   
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(5,	5,	5,	'진행중',	'18/12/31','	19/06/25', 'C언어 프로그래머로 취업하기 위하여, 프로그래밍 
    관련 알고리즘과 문법을 이해하고 실무 지향적인 예제를 바탕으로 전문 프로그래밍 기술을 습득합니다. 
C언어 전문 과정은 기본 문법, 알고리즘 이해, 자료 구조 등의 교육을 통해 현업에서 필요로 하는 
전문 프로그래머 양성을 목표로 합니다. 본 교육 과정 이수 후에 C언어/C++ 관련 분야에 취업이 가능하며, 
상위 프로그램 과정을 이수 하면 전문 프로그래머로 취업을 최종목표로 한다.  ');   
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(6,	6,	6,	'진행중',	'19/01/28	','19/08/21', '자바스크립트는 HTML, CSS 와 전혀 다른 언어이기에
    프로그래밍 기초 개념부터 짚어가며 배워야합니다.무작정 ‘jQuery를 활용하면 되겠지’, 
    ‘다른 사람 코드를 적당히 바꿔 쓰면 되겠지’ 라고 생각하면 안됩니다. 8주 캠프에서 탄탄한 자바스크립트 기초을 키울수 있도록 
    최종목표로 한다.');   
    
------------------------------------------------------------------------------------------------------------------------------

-- 과목별 기간
--java, oracle, jdbc, spring, python, JSP, c#, php, html5, javascript, R, mysql, bigdata, project
--: 40d   20d    10d    20d     20d   40d 40d 20d    20d     20d      10d  10d    60d        20d
--110일(5.5개월) , 120일(6개월), 140일(7개월)로 기간(시작-종료일) 맞출 것!
--insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
--    values(1, 1,1,1,1, '2019-01-28', '2019-03-28', 'eclipse를 이용한 객체지향프로그래밍'); 
--insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
--    values(2, 1,2,2,1, '2019-03-29', '2019-04-25', 'Oracle를 이용한 데이터베이스'); 
--insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
--    values(3, 1,3,3,1, '2019-04-26', '2019-05-27', 'JavaScript를 이용한 웹 클라이언트 프로그래밍'); 


-- 과정과목 더미
  
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(4, 1,4,4,1, '2019-05-28', '2019-07-23', 'JSP를 이용한 웹 서버 프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(5, 1,5,5,1, '2019-07-24', '2019-08-21', '실무 프로젝트 통합 구현');    
    commit;
    

insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(6, 2,1,1,2, '2019-01-07', '2019-03-07', 'java를 이용한 객체지향프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(7, 2,8,8,2, '2019-03-08', '2019-05-02', 'c#를 이용한 객체지향프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(8, 2,3,3,2, '2019-05-03', '2019-05-31', 'JavaScript를 이용한 웹 클라이언트 프로그래밍');    
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(9, 2,11,11,2, '2019-06-03', '2019-06-17', 'R를 이용한 객체지향프로그래밍');
  
  -------------------------------------------------------------------------------  

insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(10, 3,1,1,3, '2018-12-03', '2019-01-29', 'java를 이용한 객체지향프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(11, 3,4,4,3, '2019-01-30', '2019-04-01', 'JSP를 이용한 웹 서버 프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(12, 3,8,8,3, '2019-04-02', '2019-05-28', 'c#를 이용한 객체지향프로그래밍'); 
    
    --------------------------------------------------------
    
 insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(13, 4,13,13,4, '2018-12-31', '2019-03-29', 'bigdata를 이용한 데이터베이스'); 
 insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(14, 4,2,2,4, '2019-04-01', '2019-04-26', 'Oracle를 이용한 데이터베이스'); 
 insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(15, 4,3,3,4, '2019-04-29', '2019-05-27', 'JavaScript를 이용한 웹 클라이언트 프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(16, 4,7,7,4, '2019-05-28', '2019-06-25', 'python를 이용한 객체지향프로그래밍'); 
---------------------------------------
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(17, 5,13,13,5, '2018-12-31', '2019-03-29', 'bigdata를 이용한 데이터베이스'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(18, 5,7,7,5, '2019-04-01', '2019-04-26', 'python를 이용한 객체지향프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(19, 5,3,3,5, '2019-04-29', '2019-05-27', 'JavaScript를 이용한 웹 클라이언트 프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(20, 5,2,2,5, '2019-05-28', '2019-06-25', 'Oracle를 이용한 데이터베이스'); 
    
  select * from tblCourseSubject;
  select * from tblBook;
 ---------------------------------------------------   
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(21,6,1,1,6, '2019-01-28', '2019-03-28', 'eclipse를 이용한 객체지향프로그래밍');    
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(22,6,10,10,6, '2019-03-29', '2019-04-25', 'html5 웹 서버 프로그래밍');
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(23,6,3,3,6, '2019-04-26', '2019-05-27', 'JavaScript를 이용한 웹 클라이언트 프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(24,6,8,8,6, '2019-05-28', '2019-07-23', 'c#를 이용한 객체지향프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(25,6,7,7,6, '2019-07-24', '2019-08-21', 'python를 이용한 객체지향프로그래밍');
 
 ---------------------------------------------------    
 --교재 더미
 
insert into tblBook(seq, title, subjectseq, publisher)
    values(6, '이것이 Spring다', 6, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(7, '이것이 Python다', 7, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(8, '이것이 C#다', 8, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(9, '이것이 PHP다', 9, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(10, '이것이 HTML5다', 10, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(11, '이것이 R다', 11, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(12, '이것이 MySQL다', 12, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(13, '이것이 BigData다', 13, '쌍용교육센터');
 
    
    
    
    
    
    
    
    
