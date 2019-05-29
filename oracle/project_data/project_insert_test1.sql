-- 우리 시연할 때 사용하는 데이터들의 기간은 2019-02 ~ 2019-04로 픽스.

-- 더미데이터 : 반 하나 정도의 데이터 만들기
-- 교육생: 20~30명/ 강의실 8개 / (진행 + 미래 + 마친) 과정
-- 모든 실제는 FK맞춰서 만들기!!
-- 지금은 더미만 만듭니다.

--1. 교육생 (더미 : 60명, 실제 : 30명) 
-- ssn: 00~02년생 
-- delete_status : 회원, 탈퇴
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(1, '홍길동', '000131-4000000','010-1234-5678', '서울시 강남구 테헤란로 327-17', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(2, '홍길순', '020918-3000000','010-2234-5678', '경기도 고양시 일산서구 2134-1', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(3, '김정아', '021214-4000000','010-3234-5678', '경기도 남양주시 1234-2', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(4, '이예찬', '000806-3256785','010-4234-5678', '경기도 광주시 태전동 245-77', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(5, '김동성', '010701-3092215','010-5234-5678', '경기도 안산시 광덕2로 241', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(6, '박헌정', '010311-3199865','010-6234-5678', '경기도 용인시 서천동로21번길 24-45', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(7, '안지연', '010124-4226879','010-7234-5678', '울산 남구 야음로33 102-801', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(8, '민화경', '020414-4191987','010-8234-5678', '서울시 강남구 논현동 172-3', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(9, '이주성', '000615-3111877','010-9234-5678', '경기도 용인시 기흥구 덕영대로1732', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(10, '김기훈', '021206-3225433','010-1334-5678', '서울시 도봉구 창동 70길', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(11, '김미정', '000413-4099241','010-1434-5678', '서울시 강남구 잠원동 롯데캐슬 ', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(12, '김제니', '011111-4121212','010-1534-5678', '서울시 송파구 송내천로 27길 10', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(13, '남주혁', '000922-3191919','010-1634-5678', '서울시 강남구 압구정동 미성아파트', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(14, '도경수', '011020-3125667','010-1734-5678', '서울시 서초구 서초대로 26길 19', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(15, '주지훈', '000709-3144465','010-1834-5678', '서울시 용산구 이촌로87길 14', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(16, '김태희', '010517-4242637','010-1934-2368', '서울시 서초구 신반포로 43길 11-4', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(17, '정채연', '011220-4563212','010-2034-2478', '서울시 성동구 성수일로 4길 26', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(18, '이정재', '001108-3245312','010-2134-5278', '서울시 송파구 올림픽로 99', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(19, '김필', '010227-3661242','010-2234-6348', '서울시 광진구 아차산로 637', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(20, '이혜리', '010510-4159301','010-2334-3982', '경기도 구리시 장자호수길 50', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(21, '윤도현', '000511-3282941','010-2434-1923', '경기도 성남시 분당구 양현로 272', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(22, '이상윤', '010714-3195223','010-2534-8693', '경기도 안양시 동안구 비산로 75', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(23, '강다니엘', '001218-3583914','010-2634-5858', '경기도 안양시 만안구 안양천서로 245', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(24, '전소미', '011024-4231340','010-2734-5618', '서울시 강남구 학동로 68길 29', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(25, '유스타구스', '000112-3859283','010-2834-6014', '서울시 강남구 압구정로 403', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(26, '정아스감바스', '010303-4104928','010-2931-7843', '서울시 강남구 압구정로 313', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(27, '지연스나바스', '020508-4018482','010-3034-8192', '서울시 서초구 신반포로 33길 73', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(28, '크리스동성스', '011006-3192847','010-8434-5189', '서울시 서초구 신반포로 3길 12', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(29, '예찬스애플스', '020705-3691023','010-6134-3848', '서울시 강남구 테헤란로 336', '2019-01-28', '회원');
insert into tblStudent(seq, name, ssn, tel, address, regdate, delete_status)
    values(30, '헌정스타벅스', '001201-3950182','010-9634-1927', '서울시 강남구 삼성로 149길 5', '2019-01-28', '회원');
                        ----------------더미↓----------------
-- sequence : student_seq

--날짜 범위: 2015-01-01 ~ 2019-04-02



--2. 강사 (더미 : 9명, 실제 : 1명)
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (1, '유병현', '910121-1000000','010-1111-1111', '서울시 송파구 성내천로 37길 37', '2019-01-20', '회원');
                        ----------------더미↓----------------
-- sequence : teacher_seq

--날짜 범위: 2015-01-01 ~ 2019-04-02



--3. 과목 (더미 : 나머지 7개도 추가해야함, 실제 : 5개) 
insert into tblSubject(seq, subject_name, delete_status)
    values(1, 'Java', '가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(2, 'Oracle', '가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(3, 'JavaScript', '가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(4, 'JSP', '가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(5, 'Project', '가능');
                        ----------------더미↓----------------

    
-- sequence : subject_seq

/*
-과목 종류: java, oracle, jdbc, spring, python, c++, c#, php, html5, javascript, R, mysql, bigdata
 > 총 7개월 (140일)
1.자바
2.오라클
3.자바스크립트
4.JSP
5.프로젝트
 

- 과목별 기간
java, oracle, jdbc, spring, python, JSP, c#, php, html5, javascript, R, mysql, bigdata, project
>40d   20d    10d    20d     20d    40d 40d 20d    20d     20d     10d  10d    60d        20d

*/


--4. 강사가 담당하는 과목(더미: 강사당 a개씩(0<a<6), 실제 : 5개)
--teacherseq = tblTeacher.seq,
--subjectseq = tblSubject.seq
insert into tblTeacherSubject(seq, teacherseq, subjectseq )
    values(1,1,1);
insert into tblTeacherSubject(seq, teacherseq, subjectseq )
    values(2,1,2);
insert into tblTeacherSubject(seq, teacherseq, subjectseq )
    values(3,1,3);
insert into tblTeacherSubject(seq, teacherseq, subjectseq )
    values(4,1,4);
insert into tblTeacherSubject(seq, teacherseq, subjectseq )
    values(5,1,5);
                        ----------------더미↓----------------
-- sequence : teachersubject_seq




--5. 교재(더미 : 미정, 실제 : 5(FK 맞춰서!!!!!***))
insert into tblBook(seq, title, subjectseq, publisher)
    values(1, '이것이 Java다', 1, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(2, '이것이 Oracle이다', 2, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(3, '이것이 JavaScript다', 3, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(4, '이것이 JSP다', 4, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(5, '이것이 Project다', 5, '쌍용교육센터');
                        ----------------더미↓----------------
-- sequence : book_seq

--교재 : 한 과목당 3개 



--6. 과정명
insert into tblCourseTitle(seq,title)
    values(1, 'Java 기반 응용SW 개발자 양성과정');
                        ----------------더미↓----------------
-- sequence : courseTitle_seq


--7. 강의실
-- 강의실 개수: 8개
-- 인원: 작성자 마음대로!! (30~35)
insert into tblRoom(seq, name, limit)
    values(1, '1강의실', 30);
insert into tblRoom(seq, name, limit)
    values(2, '2강의실', 30);
insert into tblRoom(seq, name, limit)
    values(3, '3강의실', 30);    
insert into tblRoom(seq, name, limit)
    values(4, '4강의실', 26);    
insert into tblRoom(seq, name, limit)
    values(5, '5강의실', 26);    
insert into tblRoom(seq, name, limit)
    values(6, '6강의실', 26); 
-- sequence : room_seq



--8. 과정(더미: 미정 , 실제: 1개)
-- status : '진행중', '폐강', '정상종강'
--110일(5.5개월) , 120일(6개월), 140일(7개월)로 기간(시작-종료일) 맞출 것!
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(1, 1,1, '진행중', '2019-01-28', '2019-08-21', '정보처리기사, 정보처리산업기사 등의 관련 
    자격증을 취득 및 소프트웨어 개발업체, IT컨설팅 회사, 시스템 통합 및 구축 업체 등에 취업을 할 수
    있는 응용SW실무개발자로 양성하는 것을 최종 목표로 한다.');
                        ----------------더미↓----------------
-- sequence : course_seq





--9. 과정과목(더미 : 미정, 실제 : 5개)
/*
-- 과목별 기간
java, oracle, jdbc, spring, python, JSP, c#, php, html5, javascript, R, mysql, bigdata, project
: 40d   20d    10d    20d     20d   40d 40d 20d    20d     20d      10d  10d    60d        20d
*/
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(1, 1,1,1,1, '2019-01-28', '2019-03-28', 'eclipse를 이용한 객체지향프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(2, 1,2,2,1, '2019-03-29', '2019-04-25', 'Oracle를 이용한 데이터베이스'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(3, 1,3,3,1, '2019-04-26', '2019-05-27', 'JavaScript를 이용한 웹 클라이언트 프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(4, 1,4,4,1, '2019-05-28', '2019-07-23', 'JSP를 이용한 웹 서버 프로그래밍'); 
insert into tblCourseSubject(seq, courseseq, subjectseq, bookseq, teacherseq, begindate, enddate, etc)
    values(5, 1,5,5,1, '2019-07-24', '2019-08-21', '실무 프로젝트 통합 구현');     
                        ----------------더미↓----------------
-- sequence : courseSubject_seq




--10. 수강중인 정보(더미 : 미정, 실제 : 30개)
-- ing : 진행중, 중도탈락, 수료
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(1, 1, 1, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(2, 1, 2, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(3, 1, 3, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(4, 1, 4, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(5, 1, 5, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(6, 1, 6, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(7, 1, 7, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(8, 1, 8, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(9, 1, 9, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(10, 1, 10, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(11, 1, 11, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(12, 1, 12, '중도탈락', '2019-02-11');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(13, 1, 13, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(14, 1, 14, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(15, 1, 15, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(16, 1, 16, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(17, 1, 17, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(18, 1, 18, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(19, 1, 19, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(20, 1, 20, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(21, 1, 21, '중도탈락', '2019-03-13');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(22, 1, 22, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(23, 1, 23, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(24, 1, 24, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(25, 1, 25, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(26, 1, 26, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(27, 1, 27, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(28, 1, 28, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(29, 1, 29, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(30, 1, 30, '진행중', default);
                        ----------------더미↓----------------
-- sequence : learning_seq





--11. 교육생출결하기(더미 : 30명(하루치), 실제 : 30명(하루치))
--출근시간, 퇴근시간은 기존과 동일!!!!! (9:00 ~ 18:00)
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(attended_seq.nextval, to_date('2018-01-01/09:20','yyyy-mm-dd/hh24:mi'), to_date('2018-01-01/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1);

                        ----------------더미↓----------------
-- sequence : attended_seq




--
----12.필기시험(정답)(한과목당 20문제씩 (배점2점) 실제 : 과목 5개(100개))***
--insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
--    values (1, '객체지향언어에 대한 설명으로 옳은것은?', 5, 1);
---- sequence : pjava_seq, poracle_seq ...
--
----java, oracle, jdbc, spring, python, c#, php, html5, javascript, R, mysql, bigdata  
--
---- 문제는 과목당 20문제. 4지선다형.
--
--
--
----13. 학생과목필기답(과목당 20개, 4지선다형)
--insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq)
--    values (pilgiAnswer_seq.nextval, 4, 1, 1); -- pilgiexamseq의 1번이 java 인지 oracle인지 구분 가능?
---- sequence : pilgiAnswer_seq
--  
--
----14. 실기시험(한과목당 10문제씩 (배점4점) 실제 : 과목 5개(50개))***
--insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
--    values (sjava_seq.nextval, '문제문제', '정답', 1);
---- sequence : sjava_seq, soracle_seq ...
--
--    
---- 과목당 10문제씩 만들어주세요.
---- answer 에 띄어쓰기 사용 XX
--
--
--
----15. 학생과목실기답 (과목당 10개, 단답형,answer 에 띄어쓰기 사용 XX)
--insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq)
--    values (silgianswer_seq.nextval, '한단어의 답', 1, 1);
---- sequence : silgianswer_seq    
--    



--16. 출결수당지급내역(더미 : 30 x [01/01 ~/02/28] = 60개, 실제 : 30개(30명의 한달치))
-- 출석 하루마다 5,800원
insert into tblAttendedSudang (seq, sudang, learningseq)
    values (1, 116000, 1);
                        ----------------더미↓----------------
-- sequence : attendedSudnag_seq    




--17. 스터디 (실제 : 3개)
-- limit < 각 강의실 최대 인원수
--
insert into tblStudy (seq, name, limit, leader)
    values (1, 'JAVA를 자바라!', 6, 1);
insert into tblStudy (seq, name, limit, leader)
    values (2, 'ORACLE로 오라클!', 8, 7);
insert into tblStudy (seq, name, limit, leader)
    values (3, 'JSP로 웹서버만들기!', 6, 15);


                            ----------------더미↓----------------
-- sequence : study_seq    





--18. 스터디학생(더미: n개, 실제: 20개)
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (1, 1, 1);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (2, 1, 2);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (3, 1, 3);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (4, 1, 4);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (5, 1, 5);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (6, 1, 6);
    
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (7, 2, 7);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (8, 2, 8);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (9, 2, 9);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (10, 2, 10);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (11, 2, 11);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (12, 2, 12);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (13, 2, 13);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (14, 2, 14);


insert into tblStudyStudent (seq, studyseq, learningseq)
    values (15, 3, 15);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (16, 3, 16);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (17, 3, 17);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (18, 3, 18);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (19, 3, 19);
insert into tblStudyStudent (seq, studyseq, learningseq)
    values (20, 3, 20);
    
                        ----------------더미↓----------------
-- sequence : studystudent_seq    


-- 데이터 삽입전에 생각하기 **
--19. 강의실상태(더미: 01/01 - /3/31 , 실제: 4/01 ~ 04/26) 
--**! 하루에 한줄씩 레코드 삽입합시다!
-- reservedate 의 default 는 null
insert into tblRoomStatus (seq, reservedate, roomseq, studyseq)
    values (1, '시연하면 날짜 입력하기', 1, 1);
insert into tblRoomStatus (seq, reservedate, roomseq, studyseq)
    values (2, '시연하면 날짜 입력하기', 2, 2);
                        ----------------더미↓----------------
-- sequence : roomstatus_seq    

COMMIT;
