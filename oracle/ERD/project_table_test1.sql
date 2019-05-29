select * from tabs;

--1. 교육생  // 1=>
CREATE TABLE tblStudent
(
    seq NUMBER CONSTRAINT tblStudent_pk PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    ssn VARCHAR2(15) UNIQUE NOT NULL,
    tel VARCHAR2(15) UNIQUE NOT NULL,
    address VARCHAR2(150) NULL,
    regdate DATE DEFAULT SYSDATE NOT NULL,
    delete_status VARCHAR2(15) NOT NULL
);

CREATE SEQUENCE student_seq;

--2. 강사
CREATE TABLE tblTeacher
(
    seq NUMBER CONSTRAINT tblTeacher_pk PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    ssn VARCHAR2(15) UNIQUE NOT NULL,
    tel VARCHAR2(15) UNIQUE NOT NULL,
    address VARCHAR2(150) NULL,
    regdate DATE DEFAULT SYSDATE NOT NULL,
    delete_status VARCHAR2(15) NOT NULL
);

CREATE SEQUENCE teacher_seq;

--3. 과목
CREATE TABLE tblSubject
(
    seq NUMBER CONSTRAINT tblSubject_pk PRIMARY KEY,
    subject_name VARCHAR2(50) UNIQUE NOT NULL
);

CREATE SEQUENCE subject_seq;


--4. 강사가 담당하는 과목
CREATE TABLE tblTeacherSubject
(
    seq NUMBER CONSTRAINT tblTeacherSubject_pk PRIMARY KEY,
    teacherseq NUMBER NOT NULL REFERENCES tblTeacher(seq),
    subjectseq NUMBER NOT NULL REFERENCES tblSubject(seq)
);

CREATE SEQUENCE teacherSubject_seq;



--5. 교재
CREATE TABLE tblBook
(
    seq NUMBER PRIMARY KEY,
    title VARCHAR2(150) UNIQUE NOT NULL,
    publisher VARCHAR(30) NOT NULL,
    subjectseq NUMBER NOT NULL REFERENCES tblSubject(seq)
);


CREATE SEQUENCE book_seq;

--6. 과정명
CREATE TABLE tblCourseTitle
(
    seq NUMBER CONSTRAINT tblCourseTitle_pk PRIMARY KEY,
    title VARCHAR2(150) NOT NULL
);

CREATE SEQUENCE courseTitle_seq;


--7. 강의실
CREATE TABLE tblRoom
(
    seq NUMBER CONSTRAINT tblRoom_pk PRIMARY KEY,
    name VARCHAR2(20) UNIQUE NOT NULL,
    limit NUMBER(5) NOT NULL
);

CREATE SEQUENCE room_seq;


--8. 과정
CREATE TABLE tblCourse
(
    seq NUMBER CONSTRAINT tblCourse_pk PRIMARY KEY,
    coursetitleseq NUMBER NOT NULL REFERENCES tblCourseTitle(seq),
    roomseq NUMBER NOT NULL REFERENCES tblRoom(seq),
    status VARCHAR2(20) NOT NULL,
    begindate DATE NOT NULL,
    enddate DATE NOT NULL,
    etc VARCHAR2(1000) NULL
);

CREATE SEQUENCE course_seq;


--9. 과정과목
CREATE TABLE tblCourseSubject
(
    seq NUMBER CONSTRAINT tblCourseSubject_pk PRIMARY KEY,
    courseseq NUMBER NOT NULL REFERENCES tblCourse(seq),
    subjectseq NUMBER NOT NULL REFERENCES tblSubject(seq),
    bookseq NUMBER NOT NULL REFERENCES tblBook(seq),
    teacherseq NUMBER NOT NULL REFERENCES tblTeacher(seq),
    begindate DATE NOT NULL,
    enddate DATE NOT NULL,
    etc VARCHAR2(1000) NULL

);

CREATE SEQUENCE courseSubject_seq;


--10. 수강중인정보 **(추가사항 => ing에 추가사항 수료,중도탈락,진행중 체크절 추가)
CREATE TABLE tblLearning
(
    seq NUMBER CONSTRAINT tblLearning_pk PRIMARY KEY,
    courseseq NUMBER NOT NULL REFERENCES tblCourse(seq),
    studentseq NUMBER NOT NULL REFERENCES tblStudent(seq),
    ing VARCHAR2(20) CHECK(ing IN ('수료', '중도탈락', '진행중')) NOT NULL,
    ingdate DATE NULL--DEFAULT --??? 완성안됨
);

