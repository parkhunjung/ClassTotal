--queryTest.sql

SELECT * FROM tblteacher;

--교사/교사담당과목/과목
SELECT * FROM tblteacher tc
    INNER JOIN tblteachersubject ts
        ON ts.teacherseq = tc.seq
            INNER JOIN tblsubject sb
                ON sb.seq = ts.subjectseq;


--M - 003 - 1
--교사 입력,수정,삭제
--입력
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (teacher_seq.nextval, '이름_변수', '주민번호_변수','전화번호_변수', '주소지_변수', default, '회원');
--수정
UPDATE tblteacher SET name = '이름_변수' WHERE seq = 1;
UPDATE tblteacher SET tel = '전화번호_변수' WHERE seq = 1;
UPDATE tblteacher SET address = '주소지_변수' WHERE seq = 1;

--삭제
UPDATE tblteacher SET delete_status = '탈퇴' WHERE seq = 1;

-- M -003- 2
--등록된 모든 교사정보 출력
SELECT * FROM tblteacher;

--특정 교사 선택시 정보 출력
SELECT 
    t.name AS "강사이름",
    --강의진행여부-----------------------------------------------------------------------------------ㅇㅇㅇㅇㅇ
    ct.title AS "과정명",
    c.begindate || ' ~ ' || c.enddate AS "과정기간",
    s.subject_name AS "과목명",
    cs.begindate || ' ~ ' || cs.enddate AS "과목기간",
    b.title AS "교재명",
    r.name AS "강의실"
FROM tblteacher t
    INNER JOIN tblcoursesubject cs
        ON t.seq = cs.teacherseq
            INNER JOIN tblcourse c
                ON c.seq = cs.courseseq
                    INNER JOIN tblcoursetitle ct
                        ON c.coursetitleseq = ct.seq
                            INNER JOIN tblsubject s
                                ON s.seq = cs.subjectseq
                                    INNER JOIN tblbook b
                                        ON b.subjectseq = s.seq
                                            INNER JOIN tblroom r
                                                ON r.seq = c.roomseq
                                                    WHERE t.delete_status = '회원';


-- M -004- 1 ~ 5  까지 insert
-- 개설 과정 관리 등록(추가)
-- status : '진행중'
-- 110일(5.5개월) , 120일(6개월), 140일(7개월)로 기간(시작-종료일) 맞출 것!
/*
***참고문***
[Java에서의 개설 과정 과목 선택 순서]
가능한 강의실 조회 >  
강의실 선택(변수로 저장) >
과정 정보 입력(변수로 저장) >
과목 조회 >
과목 선택(변수로 저장) >
강사 조회 >
강사 선택(변수로 저장) >
과목별 교재 조회 >
교재 선택(변수로 저장) >
변수들을 Insert문에 대입하여 쿼리 실행
*/
-- 남아있는 강의실 보여주기                    (수정했음. 업데이트 필요)
CREATE OR REPLACE VIEW vwEmptyRoom
AS
SELECT 
    seq as "강의실번호",
    name AS "강의실명",
    limit AS "강의실정원"
FROM tblroom WHERE not seq in
    (SELECT roomseq FROM tblCourse WHERE status = '진행중');
-- 강의실 선택완료(변수로 냅두기)
-- 과정정보 입력(변수로 냅두기)


-- 과목 조회                                (수정했음. 업데이트 필요)
SELECT * FROM tblsubject where delete_status = '가능';
-- 선택완료(변수로 냅두기)

-- 강사 조회 (위에서 선택한 과목이 가능한 강사목록(숫자))
-- 숫자에 들어가는 수는 나중에 변수로
SELECT 
    name AS "강사이름",
    TO_CHAR(SYSDATE, 'yyyy') - ('19' || substr(ssn, 1, 2)) + 1 AS "나이",
    TO_CHAR(regdate, 'yyyy-mm-dd') AS "등록일"
FROM tblteacher WHERE seq = (SELECT teacherseq FROM tblteachersubject WHERE subjectseq = 1) AND delete_status = '회원';  --** 바뀌면위험한데이터

--SELECT * FROM tblteacher;


-- 과목 선택
-- 숫자는 변수로
insert into tblTeacherSubject(seq, teacherseq, subjectseq )
    values(teacher_seq.nextval, 1, 1); 



-- 교재 정보 출력
SELECT * FROM tblbook WHERE subjectseq = 1;
--교재선택(변수로 저장)

-- 과정명 등록                   (수정했음. 업데이트 필요)
insert into tblcoursetitle (seq, title)
    values(courseTitle_seq.nextval, '과정명');
    
-- 과정번호 조회                  (수정했음. 업데이트 필요)
select seq from tblCourseTitle where title = '안녕 자바';
select * from tblCourseTitle;

-- 가장 최근 추가된 과목의 번호 가져오기                  (수정했음. 업데이트 필요)
select seq from 
    (select * from tblCourse 
            order by seq desc)
                where rownum = 1;


-- (숫자 = 변수) 선택한 과정,과목,교재,강사 등록
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(courseSubject_seq.nextval, 1, 1, 1, 1, '2019-01-01_변수', '2019-01-01_변수', '과목설명_변수');


    
-- 최종정보 입력
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(course_seq.nextval, 1, 1, '진행중', '2019-01-01_변수', '2019-01-01_변수', '과정설명_변수');
    
--============================================================================================================


-- M -004- 6
-- 과정 정보(상태,비고) 수정 (진행중, 폐강, 정상종강)                     (수정했음. 업데이트 필요)
UPDATE tblcourse SET status = '진행중_변수', etc = '과정설명_변수' WHERE seq = 1;

-- M -004- 7
-- 개설 과정 정보 출력                    (수정했음. 업데이트 필요)
CREATE OR REPLACE VIEW vwCourseInfo
AS
SELECT      
    c.seq AS courseSeq,
    ct.title AS courseTitle,
    c.begindate AS begindate,
    c.enddate AS enddate,
    r.name AS roomName,
    --(SELECT COUNT(*) FROM tbllearning WHERE ing = '진행중' GROUP BY courseseq) AS "등록인원수",
    c.status AS status,
    c.etc AS etc
FROM tblcourse c
    INNER JOIN tblroom r
        ON c.roomseq = r.seq
            INNER JOIN tblcoursetitle ct
                ON c.coursetitleseq = ct.seq
                    ORDER BY c.seq;


-- M -004- 8
-- 특정 과정 정보 출력
SELECT 
    s.subject_name AS "과목명",
    cs.begindate AS "시작일",
    cs.enddate AS "종료일",
    t.name AS "강사이름",
    b.title AS "교재명"
FROM tblsubject s
    INNER JOIN tblcoursesubject cs
        ON s.seq = cs.subjectseq
            INNER JOIN tblbook b
                ON b.subjectseq = s.seq
                    INNER JOIN tblteacher t
                        ON t.seq = cs.teacherse;
            
SELECT s.* FROM tblstudent s
    INNER JOIN tbllearning l
        ON s.seq = l.studentseq
            WHERE l.courseseq = 1; -- 숫자(변수)는 어느과정인가?


-- M -004- 9
-- 개설과정관리 => 교육생 수료날짜 수정 
-- 추가사항 폐강 수정(?)
UPDATE tbllearning SET ingdate = (SELECT TO_CHAR(enddate, 'yyyy-mm-dd') FROM tblcourse 
                                        WHERE seq = tbllearning.courseseq 
                                            AND TO_CHAR(SYSDATE, 'yyyy-mm-dd') = TO_CHAR(enddate, 'yyyy-mm-dd')) --SET
    WHERE ing = '진행중' AND ingdate = '해당사항없음';

UPDATE tbllearning SET ing = '수료' WHERE ing <> '중도탈락' AND ingdate <> '해당사항없음';
UPDATE tblcourse SET status = '정상종강' WHERE SYSDATE = enddate AND status = '진행중'; 



-- M -004- 10
-- 개설 과목 관리 => 추가
-- 시작 시퀀스 번호 지정하기 (***)
insert into tblSubject(seq, subject_name, delete_status)
    values(subject_seq.nextval, '새로추가할과목명_변수', '가능');


-- M -004- 11
-- 개설 과목 관리 => 수정
UPDATE tblsubject SET subject_name = '과목명_변수';

-- M -004- 11
-- 개설 과목 관리 => 삭제
UPDATE tblsubject SET delete_status = '불가능';

--===========================================================================================================================
-- M -005- 1
--교육생 정보출력
SELECT seq, name, ssn, tel, address, TO_CHAR(regdate, 'yyyy-mm-dd') AS regdate, delete_status FROM tblStudent ORDER BY seq;

--교육생 정보입력
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(student_seq.nextval, '이름_변수', '주민번호_변수','전화번호_변수', '주소_변수', default, '회원'); 
 
----------------------------------------------------------------------------------------
-- M -005- 2
-- 특정 교육생 정보 조회 
select 
    st.name AS "교육생이름", 
    ct.title AS "과정명", 
    c.begindate || ' ~ ' || c.enddate AS "과정기간",
    r.name AS "강의실명", 
    l.ing AS "수료및중도탈락여부",
    l.ingdate "수료및중도탈락날짜"
