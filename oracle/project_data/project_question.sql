----12.필기시험(정답)(한과목당 20문제씩 (배점2점) 실제 : 과목 5개(100개))***
--insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
--    values (1, '객체지향언어에 대한 설명으로 옳은것은?', 5, 1);
---- sequence : pjava_seq, poracle_seq ... XXXX!!!!!!
-- ************SEQUENCE는 오직 seq로 세다!!*****************************************
-- <seq 번호>
----java, oracle, javascript, jsp,    project,    jdbc, spring, python, c#, php, html5, , R, mysql, bigdata  
--  1~20  21~40   41~60       61~80   81~100     ...> 순서 알아서 정할 것!!!
---- 문제는 과목당 20문제. 4지선다형.

--1. java

SELECT * FROM TBLPILGIEXAM

insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (1, '다음 중 프로그램 코드 검토 기법(Software Inspection)을 해야 하는 비즈니스적인 이유로 틀린 것은?', 4, 1);   
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (2, '객체지향언어에 대한 설명으로 옳은것은?', 3, 1);   
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (3, 'V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 테스팅이라는 일련의 단계를 통해 소프트웨어를 개발하는 개발 모델에 근간을 두고 있는데 이에 해당하는 개발 모델은?', 4, 1);    
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (4, '소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것은?', 4, 1);    
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (5, '소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것은?', 1, 1);  
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (6, '컴포넌트 또는 소프트웨어의 구조를 중심으로 테스트 케이스를 도출하고 선택하는방법은 무엇인가?', 2, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (7, '화이트박스 기법의 검사 종류가 아닌 것은?', 3, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (8, '블랙박스 기법의 검사종류가 아닌 것은?', 3, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (9, '정적 테스팅의 개념이 아닌 것은?', 1, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (10, '다음 중 리뷰의 유형에 해당하지 않는 것은?', 1, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (11, '통합 테스트 수행 방법 중 틀린 것은?', 4, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (12, '시스템이나 소프트웨어(컴포넌트, 데이터, 문서)의 상태를 그대로 보전, 보호하고 유지하기 위함이다. 이 떄, 형상관리 시스템의 요소에 포함되지 않는 것은?', 1, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (13, '목적 및 실행 코드 기반의 실행을 통한 블랙박스 테스트로서 동등 분할, 경계값 분석 등의 목적이 있는 테스트 방법은?', 1, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (14, '테스트 자동화에서 테스트 도구의 장점이 아닌 것은?', 2, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (15, '다음 중 결함의 정의가 아닌 것은?', 2, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (16, '다음 중 결함의 분류가 아닌 것은?', 5, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (17, '다음 중 결함의 분류에서 기능 결함에 해당하지 않는 것은?', 4, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (18, '다음 중 결함의 분류에서 GUI결함에 해당하지 않는 것은?', 1, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (19, '다음 중 결함의 판단 기준에 해당하지 않는 것은?', 4, 1);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (20, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 1);    

--2 ORACLE------------------------------------------------------------------------------
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (21, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (22, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (23, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (24, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (25, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (26, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (27, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (28, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (29, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (30, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (31, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (32, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (33, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
 insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (34, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (35, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (36, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (37, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (38, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (39, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
    values (40, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 2);
--insert into tblPilgiExam (seq, question, answer, coursesubjectseq)
--    values (41, '다음 중 모든 결함을 수정할 수 없는 사유에 해당하지 않는 것은?', 1, 3);
    
----13. 학생과목필기답(과목당 20개, 4지선다형)
--insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq)
--    values (pilgiAnswer_seq.nextval, 4, 1, 1); -- pilgiexamseq의 1번이 java 인지 oracle인지 구분 가능?
---- sequence : pilgiAnswer_seq
--********************************************학생1***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 1, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 1, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 1, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 1, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 1, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 1, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 1, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 1, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 9, 1, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 14, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 15, 1, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 1, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 1, 1);  
    
    
--********************************************학생2***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 2, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 2, 2, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 3, 2, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 2, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 2, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 2, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 2, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 2, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 2, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 2, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 2, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 2, 1); 
    
--********************************************학생3***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 3, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 3, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 3, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 3, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 3, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 3, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 7, 3, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 3, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 9, 3, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 15, 3, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 16, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 17, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 3, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 3, 1);
    
    
--********************************************학생4***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 1, 4, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 4, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 4, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 4, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 4, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 4, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 4, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 4, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 4, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 11, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 13, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 4, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 16, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 17, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 18, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 4, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 4, 1); 
    
    
--********************************************학생5***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 5, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 5, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 5, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 5, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 5, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 5, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 5, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 5, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 5, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 5, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 5, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 5, 1);
    
    
--********************************************학생6***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 6, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 6, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 6, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 4, 6, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 6, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 6, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 6, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 6, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 6, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 6, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 6, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 6, 1);
    
    
--********************************************학생7***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 7, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 7, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 7, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 7, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 7, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 7, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 7, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 7, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 7, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 15, 7, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 17, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 18, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 19, 7, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 7, 1);
    
    
--********************************************학생8***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 8, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 8, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 8, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 8, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 8, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 8, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 7, 8, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 8, 8, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 8, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 8, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 8, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 8, 1);
    
    
--********************************************학생9***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 9, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 9, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 9, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 9, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 9, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 9, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 9, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 9, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 9, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 9, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 9, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 9, 1);
    
    
--********************************************학생10***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 1, 10, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 10, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 10, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 10, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 10, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 10, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 7, 10, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 8, 10, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 9, 10, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 11, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 15, 10, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 10, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 10, 1);
    
    
--********************************************학생11***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 11, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 11, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 11, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 11, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 11, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 11, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 11, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 11, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 9, 11, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 14, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 15, 11, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 19, 11, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 11, 1); 
    
    
--********************************************학생12***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 12, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 12, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 12, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 12, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 12, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 12, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 12, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 12, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 12, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 12, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 12, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 12, 1);

--********************************************학생13***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 13, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 2, 13, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 13, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 13, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 13, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 13, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 13, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 13, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 13, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 10, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 11, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 13, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 17, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 13, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 13, 1);
--********************************************학생14***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 14, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 14, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 3, 14, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 14, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 14, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 14, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 14, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 14, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 14, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 14, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 14, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 14, 1);
--********************************************학생15***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 15, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 15, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 15, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 15, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 15, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 6, 15, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 15, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 8, 15, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 15, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 10, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 12, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 13, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 15, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 15, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 15, 1);
--********************************************학생16***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 16, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 16, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 3, 16, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 16, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 16, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 16, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 16, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 16, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 16, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 16, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 16, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 16, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 16, 1);
--********************************************학생17***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 17, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 17, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 17, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 17, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 17, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 17, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 17, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 17, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 17, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 10, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 17, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 17, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 17, 1);
--********************************************학생18***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 18, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 18, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 3, 18, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 4, 18, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 18, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 18, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 7, 18, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 8, 18, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 18, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 10, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 11, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 12, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 18, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 18, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 18, 1);
    
--********************************************학생19***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 19, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 19, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 19, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 19, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 19, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 6, 19, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 19, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 8, 19, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 19, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 19, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 19, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 19, 1);
    
--********************************************학생20***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 20, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 20, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 20, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 20, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 20, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 20, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 20, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 20, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 20, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 20, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 20, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 20, 1);
    
--********************************************학생21***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 21, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 21, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 21, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 21, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 21, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 21, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 21, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 21, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 21, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 21, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 21, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 21, 1);
    
--********************************************학생22***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 22, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 2, 22, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 3, 22, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 4, 22, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 5, 22, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 6, 22, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 7, 22, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 8, 22, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 9, 22, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 10, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 22, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 22, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 22, 1);
    
--********************************************학생23***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 23, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 2, 23, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 23, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 23, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 23, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 23, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 23, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 23, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 23, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 23, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 23, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 23, 1);
    
--********************************************학생24***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 24, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 24, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 24, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 24, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 24, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 24, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 24, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 24, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 9, 24, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 10, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 24, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 24, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 24, 1);
    
--********************************************학생25***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 1, 25, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 2, 25, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 3, 25, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 4, 25, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 25, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 25, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 25, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 25, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 25, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 25, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 25, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 25, 1);
    
--********************************************학생26***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 26, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 26, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 26, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 26, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 26, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 26, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 26, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 26, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 26, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 10, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 26, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 26, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 26, 1);

--********************************************학생27***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 1, 27, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 2, 27, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 3, 27, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 4, 27, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 5, 27, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 6, 27, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 7, 27, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 27, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 9, 27, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 27, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 27, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 27, 1);
    
--********************************************학생28***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 28, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 28, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 28, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 28, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 28, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 28, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 28, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 28, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 28, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 28, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 28, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 28, 1);
    
--********************************************학생29***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 29, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 29, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 3, 29, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 4, 29, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 5, 29, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 6, 29, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 29, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 29, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 29, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 29, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 29, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 29, 1);
    
--********************************************학생30***********************************************************************
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 1, 30, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 2, 30, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 3, 30, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 4, 30, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 5, 30, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 6, 30, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 7, 30, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 3, 8, 30, 1);
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 9, 30, 1);   
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 10, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 11, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 12, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 13, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 14, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 2, 15, 30, 1);        
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 5, 16, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 17, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 18, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 4, 19, 30, 1);    
insert into tblPilgiAnswer (seq, answer, pilgiexamseq, learningseq, coursesubjectseq)
    values (pilgiAnswer_seq.nextval, 1, 20, 30, 1);