CREATE SEQUENCE learning_seq;

--11. 교육생출결하기
CREATE TABLE tblAttended
(
    seq NUMBER CONSTRAINT tblAttended_pk PRIMARY KEY,
    intime DATE NULL,
    outtime DATE NULL,
    status VARCHAR2(30) DEFAULT '기타' NOT NULL, -- 기타(?) 기타로시작할지? null로 시작할지
    learningseq NUMBER NOT NULL REFERENCES tblLearning(seq)
);

CREATE SEQUENCE attended_seq;


--12. 필기시험
CREATE TABLE tblPilgiExam
(
    seq NUMBER CONSTRAINT tblPilgiExam_pk PRIMARY KEY,
    question VARCHAR2(2000) NOT NULL,
    answer NUMBER(2) NOT NULL,
    coursesubjectseq NUMBER NOT NULL REFERENCES tblCourseSubject(seq)
);

create sequence pjava_seq;
create sequence poracle_seq;
create sequence pjdbc_seq;
create sequence pspring_seq;
create sequence ppython_seq;
--create sequence pc++_seq; ??오류가남
create sequence pc#_seq;
create sequence pphp_seq;
create sequence phtml5_seq;
create sequence pjavascript_seq;
create sequence pR_seq;
create sequence pmysql_seq;
create sequence pbigdata_seq;


--13. 학생과목필기답
CREATE TABLE tblPilgiAnswer
(
    seq NUMBER CONSTRAINT tblPilgiAnswer_pk PRIMARY KEY,
    answer NUMBER(2) NULL,
    pilgiexamseq NUMBER NOT NULL REFERENCES tblPilgiExam(seq),
    learningseq NUMBER NOT NULL REFERENCES tblLearning(seq)
    
);

CREATE SEQUENCE pilgiAnswer_seq;


--14. 실기시험
CREATE TABLE tblSilgiExam
(
    seq NUMBER CONSTRAINT tblSilgiExam_pk PRIMARY KEY,
    question VARCHAR2(2000) NOT NULL,
    answer VARCHAR2(1000) NOT NULL,
    coursesubjectseq NUMBER NOT NULL REFERENCES tblCourseSubject(seq)
);

create sequence sjava_seq;
create sequence soracle_seq;
create sequence sjdbc_seq;
create sequence sspring_seq;
create sequence spython_seq;
--create sequence sc++_seq; --연산자때문에 오류남
create sequence sc#_seq;
create sequence sphp_seq;
create sequence shtml5_seq;
create sequence sjavascript_seq;
create sequence sR_seq;
create sequence smysql_seq;
create sequence sbigdata_seq;


--15. 학생과목실기답
CREATE TABLE tblSilgiAnswer
(
    seq NUMBER CONSTRAINT tblSilgiAnswer_pk PRIMARY KEY,
    answer VARCHAR2(1000) NULL,
    silgiexamseq NUMBER NOT NULL REFERENCES tblSilgiExam(seq),
    learningseq NUMBER NOT NULL REFERENCES tblLearning(seq)
);

CREATE SEQUENCE silgiAnswer_seq;


--16. 출결수당지급내역
CREATE TABLE tblAttendedSudang
(
    seq NUMBER CONSTRAINT tblAttendedSudang_pk PRIMARY KEY,
    sudang VARCHAR2(15) DEFAULT '미지급' NOT NULL,
    learningseq NUMBER NOT NULL REFERENCES tblLearning(seq)
);

CREATE SEQUENCE attendedSudnag_seq;


--17. 스터디
CREATE TABLE tblStudy
(
    seq NUMBER CONSTRAINT tblStudy_pk PRIMARY KEY,
    name VARCHAR2(150) NULL,
    limit NUMBER(5) NOT NULL
);

CREATE SEQUENCE study_seq;

--18. 스터디학생
CREATE TABLE tblStudyStudent
(
    seq NUMBER CONSTRAINT tblStudyStudent_pk PRIMARY KEY,
    studyseq NUMBER NOT NULL REFERENCES tblStudy(seq),
    learningseq NUMBER NOT NULL REFERENCES tblLearning(seq)
);

CREATE SEQUENCE studyStudent_seq;