from tblStudent st
    inner join tblLearning l
        on l.studentseq = st.seq
            inner join tblCourse c
                on l.courseseq =  c.seq
                    inner join tblRoom r
                        on c.roomseq = r.seq
                            inner join tblcoursetitle ct
                                on c.coursetitleseq = ct.seq; 


-------------------------------------------------------------------
-- M -005- 3
--교육생 정보수정                              -3줄짜리 1줄로 줄였습니다.(수정)-
UPDATE tblstudent SET tel = '바꿀번호_변수', address = '바꿀주소_변수', delete_stautus = '탈퇴'  where SEQ = 1; 

-- 교육생 회원탈퇴         
select * from tblStudent where seq = 1; 
update tblstudent set delete_stautus = '탈퇴' where SEQ = 1;


--===========================================================================================================================
--특정 교육생 정보 출력 ---추가 쿼리----
select 
    st.name as name,
    st.ssn as ssn, 
    st.tel as tel,
    st.address as address,    
    ct.title as learningCourse,
    co.begindate || '~' || co.enddate as coursePeriod,
    ro.name as roomName,
    le.ing AS ing,
    le.ingdate AS ingdate,
    st.delete_status AS status
from tblStudent st
    inner join tbllearning le
     on st.seq = le.studentseq
      inner join tblcourse co
        on co.seq = le.courseseq
            inner join tblCourseTitle ct
                on ct.seq = le.courseseq
                    inner join tblroom ro
                        on ro.seq = co.seq
                            where st.name = '홍길동'; --이름이 변수

--===========================================================================================================================


-- M -006- 1, 2
SELECT 
--    pe.coursesubjectseq,
--    COUNT(*)
    distinct s.subject_name AS "과목명"
FROM tblcoursesubject cs
    INNER JOIN tblsubject s
        ON cs.subjectseq = s.seq
            INNER JOIN tblcourse c
                ON c.seq = cs.courseseq
                    INNER JOIN tblpilgiexam pe
                        ON pe.coursesubjectseq = cs.seq
                            WHERE pe.coursesubjectseq IN (SELECT SEQ FROM tblcoursesubject);

-- M -006- 2
--필기 시험 등록여부,성적등록여부
-- 숫자 1은 자바에서 과정 선택할때 입력받는 값이다. --------------------뷰생성-------------------------

SELECT 
    DISTINCT(s.subject_name) AS subjectName,
    CASE
        WHEN s.seq IN (SELECT courseSubjectSeq FROM tblpilgiexam GROUP BY coursesubjectseq HAVING COUNT(*) =20) THEN '완료'
        ELSE '미완료'
    END AS examRegistry,
    CASE
        WHEN (SELECT COUNT(*) FROM tbllearning WHERE courseseq = 1) * 20 = (SELECT COUNT(*) FROM tblpilgianswer WHERE courseSubjectSeq = s.seq) THEN '완료'
        ELSE '미완료'
    END AS gradeRegistry
FROM tblsubject s
    WHERE s.seq IN (SELECT subjectseq FROM tblcourseSubject WHERE courseseq = 1);


--실기 시험 등록여부,성적등록여부
-- 숫자 1은 자바에서 과정 선택할때 입력받는 값이다. --------------------뷰생성-------------------------
SELECT 
    DISTINCT(s.subject_name) AS subjectName,
    CASE
        WHEN s.seq IN (SELECT courseSubjectSeq FROM tblsilgiexam GROUP BY coursesubjectseq HAVING COUNT(*) = 10) THEN '완료'
        ELSE '미완료'
    END AS examRegistry,
    CASE
        WHEN (SELECT COUNT(*) FROM tbllearning WHERE courseseq = 1) * 10 = (SELECT COUNT(*) FROM tblsilgianswer WHERE courseSubjectSeq = s.seq) THEN '완료'
        ELSE '미완료'
    END AS gradeRegistry
FROM tblsubject s
    WHERE s.seq IN (SELECT subjectseq FROM tblcourseSubject WHERE courseseq = 1);

-- 과정갯수 세는 쿼리 추가**
SELECT Count(*) FROM tblcoursetitle;

-- 관리자 과목별 출력하기 ------뷰생성-------
CREATE OR REPLACE VIEW vwSubjectList
AS
SELECT  
    t.name AS teacherName,
    ct.title AS openCourseName,
    c.begindate || ' ~ ' || c.enddate AS openCoursePeriod,
    r.name AS roomName,
    s.subject_name AS subjectName,
    b.title AS bookName,
    st.name AS studentName,
    substr(st.ssn, 8) AS backSsn,
    (SELECT COUNT(*) FROM tblpilgianswer p
        INNER JOIN tblpilgiexam e
            ON e.seq = p.pilgiexamseq
                WHERE p.learningseq = l.seq AND e.coursesubjectseq = cs.seq
                    AND p.answer = e.answer) * 2 AS pilgi,
    (SELECT COUNT(*) FROM tblsilgianswer p
        INNER JOIN tblsilgiexam e
            ON e.seq = p.silgiexamseq
                WHERE p.learningseq = l.seq AND e.coursesubjectseq = cs.seq
                    AND p.answer = e.answer) * 4 AS silgi
FROM tblsubject s
    INNER JOIN tblcoursesubject cs
        ON s.seq = cs.subjectseq
            INNER JOIN tblteacher t
                ON t.seq = cs.teacherseq
                    INNER JOIN tblbook b
                        ON b.subjectseq = s.seq
                            INNER JOIN tblcourse c
                                ON c.seq = cs.courseseq
                                    INNER JOIN tblcoursetitle ct
                                        ON ct.seq = c.coursetitleseq
                                            INNER JOIN tblroom r
                                                ON r.seq = c.roomseq
                                                    INNER JOIN tbllearning l
                                                        ON l.courseseq = c.seq
                                                            INNER JOIN tblstudent st
                                                                ON st.seq = l.studentseq;
                                                                    --WHERE s.seq = 1; --과목별 조회 숫자는 변수로

SELECT * from tblsubject;

SELECT * from vwsubjectlist;

SELECT * FROM vwsubjectlist WHERE subjectName IN (SELECT subject_name FROM tblSubject WHERE seq = 1); --과목별 조회 숫자는 변수로**
-----------뷰로 만들때 조회하기위해서 추가 생성쿼리---------------------------

/*
메인  >  관리자  >  시험관리 및 성적조회  > 성적 정보 열람
  - 성적 정보 출력 시 과목별, 교육생 개인별로 나뉨
  - 과목별 출력 시 과목에 따른 모든 수강생의 정보를 열람
  - 교육생 개인별 출력 시 수강생의 모든 과목별 정보와 개설된 과목에 따른 모든 정보를 같이 출력
  - 과목명 입력
  - 교육생명 입력
- 과목별 출력시 [교사명, 과정명, 과정기간, 강의실명, 과목명, 교재명] 출력 동시에 [교육생 이름, 주민번호 뒷자리, 필기, 실기시험 성적] 같이 출력
- 개인별 출력 시 수강생정보[이름, 주민번호 뒷자리, 개설 과정명, 개설 과정기간, 강의실명] 출력 동시에  [개설 과목명, 과목당 기간, 교사명, 필기, 실기시험 성적] 같이 출력

*/
CREATE OR REPLACE VIEW vwStudentList
AS
SELECT 
     st.name AS studentName,
     SUBSTR(st.ssn, 8) AS backSsn,
     ct.title AS openCourseName,
     c.begindate || ' ~ ' || c.enddate AS openCoursePeriod,
     r.name AS roomName,
     t.name AS teacherName,
     s.subject_name openSubjectName,
     cs.begindate || ' ~ ' || cs.enddate AS openSubjectPeriod,
     (SELECT COUNT(*) FROM tblpilgianswer p
        INNER JOIN tblpilgiexam e
            ON e.seq = p.pilgiexamseq
                WHERE p.learningseq = l.seq AND e.coursesubjectseq = cs.seq
                    AND p.answer = e.answer) * 2 AS pilgi,
    (SELECT COUNT(*) FROM tblsilgianswer p
        INNER JOIN tblsilgiexam e
            ON e.seq = p.silgiexamseq
                WHERE p.learningseq = l.seq AND e.coursesubjectseq = cs.seq
                    AND p.answer = e.answer) * 4 AS silgi
FROM tblstudent st
    INNER JOIN tbllearning l
        ON l.studentseq = st.seq
            INNER JOIN tblcourse c
                ON c.seq = l.courseseq
                    INNER JOIN tblcoursetitle ct
                        ON c.coursetitleseq = ct.seq
                            INNER JOIN tblcoursesubject cs
                                ON cs.courseseq = c.seq
                                    INNER JOIN tblroom r
                                        ON r.seq = c.roomseq
                                            INNER JOIN tblsubject s
                                                ON s.seq = cs.subjectseq
                                                    INNER JOIN tblteacher t
                                                        ON t.seq = cs.teacherseq;