----14. 실기시험(한과목당 10문제씩 (배점4점) 실제 : 과목 5개(50개))***
--insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
--    values (sjava_seq.nextval, '문제문제', '정답', 1);
---- sequence : sjava_seq, soracle_seq ...

insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (1, 'Java JDK 관련 명령어를 어느 폴더에서나 이용하기 위해 JDK실행 파일이 있는 폴더에 추가해야 하는 것은?', '환경변수', 1);
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (2, '일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의차이를 발견하기 위해 수행하는 활동은?', '테스트', 1);    
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (3, '웹서비스의 구성요소중 공개와 검색을 위한 XML레지스트리의구현과 사용방법을 표준화한 것이다.', 'UDDI', 1);
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (4, 'Java로 만들어진 프로그램에서 해당 플랫폼에서만 실행 가능한 네이티브 코드에 접근하기 위해 만들어진 응용프로그램 인터페이스(API)는?', 'JNI', 1);
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (5, 'Java 클래스 실행시 포함해야할 jar파일이 존재할 경우 사용하는 옵션은무엇인가?', '-classpath(-cp)', 1);
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (6, '객체지향 프로그래밍을 의미하고 데이터를 객체로 취급하여 프로그램에 반영한것의 약자는?', 'OOP', 1);
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (7, '객체 지향 프로그래밍에서 데이터와 그 데이터에 관련되는 동작. 즉 절차, 방법, 기능을 모두포함한 개념을 무엇이라 하는가?', '객체', 1);
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (8, '같은 이름의 메소드를 여러개 정의하는 것을 무엇이라 하는가?', '오버로딩', 1);
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (9, 'Java 언어를 통해 데이터 베이스에 접근 할 수 있는 프로그래밍을 의미하는 언어의 약자는?', 'JDBC', 1);
insert into tblSilgiExam (seq, question, answer, coursesubjectseq)
    values (10, '클라이언트에서 서버로 데이터를 전달할 때 길이에 제한이 있고, 쿼리 스트링이주소창에 보이지 않아 보안성이 떨어지지만, 주소 뒤에 이름과 값이 결합된 스트링 형태로전달되는 방식은 무엇인가?', 'Get방식', 1);

    
    