--19. 강의실상태
CREATE TABLE tblRoomStatus
(
    seq NUMBER CONSTRAINT tblRoomStatus_pk PRIMARY KEY,
    reservedate DATE DEFAULT NULL,
    roomseq NUMBER NOT NULL REFERENCES tblRoom(seq),
    studyseq NUMBER NOT NULL REFERENCES tblStudy(seq)
);

CREATE SEQUENCE roomStatus_seq;

--===================================================================================================================

--공휴일 테이블
CREATE TABLE tblHoliday
(
    seq NUMBER PRIMARY KEY,
    regdate DATE NOT NULL,
    name VARCHAR2(30) NOT NULL
);

CREATE SEQUENCE holiday_seq;
--2019
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-01-01', '신정');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-02-04', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-02-05', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-02-06', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-03-01', '삼일절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-05-06', '어린이날(대체공휴일)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-06-06', '현충일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-08-15', '광복절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-09-12', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-09-13', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-09-14', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-10-03', '개천절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-10-09', '한글날');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2019-12-25', '크리스마스');
--2018
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-01-01', '신정');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-02-15', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-02-16', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-02-17', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-03-01', '삼일절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-05-07', '어린이날(대체공휴일)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-06-06', '현충일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-06-13', '지방선거');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-08-15', '광복절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-09-24', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-09-25', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-09-26', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-10-03', '개천절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-10-09', '한글날');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-12-25', '크리스마스');
--2017
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-01-01', '신정');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-01-27', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-01-28', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-01-29', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-01-30', '설날(대체공휴일)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-03-01', '삼일절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-05-03', '석가탄신일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-05-05', '어린이날');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-05-09', '대통령선거(임시공휴일)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-06-06', '현충일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-08-15', '광복절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-10-03', '개천절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-10-04', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-10-05', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-10-06', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-10-09', '한글날');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2017-12-25', '크리스마스');
--2016
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-01-01', '신정');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-02-08', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-02-09', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-02-10', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-03-01', '삼일절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-04-13', '20대 국회의원 선거');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-05-05', '어린이날');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-05-06', '임시공휴일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-03-01', '석가탄신일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-06-06', '현충일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-08-15', '광복절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-09-14', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-09-15', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-09-16', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-10-03', '개천절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-10-09', '한글날');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2016-12-25', '크리스마스');
--2015
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-01-01', '신정');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-02-18', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-02-19', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-02-20', '설날(연휴)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2018-03-02', '삼일절(대체공휴일)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-05-05', '어린이날');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-05-25', '석가탄신일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-06-06', '현충일');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-08-14', '광복절(대체공휴일)');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-09-27', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-09-28', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-09-29', '추석');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-10-03', '개천절');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-10-09', '한글날');
INSERT INTO tblHoliday VALUES (holiday_seq.nextval, '2015-12-25', '크리스마스');


-- 과정 평일 계산 뷰테이블
CREATE OR REPLACE view vwStartMonth
AS
SELECT TO_DATE('20190101', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190101') - TO_DATE('20190128', 'yyyymmdd') + 1);

CREATE OR REPLACE view vwEndMonth
AS
SELECT TO_DATE('20190801', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (TO_DATE('20190821', 'yyyymmdd') - TO_DATE('20190801', 'yyyymmdd') + 1);

CREATE OR REPLACE view vwMonth2
AS
SELECT TO_DATE('20190201', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190201') - TO_DATE('20190201', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth3
AS
SELECT TO_DATE('20190301', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190301') - TO_DATE('20190301', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth4
AS
SELECT TO_DATE('20190401', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190401') - TO_DATE('20190401', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth5
AS
SELECT TO_DATE('20190501', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190501') - TO_DATE('20190501', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth6
AS
SELECT TO_DATE('20190601', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190601') - TO_DATE('20190601', 'yyyymmdd') + 1);


CREATE OR REPLACE view vwMonth7
AS
SELECT TO_DATE('20190701', 'yyyymmdd') + level -1 AS regdate FROM dual
    CONNECT BY level <= (LAST_DAY('20190701') - TO_DATE('20190701', 'yyyymmdd') + 1);
    
--===========================================================================================
--이뷰테이블의 평일수를 계산하기 위한 셀렉트


SELECT 
    COUNT
        (CASE
            WHEN TO_CHAR(v.regdate, 'd') IN ('7', '1') THEN NULL
            WHEN h.name is not null THEN NULL
            ELSE 1
        END) AS "이번달의 평일수"
FROM vwMonth7 v
    LEFT OUTER JOIN tblholiday h
        ON v.regdate = h.regdate;

--===========================================================================================
