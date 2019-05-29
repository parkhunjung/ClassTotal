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
    teacherseq NUMBER NOT NULL REFERENCES tblTeacher(seq)
);

CREATE SEQUENCE teacherSubject_seq;

--5. 교재
CREATE TABLE tblBook
(
    seq NUMBER PRIMARY KEY,
    title VARCHAR2(150) UNIQUE NOT NULL,
    subjectseq NUMBER NOT NULL REFERENCES tblSubject(seq)
);

CREATE SEQUENCE book_seq;

--6. 과정명
CREATE TABLE tblCourseTitle
(
    seq NUMBER CONSTRAINT tblCourseName_pk PRIMARY KEY,
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
    coursenameseq NUMBER NOT NULL REFERENCES tblCourseName(seq),
    roomseq NUMBER NOT NULL REFERENCES tblRoom(seq),
    status VARCHAR2(20) NOT NULL,
    begindate DATE NOT NULL,
    enddate DATE NOT NULL
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

--10. 수강중인정보
CREATE TABLE tblLearning
(
    seq NUMBER CONSTRAINT tblLearning_pk PRIMARY KEY,
    courseseq NUMBER NOT NULL REFERENCES tblCourse(seq),
    studentseq NUMBER NOT NULL REFERENCES tblStudent(seq),
    ing VARCHAR2(20) NOT NULL,
    ingdate DATE NULL--DEFAULT --??? 완성안됨
);

CREATE SEQUENCE learning_seq;

--11. 교육생출결하기
CREATE TABLE tblAttended
(
    seq NUMBER CONSTRAINT tblAttended_pk PRIMARY KEY,
    intime VARCHAR2(10) NULL,
    outtime VARCHAR2(10) NULL,
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
    sudang VARCHAR2 DEFAULT '미지급' NOT NULL,
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
    reservedate DATE DEFAULT '예약안됨' NULL,
    roomseq NUMBER NOT NULL REFERENCES tblRoom(seq),
    studyseq NUMBER NOT NULL REFERENCES tblStudy(seq)
);

CREATE SEQUENCE roomStatus;

--===================================================================================================================