----15. 학생과목실기답 (과목당 10개, 단답형,answer 에 띄어쓰기 사용 XX)
--***************************************************************학생1**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체지향', 2, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JMT', 4, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 1, 1);
    
--***************************************************************학생2**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 1, 1, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 2, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'HTTP', 3, 2, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 2, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 2, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 2, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '사물', 7, 2, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버라이딩', 8, 2, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 2, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 2, 1);
    
--***************************************************************학생3**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '개체', 7, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버라이딩', 8, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 3, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 3, 1);
    
--***************************************************************학생4**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JTBC', 9, 4, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'post방식', 10, 4, 1);
    
--***************************************************************학생5**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 5, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 5, 1);
    
--***************************************************************학생6**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'POP', 6, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 6, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 6, 1);
    
--***************************************************************학생7**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JSP?', 4, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 7, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get', 10, 7, 1);
    
--***************************************************************학생8**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 8, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 8, 1);
    
--***************************************************************학생9**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음', 1, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 6, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 7, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 8, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 9, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 9, 1);
    
--***************************************************************학생10**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 1, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 3, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 4, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 6, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 7, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 8, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 9, 10, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 10, 1);
    
--***************************************************************학생11**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 7, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 8, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 11, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 11, 1);
    
--***************************************************************학생12**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버라이딩', 8, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 12, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 12, 1);
    
--***************************************************************학생13**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 1, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 3, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 4, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 6, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 9, 13, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 10, 13, 1);
    
--***************************************************************학생14**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 14, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 14, 1);
    
--***************************************************************학생15**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JTBC', 9, 15, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Post방식', 10, 15, 1);
    
--***************************************************************학생16**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 1, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 3, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 7, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 16, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 16, 1);
    
--***************************************************************학생17**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 6, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 17, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 17, 1);
    
--***************************************************************학생18**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 4, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 18, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 18, 1);
    
--***************************************************************학생19**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 3, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 4, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 19, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 19, 1);
    
--***************************************************************학생20**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 1, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 20, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 20, 1);
    
--***************************************************************학생21**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 21, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 21, 1);
    
--***************************************************************학생22**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 4, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 6, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 7, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 8, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 22, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 22, 1);
    
--***************************************************************학생23**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 9, 23, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 23, 1);
    
--***************************************************************학생24**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 3, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 6, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 24, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 24, 1);
    
--***************************************************************학생25**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 1, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 3, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 6, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 7, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 9, 25, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 25, 1);
    
--***************************************************************학생26**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 4, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 6, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 26, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 26, 1);
    
--***************************************************************학생27**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 7, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 9, 27, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 27, 1);
    
--***************************************************************학생28**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 4, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 28, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 28, 1);
    
--***************************************************************학생29**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '환경변수', 1, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '테스트', 2, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 4, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '-classpath(-cp)', 5, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 29, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 29, 1);
    
--***************************************************************학생30**************************************************
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 1, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 2, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'UDDI', 3, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JNI', 4, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '모르겠음.', 5, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'OOP', 6, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '객체', 7, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, '오버로딩', 8, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'JDBC', 9, 30, 1);
insert into tblSilgiAnswer (seq, answer, silgiexamseq, learningseq, coursesubjectseq)
    values (silgianswer_seq.nextval, 'Get방식', 10, 30, 1);


