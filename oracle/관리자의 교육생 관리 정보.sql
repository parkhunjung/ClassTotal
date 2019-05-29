-- M -005- 1
--교육생 정보출력
select * from tblStudent;

--교육생 정보입력
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(1, '이름_변수', '주민번호_변수','전화번호_변수', '주소_변수', default, '회원'); 
 
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
--교육생 정보수정
update tblstudent set DELETE_STAUTUS = '탈퇴' where SEQ = 1;
update tblstudent set TEL = '바꿀번호_변수' where SEQ = 1;
update tblstudent set ADDRESS = '바꿀주소_변수' where SEQ = 1;

-- 교육생 회원탈퇴
select * from tblStudent where seq = 1; 
update tblstudent set DELETE_STAUTUS = '탈퇴' where SEQ = 1;



--------------------------------------------------------------------------------                                
-- 교사 [교육생이름]|[전화번호]|[등록일]|[수료]/[중도탈락]
-- 특정 과목을 과목번호로 선택시 해당 과정에 등록된 교육생 정보
select * from tblstudent;
select * from tbllearning;
select * from tblcourse;
select * from tblcoursesubject;
select * from tblteacher;
 
select
    distinct(s.name) AS "이름", 
    s.tel AS "전화번호", 
    l.ing AS "상태", 
    s.regdate AS "등록일"
from tblstudent s
    inner join tbllearning l
        on s.seq = l.studentseq
            inner join tblcourse c
                on l.courseseq = c.seq
                    inner join tblcoursesubject cs
                        on c.seq = cs.courseseq
                            inner join tblteacher t
                                on cs.teacherseq = t.seq
                                    where t.name = '유병현';
 
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
                                    WHERE s.seq = 1; --특정 과목 선택번호(변수)
 
SELECT * FROM tblsubject;
SELECT * FROM tblcourse;
SELECT * FROM tblcoursesubject;
SELECT * FROM tblcoursetitle;
SELECT * FROM tblstudent ORDER BY seq;
SELECT * FROM tbllearning;
 ----------------------------------------------------------------------------------------
--select 
--    l.seq,
--    s.name, 
--    j.subject_name,
--    (select count(*) from tblpilgianswer p
--        inner join tblpilgiexam e
--            on e.seq = p.pilgiexamseq
--                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
--                    and p.answer = e.answer) * 4 as pilgi,
--    (select count(*) from tblsilgianswer s
--        inner join tblsilgiexam e
--            on e.seq = s.silgiexamseq
--                where s.learningseq = l.seq and e.coursesubjectseq = cs.seq
--                    and s.answer = e.answer) * 2 as silgi,
--    
--    (select count(*) from tblpilgianswer p
--        inner join tblpilgiexam e
--            on e.seq = p.pilgiexamseq
--                where p.learningseq = l.seq and e.coursesubjectseq = cs.seq
--                    and p.answer = e.answer) * 4 +
--    (select count(*) from tblsilgianswer s
--        inner join tblsilgiexam e
--            on e.seq = s.silgiexamseq
--                where s.learningseq = l.seq and e.coursesubjectseq = cs.seq
--                    and s.answer = e.answer) * 2 as total
------------------------------------------------------------------------------------------    
--from tblstudent s
--    inner join tbllearning l
--        on s.seq = l.studentseq
--            inner join tblCourse c
--                on c.seq = l.courseseq
--                    inner join tblcoursesubject cs
--                        on c.seq = cs.courseseq
--                            inner join tblsubject j
--                                on j.seq = cs.subjectseq
--                                    where c.seq = 1 and cs.subjectseq = 1;  
 
 
 
 
 
 
 
 
 
 
 