--                                                            WHERE st.seq = 1
--                                                                ORDER BY "개설 과목기간"; -- 교육생이 듣는 모든 과목 시험성적조회(존재하는 성적만)
------- 뷰생성 학생별 출력하기 추가쿼리 ------------------
SELECT * FROM vwstudentlist WHERE studentName IN (SELECT name FROM tblStudent WHERE seq = 1) ORDER BY openSubjectPeriod; --교육생별

SELECT * FROM tblstudent s
    INNER JOIN tbllearning l
        ON s.seq = l.studentseq;

UPDATE tbllearning SET ing = '중도탈락', ingdate = TO_CHAR(SYSDATE, 'yyyy-mm-dd') WHERE delete_status = ? and studentseq = ?;

SELECT * from tblcourse;
SELECT * from tblLearning;
SELECT * from tblcourseSubject;
SELECT * from tblcourseTitle;

SELECT * FROM tblteacher;

SELECT courseSubject_seq.currVal from dual;
-- M -006- 2 끝
--===========================================================================================================================

/*
[통계 조회]   - 일별 : [이름] [과정명] [출근시간] [퇴근시간] [상태] 
      - 월별 : [이름] [과정명] [출근시간] [퇴근시간] [상태] 
      - 년도별 : [이름] [과정명] [출근시간] [퇴근시간] [상태] 

*/
-- M -007- 1
-- 교육생 출결 조회
-- =================일별===================
SELECT
    TO_CHAR(a.intime,'yyyy-mm-dd') 출근날짜,
    CASE
        WHEN TO_CHAR(a.intime,'hh24:mi') LIKE '00:00' THEN '없음'
        ELSE TO_CHAR(a.intime,'hh24:mi')
    END AS 출근시간,
    CASE
        WHEN TO_CHAR(a.outtime,'hh24:mi') LIKE '00:00' THEN '없음'
        ELSE TO_CHAR(a.outtime,'hh24:mi')
    END AS 퇴근시간,
    st.name AS 이름, a.status AS 상태, ct.title AS 과정명
FROM tblstudent st
INNER JOIN tbllearning l
ON l.studentseq = st.seq
INNER JOIN tblattended a
ON a.learningseq = l.seq
INNER JOIN tblcourse c
ON c.seq = l.courseseq
INNER JOIN tblcoursetitle ct
ON ct.seq = c.coursetitleseq
WHERE TO_CHAR(a.intime,'yyyy-mm-dd') = '2019-01-28'--해당 날짜 입력! = TO_CHAR(SYSDATE,'yyyy-mm-dd')
ORDER BY 출근날짜;


-- ==================월별==================
SELECT
    TO_CHAR(a.intime,'yyyy-mm-dd') 출근날짜,
    CASE
        WHEN TO_CHAR(a.intime,'hh24:mi') LIKE '00:00' THEN '없음'
        ELSE TO_CHAR(a.intime,'hh24:mi')
    END AS 출근시간,
    CASE
        WHEN TO_CHAR(a.outtime,'hh24:mi') LIKE '00:00' THEN '없음'
        ELSE TO_CHAR(a.outtime,'hh24:mi')
    END AS 퇴근시간,
    st.name AS 이름, a.status AS 상태, ct.title AS 과정명
FROM tblstudent st
INNER JOIN tbllearning l
ON l.studentseq = st.seq
INNER JOIN tblattended a
ON a.learningseq = l.seq
INNER JOIN tblcourse c
ON c.seq = l.courseseq
INNER JOIN tblcoursetitle ct
ON ct.seq = c.coursetitleseq
WHERE TO_CHAR(a.intime,'yyyy-mm') = '2019-01';--해당 월 입력! = TO_CHAR(SYSDATE,'yyyy-mm-dd')
/* 월별!!!
1) WHERE TO_CHAR(a.intime,'yyyy-mm-dd') 
    BETWEEN TO_DATE('2019-01-01','yyyy-mm-dd') AND LAST_DAY('2019-01-01')
    --BETWEEN TRUNC(sysdate,'mm') AND LAST_DAY(sysdate)
2) WHERE TO_CHAR(a.intime,'yyyy-mm') = '2019-01'--해당 월 입력! = TO_CHAR(SYSDATE,'yyyy-mm-dd')
*/




-- ===========년도별============
SELECT
    TO_CHAR(a.intime,'yyyy-mm-dd') 출근날짜,
    CASE
        WHEN TO_CHAR(a.intime,'hh24:mi') LIKE '00:00' THEN '없음'
        ELSE TO_CHAR(a.intime,'hh24:mi')
    END AS 출근시간,
    CASE
        WHEN TO_CHAR(a.outtime,'hh24:mi') LIKE '00:00' THEN '없음'
        ELSE TO_CHAR(a.outtime,'hh24:mi')
    END AS 퇴근시간,
    st.name AS 이름, a.status AS 상태, ct.title AS 과정명
FROM tblstudent st
INNER JOIN tbllearning l
ON l.studentseq = st.seq
INNER JOIN tblattended a
ON a.learningseq = l.seq
INNER JOIN tblcourse c
ON c.seq = l.courseseq
INNER JOIN tblcoursetitle ct
ON ct.seq = c.coursetitleseq
WHERE TO_CHAR(a.intime,'yyyy') = '2019' --해당 년 입력
ORDER BY 출근날짜;


-- M -007- 2
-- 관리자 병결,기타등 출석상태 변경
-- 2019-02-21/헌정스타벅스/결석 ---> 병가로 업데이트
UPDATE tblattended SET status = '병가' -- 변수로바뀌는애
    WHERE learningseq = (SELECT l.seq FROM tblstudent s 
        INNER JOIN tbllearning l 
        ON s.seq = l.studentseq 
        WHERE s.name = '헌정스타벅스' --이름도 변수로
        )
    AND TO_CHAR(intime,'yyyy-mm-dd') = '2019-02-21'; -- 날짜도 변수로입력


-- 관리자 과정별 출결 조회하기
SELECT 
    (SELECT name FROM tblstudent WHERE seq = (SELECT studentseq FROM tbllearning WHERE seq = a.learningseq)) AS 이름,
    status AS 상태,
    TO_CHAR(a.intime,'YYYY-MM-DD/HH24:MI')||'~'||TO_CHAR(a.outtime,'HH24:MI') AS 출석시간,
    
    (SELECT title FROM tblcoursetitle WHERE seq = (SELECT coursetitleseq FROM tblcourse WHERE seq = 
        (SELECT courseseq FROM tbllearning WHERE seq = a.learningseq))) AS 과정명,
    
    (SELECT TO_CHAR(begindate,'YYYY-MM-DD')||'~'||TO_CHAR(enddate,'YYYY-MM-DD') FROM tblcourse WHERE seq = 
        (SELECT courseseq FROM tbllearning WHERE seq = a.learningseq)) AS 과정기간
FROM tblattended a
WHERE learningseq IN (SELECT seq FROM tbllearning WHERE courseseq = 1/*과정번호 1대신 1)쿼리가 들어갑니다*/)

    AND (SELECT roomseq FROM tblcourse WHERE seq =
        (SELECT courseseq FROM tbllearning WHERE a.learningseq = seq)) = (SELECT seq FROM tblroom WHERE name ='1강의실'); -- 1강의실 변수로
        --ㄴ 시작,종료일,과정명이 같을때 강의실로 구분한다.


--- 쿼리 수정본<헌정> 과정별 출력하기 
SELECT 
    s.name AS name,
    a.status AS attendStatus,
    TO_CHAR(a.intime,'yyyy-mm-dd/hh24:mi') || '~' || TO_CHAR(a.outtime, 'hh24:mi') AS attendTime,
    ct.seq AS courseSeq,
    ct.title AS courseName,
    TO_CHAR(c.begindate, 'yyyy-mm-dd') || '~' || TO_CHAR(c.enddate, 'yyyy-mm-dd') AS coursePeriod
FROM tblstudent s
    INNER JOIN tbllearning l
        ON s.seq = l.studentseq
            INNER JOIN tblattended a
                ON a.learningseq = l.seq
                    INNER JOIN tblcourse c
                        ON c.seq = l.courseseq
                            INNER JOIN tblcoursetitle ct
                                ON ct.seq = c.coursetitleseq
                                    WHERE c.seq = 2;



---
/*
1)SELECT seq FROM tblcourse WHERE TO_CHAR(begindate,'YYYY-MM-DD') = '2019-01-28' AND 
    TO_CHAR(enddate,'YYYY-MM-DD') = '2019-08-21' AND 
    coursetitleseq = (SELECT seq FROM tblcoursetitle WHERE title = 'Java 기반 응용SW 개발자 양성과정');
*/


-- 관리자 교육생별 출결 조회하기
-- 전체 교육생리스트 출력 
CREATE OR REPLACE VIEW vwAttendWhole
AS
select 
    s.name as studentName, 
    ct.title as courseName, 
    to_char(a.intime, 'yyyy-mm-dd/hh24:mi') as intime ,
    to_char(a.outtime, 'yyyy-mm-dd/hh24:mi') as outtime,
    a.status as attendStatus
from tblStudent s
    inner join tbllearning l
        on l.studentseq = s.seq
            inner join tblAttended a
                on l.seq = a.learningseq
                    inner join tblCourse c
                        on l.courseseq = c.seq
                            inner join tblCoursetitle ct
                                on  c.coursetitleseq = ct.seq;

SELECT * FROM vwattendwhole;
                                
--특정 교육생 출결정보 조회  tblStudent 의 name이 Java에서 변수    

select 
    s.name as studentName, 
    ct.title as courseName, 
    to_char(a.intime, 'yyyy-mm-dd/hh24:mi') as intime ,
    to_char(a.outtime, 'yyyy-mm-dd/hh24:mi') as outtime,
    a.status as attendStatus
from tblStudent s
    inner join tbllearning l
        on l.studentseq = s.seq
            inner join tblAttended a
                on l.seq = a.learningseq
                    inner join tblCourse c
                        on l.courseseq = c.seq
                            inner join tblCoursetitle ct
                                on  c.coursetitleseq = ct.seq
                                    where s.name = '홍길동'; 


--===========================================================================================================================
--                                           여기서부터 교사
-- 교사의 담당 과정조회              -- 지연

select distinct tc.seq,  tct.title,tc.begindate|| ' ~ '||tc.enddate,tc.status from tblcoursesubject tcs ----->수정!!!
            inner join tblteacher tt
                on tcs.teacherseq = tt.seq
                    inner join tblcourse tc
                        on tc.seq = tcs.courseseq
                            inner join tblcoursetitle tct
                                on tct.seq = tc.coursetitleseq
                                        where tt.name = '유병현'
                        order by tc.begindate|| ' ~ '||tc.enddate;


--1.필기 가답안 출력              -- 지연
select * from tblpilgiexam;
select * from tblpilgianswer;
select * from tblcoursesubject;
select tpe.seq, tpe.question, tpe.answer from tblpilgiexam tpe
            inner join tblcoursesubject tcs
                on tpe.coursesubjectseq = tcs.seq 
                where tcs.courseseq = 1 and tcs.subjectseq =1;

--2.실기 가답안 출력              -- 지연
select tpe.seq, tpe.question, tpe.answer from tblsilgiexam tpe
            inner join tblcoursesubject tcs
                on tpe.coursesubjectseq = tcs.seq 
                where tcs.courseseq = 1 and tcs.subjectseq =1;




-- 맞힌 개수 조회              -- 지연
-- [번호]|[학생이름]|[과목명]|[필기 맞힌 개수]|[실기 맞힌 개수]|[출석]

select 
    l.seq,
    s.name, 
    j.subject_name,
    (SELECT  
(COUNT
(case
    when a.status = '출근' then 1
end
) +
COUNT
(CASE
    WHEN a.status = '지각' then 1
    when a.status = '외출' then 1
    when a.status = '조퇴' then 1
    when a.status = '병가' then 1
    when a.status = '기타' then 1
    
END
)*0.5)
FROM TBLATTENDED a
where a.learningseq = l.seq and a.intime between (select begindate from tblcoursesubject where courseseq = 1 and subjectseq = 1) and (select enddate from tblcoursesubject where courseseq = 1 and subjectseq = 1) 
GROUP BY a.learningseq) as 출석점수,

    (select count(*) from tblpilgianswer p
        inner join tblpilgiexam e
            on e.seq = p.pilgiexamseq
                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
                    and p.answer = e.answer) as pilgi,
    (select count(*) from tblsilgianswer p
        inner join tblsilgiexam e
            on e.seq = p.silgiexamseq
                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
                    and p.answer = e.answer) as silgi
from tblstudent s
    inner join tbllearning l
        on s.seq = l.studentseq
            inner join tblCourse c
                on c.seq = l.courseseq
                    inner join tblcoursesubject cs
                        on c.seq = cs.courseseq
                            inner join tblsubject j
                                on j.seq = cs.subjectseq
                                             where c.seq = 1 and cs.subjectseq = 1;




-- 교사의 담당 과목조회
-- 선택한 과정의 과목 목록 조회
-- T -002- 1
select 
    (select subject_name from tblsubject where seq = cs.subjectseq) as "과목명",
    begindate || ' ~ ' || enddate as "과목기간",
    etc as "상세설명"
from tblCourseSubject cs
    where courseseq = 2; -- 숫자가 입력값(변수)




-- courseseq , subjectseq java에서 변수로서 입력받는다.
-- 교사 성적 조회
-- 요구사항 다름(설계를바꿈)
select 
    l.seq,
    s.name, 
    j.subject_name,
    (select "출석점수" from (SELECT learningseq, 
(COUNT
(case
    when a.status = '출근' then 1
end
) +
COUNT
(CASE
    WHEN a.status = '지각' then 1
    when a.status = '외출' then 1
    when a.status = '조퇴' then 1
    when a.status = '병가' then 1
    when a.status = '기타' then 1
    
END
)*0.5)
/(SELECT COUNT
        (CASE
            WHEN TO_CHAR(v.regdate, 'd') IN ('7', '1') THEN NULL
            WHEN h.name is not null THEN NULL
            ELSE 1
        END) AS "java교육기간의 평일수"
FROM (SELECT TO_DATE((select begindate from tblcoursesubject where courseseq = 1 and subjectseq = 1), 'yyyy-mm-dd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (to_date((select enddate from tblcoursesubject where courseseq = 1 and subjectseq = 1), 'yyyy-mm-dd')- TO_DATE((select begindate from tblcoursesubject where courseseq = 1 and subjectseq = 1), 'yyyy-mm-dd') + 1)) v
    LEFT OUTER JOIN tblholiday h
        ON v.regdate = h.regdate)*20 as "출석점수"
FROM TBLATTENDED a
where intime between (select begindate from tblcoursesubject where courseseq = 1 and subjectseq = 1) and (select enddate from tblcoursesubject where courseseq = 1 and subjectseq = 1) 
GROUP BY learningseq   
order by learningseq) where learningseq = l.seq) as 출석점수,

    (select count(*) from tblpilgianswer p
        inner join tblpilgiexam e
            on e.seq = p.pilgiexamseq
                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
                    and p.answer = e.answer) * 2 as pilgi,
    (select count(*) from tblsilgianswer p
        inner join tblsilgiexam e
            on e.seq = p.silgiexamseq
                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
                    and p.answer = e.answer) * 4 as silgi,
                         
    (select count(*) from tblpilgianswer p
        inner join tblpilgiexam e
            on e.seq = p.pilgiexamseq
                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
                    and p.answer = e.answer) * 2 +
    (select count(*) from tblsilgianswer p
        inner join tblsilgiexam e
            on e.seq = p.silgiexamseq
                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
                    and p.answer = e.answer) * 4 +
                    (select "출석점수" from (SELECT learningseq, 
(COUNT
(case
    when a.status = '출근' then 1
end
) +
COUNT
(CASE
    WHEN a.status = '지각' then 1
    when a.status = '외출' then 1
    when a.status = '조퇴' then 1
    when a.status = '병가' then 1
    when a.status = '기타' then 1
    
END
)*0.5)
/(SELECT COUNT
        (CASE
            WHEN TO_CHAR(v.regdate, 'd') IN ('7', '1') THEN NULL
            WHEN h.name is not null THEN NULL
            ELSE 1
        END) AS "java교육기간의 평일수"
FROM (SELECT TO_DATE((select begindate from tblcoursesubject where courseseq = 1 and subjectseq = 1), 'yyyy-mm-dd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (to_date((select enddate from tblcoursesubject where courseseq = 1 and subjectseq = 1), 'yyyy-mm-dd')- TO_DATE((select begindate from tblcoursesubject where courseseq = 1 and subjectseq = 1), 'yyyy-mm-dd') + 1)) v
    LEFT OUTER JOIN tblholiday h
        ON v.regdate = h.regdate)*20 as "출석점수"
FROM TBLATTENDED a
where intime between (select begindate from tblcoursesubject where courseseq = 1 and subjectseq = 1) and (select enddate from tblcoursesubject where courseseq = 1 and subjectseq = 1) 
GROUP BY learningseq   
order by learningseq) where learningseq = l.seq)
                    
                    as total
from tblstudent s
    inner join tbllearning l
        on s.seq = l.studentseq
            inner join tblCourse c
                on c.seq = l.courseseq
                    inner join tblcoursesubject cs
                        on c.seq = cs.courseseq
                            inner join tblsubject j
                                on j.seq = cs.subjectseq
                                             where c.seq = 1 and cs.subjectseq = 1; --변화될 변수 숫자 1





--===========================================================================================================================
/*
                                                    교사
2.강의 스케줄 조회
[과목번호]|[과정명]|[과정기간:시작년월일~끝년월일]| [강의실]|[과목명]|[과목기간:시작년월일 ~ 끝년월일]|[교재명]|[교육생 등록인원]
T -002- 3 
*/

select 
    title as "과정명",
    (select begindate || ' ~ ' || enddate from tblCourse where seq in
        (select courseseq from tblCourseSubject where teacherseq =
            (select seq from tblTeacher where name = '유병현_변수'))) as "과정기간"
from tblcoursetitle
    where seq in (select coursetitleseq from tblCourse where seq in
        (select courseseq from tblCourseSubject where teacherseq =
            (select seq from tblTeacher where name = '유병현_변수')));



 --schedule ( 과정별 보기 )      -- 동성
 SELECT c.seq as seq, ct.title as coursetitle, c.begindate || ' ~ ' || c.enddate as coursedate,  
 r.name as roomname, s.subject_name as subjectname, cs.begindate || ' ~ ' || cs.enddate as subjectdate,  
 b.title subjectbook, (SELECT COUNT(*) FROM tbllearning l INNER JOIN tblstudent st ON st.seq = l.studentseq  
 WHERE l.courseseq = cs.courseseq AND l.ing = '진행중' AND st.delete_status = '회원' 
 ) AS studentsu FROM tblcoursesubject cs INNER JOIN tblteacher t 
 ON cs.teacherseq = t.seq INNER JOIN tblsubject s ON s.seq = cs.subjectseq 
 INNER JOIN tblcourse c ON c.seq = cs.courseseq INNER JOIN tblcoursetitle ct 
ON c.coursetitleseq = ct.seq INNER JOIN tblroom r ON r.seq = c.roomseq 
INNER JOIN tblbook b ON b.seq = cs.bookseq WHERE t.name ='유병현';



--course2(과정별 보기)      -- 동성
select distinct tc.seq as num,tct.title as coursename, 
tc.begindate|| ' ~ '||tc.enddate as coursedate,tc.status as status from tblcoursesubject tcs    
inner join tblteacher tt    
on tcs.teacherseq = tt.seq    
inner join tblcourse tc    
on tc.seq = tcs.courseseq    
inner join tblcoursetitle tct    
on tct.seq = tc.coursetitleseq    
where tt.name = '유병현'    
order by tc.begindate|| ' ~ '||tc.enddate;

-- T -002- 4
-- 교사 [교육생이름]|[전화번호]|[등록일]|[수료]/[중도탈락]
-- 특정 과목을 과목번호로 선택시 해당 과정에 등록된 교육생 정보
SELECT 
    st.name AS "교육생이름",
    st.tel AS "전화번호",
    st.regdate AS "등록일",
    l.ing AS "수료및중도탈락여부"
FROM tblcoursesubject cs
    INNER JOIN tblcourse c
        ON c.seq = cs.courseseq
            INNER JOIN tbllearning l
                ON l.courseseq = c.seq
                    INNER JOIN tblstudent st
                        ON st.seq = l.studentseq
                            INNER JOIN tblsubject s
                                ON s.seq = cs.subjectseq
                                    WHERE s.seq = 1 AND c.seq = 1; --특정 과목 선택번호(변수)

/*
교사
출결 관리]   - 출결 정보 : [이름] [과정명] [출근시간] [퇴근시간] [상태]

[조회]      - [이예찬] [Java&Python] [2019-04-01/08:25:30] [2019-04-01/10:30:29] [결석] --병가 결석시 
        [이예찬] [Java&Python] [2019-04-02/08:25:30] [2019-04-01/10:30:29] [병가]  --예비군 결석시
- 과정별 : [아무개] [Java&Python] [2019-01-28/08:25:30] [2019-01-28/10:30:29][조퇴] 
           [하하하] [Java&Python] [2019-01-28/08:45:30] [2019-01-28/18:30:29][출석] 
               -->>>컬럼에 ct.title AS 과정명 추가 + ORDER BY 과정명, 출근날짜
                    한 과정이면 WHERE ct.title = 'Java&Python' (확실하게 할려면 서브쿼리로 Java&Python인 seq 반납)
               
- 교육생별 : [아무개] [Oracle] [2019-01-28/08:25:30] [2019-01-28/10:30:29][조퇴] 
                [아무개] [Oracle] [2019-01-29/09:15:30] [2019-01-29/18:00:01][지각]
                   -->>> ORDER BY 이름, 출근날짜 아니면 교육생 한명을 지정해야되면
                         WHERE s.name = 아무개 and s.ssn = 주민번호 or 아예 seq = 로 
*/

-- T – 005 - 1
-- 담당 전체 학생 출결조회            --동성
SELECT TO_CHAR(a.intime,'yyyy-mm-dd') beginday, CASE  
WHEN TO_CHAR(a.intime,'hh24:mi') LIKE '00:00' THEN '없음'      ELSE TO_CHAR(a.intime,'hh24:mi') 
END AS begintime,      CASE      WHEN TO_CHAR(a.outtime,'hh24:mi') LIKE '00:00' THEN '없음' 
ELSE TO_CHAR(a.outtime,'hh24:mi')      END AS endday,      st.name AS name, a.status AS state 
FROM tblstudent st      INNER JOIN tbllearning l      ON l.studentseq = st.seq 
INNER JOIN tblattended a      ON a.learningseq = l.seq      INNER JOIN tblcourse c 
ON c.seq = l.courseseq      INNER JOIN tblcoursetitle ct      ON ct.seq = c.coursetitleseq 
inner join tblteacher tt on ct.seq = tt.seq where tt.name ='유병현' 
ORDER BY beginday;



--COMMIT;



/*
교사 출결조회

날짜별 출결 조회
[YYYY MM DD][학생이름][  과           정][과목][출결상태]
   20190912         안지연         웹개발자       java       결석


  
*/


-- T – 005 - 1
--교사의 담당하는 일별 출결조회             --동성
SELECT    
 DISTINCT TO_CHAR(a.intime,'yyyy-mm-dd') beginday,    
 CASE    
 WHEN TO_CHAR(a.intime,'hh24:mi') LIKE '00:00' THEN '없음'    
 ELSE TO_CHAR(a.intime,'hh24:mi')    
 END AS intime,    
 CASE    
 WHEN TO_CHAR(a.outtime,'hh24:mi') LIKE '00:00' THEN '없음'    
 ELSE TO_CHAR(a.outtime,'hh24:mi')    
 END AS outtime,    
 st.name AS name, a.status AS stats, ct.title AS course    
 FROM tblstudent st    
 INNER JOIN tbllearning l    
 ON l.studentseq = st.seq    
 INNER JOIN tblattended a    
 ON a.learningseq = l.seq    
 INNER JOIN tblcourse c    
 ON c.seq = l.courseseq    
 inner join tblcoursesubject cc    
 on c.seq = cc.teacherseq    
 inner join tblteacher bb    
 on cc.teacherseq = bb.seq    
 INNER JOIN tblcoursetitle ct    
 ON ct.seq = c.coursetitleseq    
 WHERE TO_CHAR(a.intime,'yyyy') = LTRIM(TO_CHAR(?, '0000')) and TO_CHAR(a.intime,'mm') = LTRIM(TO_CHAR(?, '00')) and TO_CHAR(a.intime,'dd') = LTRIM(TO_CHAR(?, '00'))    
 and bb.name = ?   
 ORDER BY beginday ;



--교사 월별            --동성
 SELECT DISTINCT    
 TO_CHAR(a.intime,'yyyy-mm-dd') beginday,    
 CASE    
 WHEN TO_CHAR(a.intime,'hh24:mi') LIKE '00:00' THEN '없음'    
 ELSE TO_CHAR(a.intime,'hh24:mi')    
 END AS intime,    
 CASE    
 WHEN TO_CHAR(a.outtime,'hh24:mi') LIKE '00:00' THEN '없음'    
 ELSE TO_CHAR(a.outtime,'hh24:mi')    
 END AS outtime,    
 st.name AS name, a.status AS stats, ct.title AS course    
 FROM tblstudent st    
 INNER JOIN tbllearning l    
 ON l.studentseq = st.seq    
 INNER JOIN tblattended a    
 ON a.learningseq = l.seq    
 INNER JOIN tblcourse c    
 ON c.seq = l.courseseq    
 inner join tblcoursesubject cc    
 on c.seq = cc.teacherseq    
 inner join tblteacher bb    
 on cc.teacherseq = bb.seq    
 INNER JOIN tblcoursetitle ct    
 ON ct.seq = c.coursetitleseq    
 WHERE TO_CHAR(a.intime,'yyyy') = LTRIM(TO_CHAR(?, '0000')) and TO_CHAR(a.intime,'mm') = LTRIM(TO_CHAR(?, '00'))    
 and bb.name = ? ORDER BY TO_CHAR(a.intime,'yyyy-mm-dd') ;
 
 
--교사 년도별            --동성
SELECT DISTINCT    
  TO_CHAR(a.intime,'yyyy-mm-dd') beginday,    
  CASE    
  WHEN TO_CHAR(a.intime,'hh24:mi') LIKE '00:00' THEN '없음'    
  ELSE TO_CHAR(a.intime,'hh24:mi')    
  END AS intime,    
  CASE    
  WHEN TO_CHAR(a.outtime,'hh24:mi') LIKE '00:00' THEN '없음'    
  ELSE TO_CHAR(a.outtime,'hh24:mi')    
  END AS outtime,    
  st.name AS name, a.status AS stats, ct.title AS course    
  FROM tblstudent st    
  INNER JOIN tbllearning l    
  ON l.studentseq = st.seq    
  INNER JOIN tblattended a    
  ON a.learningseq = l.seq    
  INNER JOIN tblcourse c    
  ON c.seq = l.courseseq    
  inner join tblcoursesubject cc    
  on c.seq = cc.teacherseq    
  inner join tblteacher bb    
  on cc.teacherseq = bb.seq    
  INNER JOIN tblcoursetitle ct    
  ON ct.seq = c.coursetitleseq    
  WHERE TO_CHAR(a.intime,'yyyy') = LTRIM(TO_CHAR(?, '0000')) and bb.name = ?    
  ORDER BY TO_CHAR(a.intime,'yyyy-mm-dd') ;



 --과목별 출결률 조회               -- 동성(미완) 
  select round(s.출결률,2) as inoutday,s.subject as subject from     
(SELECT  
(COUNT
(case
    when a.status = '출근' then 1
end
) )
/((SELECT COUNT
        (CASE
        
            WHEN TO_CHAR(v.regdate, 'd') IN ('7', '1') THEN NULL
            WHEN h.name is not null THEN NULL
            ELSE 1
        END) AS "java교육기간의 일수"
FROM (SELECT TO_DATE('20190329', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (to_date('20190425', 'yyyymmdd')- TO_DATE('20190329', 'yyyymmdd') + 1)) v
    LEFT OUTER JOIN tblholiday h
        ON v.regdate = h.regdate)*30)*100 as 출결률,

        
CASE
                    WHEN intime >= TO_DATE('2019-03-29', 'YYYY-MM-DD') AND 
                        intime <= TO_DATE('2019-04-25', 'YYYY-MM-DD') THEN 'ORACLE'
END as subject



FROM TBLATTENDED a
GROUP BY  (
                CASE
                    WHEN intime >= TO_DATE('2019-03-29', 'YYYY-MM-DD') AND 
                        intime <= TO_DATE('2019-04-25', 'YYYY-MM-DD') THEN 'ORACLE'
                END
           )
           
 ) s where subject is not null

 union

select round(s.출결률,2) as inoutday,s.subject as subject from     
(SELECT  
(COUNT
(case
    when a.status = '출근' then 1
end
) )
/((SELECT COUNT
        (CASE
            WHEN TO_CHAR(v.regdate, 'd') IN ('7', '1') THEN NULL
            WHEN h.name is not null THEN NULL
            ELSE 1
        END) AS "java교육기간의 일수"
FROM (SELECT TO_DATE('20190128', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (to_date('20190328', 'yyyymmdd')- TO_DATE('20190128', 'yyyymmdd') + 1)) v
    LEFT OUTER JOIN tblholiday h
        ON v.regdate = h.regdate)*30)*100 as 출결률,

        
CASE
                    WHEN intime >= TO_DATE('2019-01-28', 'YYYY-MM-DD') AND 
                        intime <= TO_DATE('2019-03-28', 'YYYY-MM-DD') THEN 'JAVA'
END as subject



FROM TBLATTENDED a
GROUP BY  (
                CASE
                    WHEN intime >= TO_DATE('2019-01-28', 'YYYY-MM-DD') AND 
                        intime <= TO_DATE('2019-03-28', 'YYYY-MM-DD') THEN 'JAVA'
                END
           )
           
 ) s where subject is not null 
 order by subject;





--교사 통계용
/*
과목별 출결률 조회(교사 => 출결관리 => 3번 과목별 출결률조회)

통계용 출결 조회

 [년도][월][과               정][과목][총 인원][출석률]
  2011  2    나는야개발자  oracle       24       90%     
  
  -- 픽스가 굉장히 필요한듯한 쿼리(*******************)
*/

-- T – 005 - 2    
select * from     
(SELECT  
(COUNT
(case
    when a.status = '출근' then 1
end
) )
/((SELECT COUNT
        (CASE
            WHEN TO_CHAR(v.regdate, 'd') IN ('7', '1') THEN NULL
            WHEN h.name is not null THEN NULL
            ELSE 1
        END) AS "java교육기간의 일수"
FROM (SELECT TO_DATE('20190128', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (to_date('20190328', 'yyyymmdd')- TO_DATE('20190128', 'yyyymmdd') + 1)) v
    LEFT OUTER JOIN tblholiday h
        ON v.regdate = h.regdate)*30)*100 as 출결률,
CASE
                    WHEN intime >= TO_DATE('2019-01-28', 'YYYY-MM-DD') AND 
                        intime <= TO_DATE('2019-03-28', 'YYYY-MM-DD') THEN 'JAVA'
END as subject


FROM TBLATTENDED a
GROUP BY  (
                CASE
                    WHEN intime >= TO_DATE('2019-01-28', 'YYYY-MM-DD') AND 
                        intime <= TO_DATE('2019-03-28', 'YYYY-MM-DD') THEN 'JAVA'
                END
           )
           
 ) where subject is not null; 
 
 
 
 
 


--===========================================================================================================================

-- 추가정리필요본 <스터디, 수당지급내역, 관리자 성적조회>


--===========================================================================================================================

---- 교육생 성적조회 //
---- S – 002 - 4  
--select 
--    l.seq,
--     --s.name "[이름]",
--    j.seq as "[과목번호]",
--    j.subject_name as "[과목명]",
--    cs.begindate as "[시작일]",
--    cs.enddate as "[종료일]",
--    bo.title as "[교재명]",
--    te.name as "[교사명]",
--    (select count(*) from tblpilgianswer p
--        inner join tblpilgiexam e
--            on e.seq = p.pilgiexamseq
--                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
--                    and p.answer = e.answer) * 2 as "[필기]",
--    (select count(*) from tblsilgianswer p
--        inner join tblsilgiexam e
--            on e.seq = p.silgiexamseq
--                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
--                    and p.answer = e.answer) * 4 as "[실기]"
--from tblstudent s
--    inner join tbllearning l
--        on s.seq = l.studentseq
--            inner join tblCourse c
--                on c.seq = l.courseseq
--                    inner join tblcoursesubject cs
--                        on c.seq = cs.courseseq
--                            inner join tblsubject j
--                                on j.seq = cs.subjectseq
--                                    inner join tblbook bo
--                                        on bo.seq = j.seq
--                                            inner join tblTeacher te
--                                                on te.seq = cs.teacherseq
--                                                  where c.seq = 1 and cs.subjectseq in (SELECT seq FROM tblsubject) and s.name='홍길동' 
--                                                    order by cs.subjectseq;
--                                            --student s.name='홍길동' 이 변수가 된다. (이름값)
--
-------학생 본인 출결조회 하는중 ++ 
--SELECT intime, outtime, status, 
--    (SELECT title FROM tblcoursetitle
--    WHERE seq = (SELECT coursetitleseq FROM tblcourse WHERE seq = (SELECT courseseq FROM tbllearning WHERE at.learningseq = seq) )) AS "과정명"
--FROM tblattended at
--WHERE learningseq = 
--    (SELECT seq FROM tbllearning WHERE studentseq = 
--        (SELECT seq FROM tblstudent WHERE name = '홍길동')); -- 이름을 변수로
--
--
---- 학생 출결하기
--SELECT seq, TO_CHAR(intime,'yyyy-mm-dd/hh24:mi'), TO_CHAR(outtime,'yyyy-mm-dd/hh24:mi'), status FROM tblattended ORDER BY seq DESC;
--
--INSERT INTO tblattended
--    VALUES(1212, TO_CHAR(SYSDATE,'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD'), '결석',
--        (SELECT seq FROM tbllearning WHERE studentseq = 
--        (SELECT seq FROM tblStudent WHERE name = '홍길동') AND ing = '진행중'));
--        --ㄴ 과정이 진행중인 학생들은 주말,공휴일을 제외한 평일날에는 무조건 모든 학생이 insert되야한다.
----한번에 진행중인 학생들 전부를 하고싶은데 흐음~~    
--
--/*
--AND SYSDATE >= (SELECT 시작일 FROM 과정 WHERE 과정번호 = (SELECT 과정번호 FROM 수강학생 WHERE 수강학생번호 = (SELECT 수강번호 FROM 출석))
--
--AND SYSDATE <= (SELECT 종료일 FROM 과정 WHERE 과정번호 = (SELECT 과정번호 FROM 수강학생 WHERE 수강학생번호 = (SELECT 수강번호 FROM 출석))    
--*/
--
--
--UPDATE tblattended SET
--outtime = 
--    CASE
--        WHEN TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/00:00' <> TO_CHAR(intime,'YYYY-MM-DD/HH24:MI')
--        --출석시간이 00:00이 아니면 퇴근시간에 SYSDATE를 넣는다
--        THEN SYSDATE
--        ELSE outtime
--    END,
--intime = 
--    CASE
--        WHEN TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/00:00' = TO_CHAR(intime,'YYYY-MM-DD/HH24:MI')
--        --출석시간이 00:00이면 출석시간에 SYSDATE를 넣는다
--        THEN SYSDATE
--        ELSE intime
--    END,
--status =
--    CASE
--        WHEN intime <= TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/09:00','YYYY-MM-DD/HH24:MI')
--            AND outtime >= TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/18:00','YYYY-MM-DD/HH24:MI')
--        THEN '출결'
--        
--        WHEN intime > TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/09:00','YYYY-MM-DD/HH24:MI')
--            AND intime < TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/18:00','YYYY-MM-DD/HH24:MI') --18시보다는 작아야됨
--            -- ㄴ 수업이 18시까지인데 19시에 찍고 지각이라고하면 에바..
--            AND ((TO_CHAR(outtime,'HH24'))*60 + TO_CHAR(outtime,'MI') - (TO_CHAR(intime,'HH24'))*60 + TO_CHAR(intime,'MI') ) >= 240
--        THEN '지각'
--        
--        WHEN intime <> TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD'),'YYYY-MM-DD') --출석시간이 00:00이아니고
--            AND outtime < TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/18:00','YYYY-MM-DD/HH24:MI')
--            AND ((TO_CHAR(outtime,'HH24'))*60 + TO_CHAR(outtime,'MI') - (TO_CHAR(intime,'HH24'))*60 + TO_CHAR(intime,'MI') ) >= 240
--        THEN '조퇴'
--        --outtime - intime으로 시간구하기가능?? 가능하면 지각, 조퇴에 outtime - intime > 4시간 이라는 조건 붙이기
--        ELSE '결석'
--    END
--WHERE learningseq = (SELECT seq FROM tbllearning WHERE studentseq = 
--        (SELECT seq FROM tblStudent WHERE name = '홍길동') AND ing = '진행중')
--        AND TO_CHAR(intime,'YYYY-MM-DD') = TO_CHAR(SYSDATE,'YYYY-MM-DD');
--
---- 로그인시 본인의 정보 출력하기
--SELECT 
--    s.*,
--    ct.title,
--    c.begindate || ' ~ ' || c.enddate AS "과정기간",
--    r.name
--FROM tblstudent s
--    INNER JOIN tbllearning l
--        ON s.seq = l.studentseq
--            INNER JOIN tblcourse c
--                ON c.seq = l.courseseq
--                    INNER JOIN tblroom r
--                        ON r.seq = c.roomseq
--                            INNER JOIN tblcoursetitle ct
--                                 ON ct.seq = c.coursetitleseq
--                                    WHERE s.name = '홍길동'; -- 로그인한 본인
--
--SELECT courseSeq, rpad(courseTitle, 50, ' '),begindate,enddate,roomName,status,etc from vwcourseinfo;



--모든 교육생의 정보를 가져옵니다
--public ArrayList<StudentDTO> studentList()
SELECT * FROM tblStudent WHERE delete_status = '회원';

--특정 학생의 수강(수료, 중도포기, 진행중)인 과정을 가져옵니다.
--public ArrayList<StudentCourseDTO> courseList(String seq)
SELECT  
    seq,
	(SELECT title FROM tblcoursetitle WHERE seq = c.coursetitleseq) AS courseTitle,
	status,
    TO_CHAR(begindate,'YYYY-MM-DD') AS begindate,
	TO_CHAR(enddate, 'YYYY-MM-DD') AS enddate,
	(SELECT name FROM tblroom WHERE seq = c.roomseq) AS roomTitle,
	(SELECT COUNT(*) FROM tbllearning WHERE courseseq = c.seq
        AND ing IN ('진행중','수료')) AS totalPeople,
	(SELECT seq FROM tbllearning WHERE studentseq = ? AND c.seq = courseseq) AS learnseq
FROM tblcourse c
WHERE seq IN (SELECT courseseq FROM tbllearning WHERE studentseq = ?);
--ORDER BY 상태(진행중 - 수료 - 중도포기 순으로 가능하면 추가하는데 귀찮스~)

--특정 과정 과목의 시작일 종료일동안의 출석을 계산하여 점수를 반환합니다
--출석?출결? 1점 결석 0점 이외에 0.5점
--public ArrayList<StudentSubjectDTO> subjectList(StudentCourseDTO course)
SELECT   
    (SELECT subject_name FROM tblSubject WHERE seq = cs.subjectseq) AS title, 
	CASE       
        WHEN TO_DATE(enddate,'YYYY-MM-DD') <= SYSDATE
            THEN TO_CHAR((SELECT COUNT(
                                    CASE
                                        WHEN pe.answer = pa.answer THEN 1
                                    END)*2 AS pil
                            FROM tblpilgiexam pe 
                                JOIN tblpilgianswer pa
                                    ON pe.seq = pa.pilgiexamseq
                                        WHERE pa.learningseq = ? AND pe.coursesubjectseq = cs.seq))
		ELSE '미실시'    
    END AS pilPoint,
    CASE 
		WHEN TO_DATE(enddate,'YYYY-MM-DD') <= SYSDATE 
            THEN TO_CHAR((SELECT COUNT(
                                    CASE  
                                        WHEN se.answer = sa.answer THEN 1
                                    END)*4 AS sil
                            FROM tblsilgiexam se
                                JOIN tblsilgianswer sa                  
                                    ON se.seq = sa.silgiexamseq
                                        WHERE sa.learningseq = ? AND se.coursesubjectseq = cs.seq))
        ELSE '미실시'
    END AS silPoint, 
    (SELECT 
        CASE
			WHEN TO_DATE(enddate,'YYYY-MM-DD')+1 <= SYSDATE 
                THEN TO_CHAR(ROUND((COUNT(
                    CASE
                        WHEN status = '출근' THEN 1
                    END)*1
                +    
                COUNT(CASE
                        WHEN status NOT IN ('출근','결석') THEN 1
                    END)*0.5)
                    /
                COUNT(status)*100/5,2))
            ELSE '미실시'
		END AS attend
    FROM tblattended 
    WHERE learningseq = ?
        AND intime >= TO_DATE(begindate,'YYYY-MM-DD')
		AND outtime < TO_DATE(enddate,'YYYY-MM-DD')+1) AS attendPoint, begindate, enddate
FROM tblcoursesubject cs 
WHERE courseseq = ?;


--특정 학생의 출결현황을 전부 가져옵니다 (늦은날짜순으로)
--public ArrayList<StudentAttendDTO> attendedList(String seq)
SELECT
    intime,
    outtime,
    status,
	(SELECT title FROM tblcoursetitle WHERE seq = (SELECT coursetitleseq FROM tblcourse WHERE seq = (SELECT courseseq FROM tbllearning WHERE a.learningseq = seq))) AS courseTitle
FROM tblattended a WHERE learningseq IN (SELECT seq FROM tbllearning WHERE studentseq =?) ORDER BY intime DESC;

--특정학생의 출석을 해주는 쿼리입니다 그날의 첫실행은 intime이 변화되고 다음실행은 outtime이변화됩니다
--시간에 따라 출석의 상태도 (지각, 조퇴, 출결)등으로 바꿔줍니다
--public int inputAttend(String seq)
UPDATE tblattended 
SET outtime =
        CASE
            WHEN TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/00:00' <> TO_CHAR(intime,'YYYY-MM-DD/HH24:MI')
                THEN SYSDATE
            ELSE outtime
        END,
    intime = 
        CASE
			WHEN TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/00:00' = TO_CHAR(intime,'YYYY-MM-DD/HH24:MI')
				THEN SYSDATE 
            ELSE intime
        END,
    status = 
        CASE
			WHEN intime <= TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/09:00','YYYY-MM-DD/HH24:MI')
                    AND outtime >= TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/18:00','YYYY-MM-DD/HH24:MI')
				THEN '출결'
			WHEN intime > TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/09:00','YYYY-MM-DD/HH24:MI')
                    AND intime < TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/18:00','YYYY-MM-DD/HH24:MI')
                    AND ((TO_CHAR(outtime,'HH24'))*60 + TO_CHAR(outtime,'MI') - (TO_CHAR(intime,'HH24'))*60 + TO_CHAR(intime,'MI') ) >= 240
				THEN '지각'
            WHEN intime <> TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD'),'YYYY-MM-DD')
                    AND outtime < TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'/18:00','YYYY-MM-DD/HH24:MI')
                    AND ((TO_CHAR(outtime,'HH24'))*60 + TO_CHAR(outtime,'MI') - (TO_CHAR(intime,'HH24'))*60 + TO_CHAR(intime,'MI') ) >= 240
                    THEN '조퇴' 
            ELSE '결석'
        END
WHERE learningseq = (SELECT seq FROM tbllearning WHERE studentseq =  ? 
    AND ing = '진행중') AND TO_CHAR(intime,'YYYY-MM-DD') = TO_CHAR(SYSDATE,'YYYY-MM-DD');
    

--출석해줄때 입실인지 퇴실인지 판단하여 값을 돌려줍니다. (출력용)
--public String checkAttend(String seq)
SELECT
    CASE
        WHEN TO_CHAR(intime,'HH24:MI') = '00:00' THEN '입실 '||TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI')
		ELSE '퇴실 '||TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI')
    END AS io, " + " 	intime 
FROM tblattended 
WHERE learningseq = (SELECT seq FROM tbllearning WHERE studentseq = ? AND ing = '진행중')
    AND TO_CHAR(intime,'YYYY-MM-DD') = TO_CHAR(SYSDATE,'YYYY-MM-DD');
    



--특정 학생이 스터디의 리더(스터디장)인지 확인하고
--리더이면 그 스터디의 정보를 줍니다.
--public StudyDTO leaderLogin(String seq)
SELECT * FROM tblstudy 
WHERE leader = (SELECT seq FROM tbllearning WHERE studentseq = ? AND ing = '진행중');



--그날 (모든)스터디가 강의실을 빌린 내역을 모두 갖고옵니다 
--(모든 강의실 - 빌린내역이있는강의실 = 빌릴 수 있는강의실)
--public ArrayList<StudentRoomStatusDTO> leader() 
SELECT  
    seq,
    reservedate,
    roomseq, 
    studyseq,
	(SELECT name FROM tblroom WHERE seq = rs.roomseq) AS roomtitle,
	(SELECT name FROM tblstudy WHERE seq = rs.studyseq) AS studytitle
FROM tblroomstatus rs 
WHERE reservedate = TO_CHAR(SYSDATE,'YYYY-MM-DD') ORDER BY seq;


-- 모든 강의실의 정보를 가져옵니다.
--	public ArrayList<RoomDTO> leaderRoomList
SELECT * FROM tblroom 
WHERE seq NOT IN (SELECT roomseq FROM tblroomstatus WHERE reservedate = TO_CHAR(SYSDATE,'YYYY-MM-DD')) ORDER BY seq;


--한 스터디가 한 강의실을 빌리는내역을 남깁니다.
--public int studyRoomRent(String room, String study)
INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq)
    VALUES((SELECT MAX(seq) FROM tblroomstatus)+1, TO_CHAR(SYSDATE,'YYYY-MM-DD'), ?, ? );


--특정 학생이 가입한 스터디의 정보를 돌려줍니다.
--public StudyDTO followers(String seq)
SELECT * FROM tblstudy 
WHERE seq = (SELECT studyseq FROM tblstudystudent WHERE learningseq = 
    (SELECT seq FROM tbllearning WHERE studentseq = ? AND ing = '진행중'));



-- 특정학생의 스터디가 현재날에 강의실을 빌린내역을 반환해줍니다.
--	public StudentRoomStatusDTO followersStudyCheck(StudyDTO study)
SELECT 
    seq, reservedate, roomseq, studyseq, 
	(SELECT name FROM tblroom WHERE seq = rs.roomseq) AS roomtitle, 
	(SELECT name FROM tblstudy WHERE seq = rs.studyseq) AS studytitle
FROM tblroomstatus rs 
WHERE reservedate = TO_CHAR(SYSDATE,'YYYY-MM-DD') AND studyseq = ?;


--관리자 계정에서 교사 정보수정 ---정아 추가
UPDATE tblteacher SET name = ?, tel = ?, address = ? where seq = ?;

--관리자 계정에서 삭제할강사 정보추출 ---정아 추가
SELECT * FROM tblTeacher WHERE seq = ?;


----- 뷰로 만들어진 셀렉트 테이블------


--CREATE OR REPLACE VIEW vwEmptyRoom
--AS
--SELECT 
--    seq as "강의실번호",
--    name AS "강의실명",
--    limit AS "강의실정원"
--FROM tblroom WHERE not seq in
--    (SELECT roomseq FROM tblCourse WHERE status = '진행중');
--    
--    
--    
--    
--CREATE OR REPLACE VIEW vwCourseInfo
--AS
--SELECT      
--    c.seq AS courseSeq,
--    ct.title AS courseTitle,
--    c.begindate AS begindate,
--    c.enddate AS enddate,
--    r.name AS roomName,
--    --(SELECT COUNT(*) FROM tbllearning WHERE ing = '진행중' GROUP BY courseseq) AS "등록인원수",
--    c.status AS status,
--    c.etc AS etc
--FROM tblcourse c
--    INNER JOIN tblroom r
--        ON c.roomseq = r.seq
--            INNER JOIN tblcoursetitle ct
--                ON c.coursetitleseq = ct.seq
--                    ORDER BY c.seq;
--
--
--CREATE OR REPLACE VIEW vwSubjectList
--AS
--SELECT  
--    t.name AS teacherName,
--    ct.title AS openCourseName,
--    c.begindate || ' ~ ' || c.enddate AS openCoursePeriod,
--    r.name AS roomName,
--    s.subject_name AS subjectName,
--    b.title AS bookName,
--    st.name AS studentName,
--    substr(st.ssn, 8) AS backSsn,
--    (SELECT COUNT(*) FROM tblpilgianswer p
--        INNER JOIN tblpilgiexam e
--            ON e.seq = p.pilgiexamseq
--                WHERE p.learningseq = l.seq AND e.coursesubjectseq = cs.seq
--                    AND p.answer = e.answer) * 2 AS pilgi,
--    (SELECT COUNT(*) FROM tblsilgianswer p
--        INNER JOIN tblsilgiexam e
--            ON e.seq = p.silgiexamseq
--                WHERE p.learningseq = l.seq AND e.coursesubjectseq = cs.seq
--                    AND p.answer = e.answer) * 4 AS silgi
--FROM tblsubject s
--    INNER JOIN tblcoursesubject cs
--        ON s.seq = cs.subjectseq
--            INNER JOIN tblteacher t
--                ON t.seq = cs.teacherseq
--                    INNER JOIN tblbook b
--                        ON b.subjectseq = s.seq
--                            INNER JOIN tblcourse c
--                                ON c.seq = cs.courseseq
--                                    INNER JOIN tblcoursetitle ct
--                                        ON ct.seq = c.coursetitleseq
--                                            INNER JOIN tblroom r
--                                                ON r.seq = c.roomseq
--                                                    INNER JOIN tbllearning l
--                                                        ON l.courseseq = c.seq
--                                                            INNER JOIN tblstudent st
--                                                                ON st.seq = l.studentseq;
--
--
--CREATE OR REPLACE VIEW vwStudentList
--AS
--SELECT 
--     st.name AS studentName,
--     SUBSTR(st.ssn, 8) AS backSsn,
--     ct.title AS openCourseName,
--     c.begindate || ' ~ ' || c.enddate AS openCoursePeriod,
--     r.name AS roomName,
--     t.name AS teacherName,
--     s.subject_name openSubjectName,
--     cs.begindate || ' ~ ' || cs.enddate AS openSubjectPeriod,
--     (SELECT COUNT(*) FROM tblpilgianswer p
--        INNER JOIN tblpilgiexam e
--            ON e.seq = p.pilgiexamseq
--                WHERE p.learningseq = l.seq AND e.coursesubjectseq = cs.seq
--                    AND p.answer = e.answer) * 2 AS pilgi,
--    (SELECT COUNT(*) FROM tblsilgianswer p
--        INNER JOIN tblsilgiexam e
--            ON e.seq = p.silgiexamseq
--                WHERE p.learningseq = l.seq AND e.coursesubjectseq = cs.seq
--                    AND p.answer = e.answer) * 4 AS silgi
--FROM tblstudent st
--    INNER JOIN tbllearning l
--        ON l.studentseq = st.seq
--            INNER JOIN tblcourse c
--                ON c.seq = l.courseseq
--                    INNER JOIN tblcoursetitle ct
--                        ON c.coursetitleseq = ct.seq
--                            INNER JOIN tblcoursesubject cs
--                                ON cs.courseseq = c.seq
--                                    INNER JOIN tblroom r
--                                        ON r.seq = c.roomseq
--                                            INNER JOIN tblsubject s
--                                                ON s.seq = cs.subjectseq
--                                                    INNER JOIN tblteacher t
--                                                        ON t.seq = cs.teacherseq;
--
--CREATE OR REPLACE VIEW vwAttendWhole
--AS
--select 
--    s.name as studentName, 
--    ct.title as courseName, 
--    to_char(a.intime, 'yyyy-mm-dd/hh24:mi') as intime ,
--    to_char(a.outtime, 'yyyy-mm-dd/hh24:mi') as outtime,
--    a.status as attendStatus
--from tblStudent s
--    inner join tbllearning l
--        on l.studentseq = s.seq
--            inner join tblAttended a
--                on l.seq = a.learningseq
--                    inner join tblCourse c
--                        on l.courseseq = c.seq
--                            inner join tblCoursetitle ct
--                                on  c.coursetitleseq = ct.seq;

---------------------

SELECT * FROM tbllearning;


insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(1, ?, student_seq.nextval, '진행중', default);






