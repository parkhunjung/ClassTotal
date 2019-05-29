--SELECT * FROM tblstudystudent;
--SELECT * FROM tblstudy;
--SELECT * FROM tblroomstatus;
----COMMIT;
----UPDATE tblstudystudent SET learningseq = 22 WHERE learningseq =12; 
--DESC tblroomstatus;
----1, 2, 3
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(1,TO_DATE('2019-02-14','YYYY-MM-DD'),1,1);
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(2,TO_DATE('2019-02-14','YYYY-MM-DD'),2,2);
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(3,TO_DATE('2019-02-14','YYYY-MM-DD'),3,3);
--
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(4,TO_DATE('2019-02-18','YYYY-MM-DD'),3,1);
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(5,TO_DATE('2019-02-20','YYYY-MM-DD'),3,2);
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(6,TO_DATE('2019-02-21','YYYY-MM-DD'),1,3);
--    
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(7,TO_DATE('2019-02-22','YYYY-MM-DD'),1,1);
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(8,TO_DATE('2019-02-25','YYYY-MM-DD'),2,2);
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(9,TO_DATE('2019-02-25','YYYY-MM-DD'),3,3);
--
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(10,TO_DATE('2019-02-26','YYYY-MM-DD'),2,1);
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(11,TO_DATE('2019-02-27','YYYY-MM-DD'),2,2);
--INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq) 
--    VALUES(12,TO_DATE('2019-02-28','YYYY-MM-DD'),2,3);


SELECT * FROM tblattended;
--80퍼기준 
SELECT COUNT(*) AS 일수,
    COUNT(
        CASE
            WHEN status = '출근' THEN 1
        END) AS 출근,
    COUNT(
        CASE
            WHEN status = '출근' THEN 1
        END)/COUNT(*)*100 AS 퍼센트,
    learningseq 
FROM tblattended
WHERE intime BETWEEN TO_DATE('2019-03-01') AND TO_DATE('2019-03-31')+1
GROUP BY learningseq
ORDER BY learningseq;

--12번 중도탈락 2019-02-11 
--21번 중도탈락 2019-03-13
SELECT * FROM tbllearning;
--80퍼센트 
--COMMIT;
--ROLLBACK;
SELECT * FROM tblattendedsudang; --3

-- 1월
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',1);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,2);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,3);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,4);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,5);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,6);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,7);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,8);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,9);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,10);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,11);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,12);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,13);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,14);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,15);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,16);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,17);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,18);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,19);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,20);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,21);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,22);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,23);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,24);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,25);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,26);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,27);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,28);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,29);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,30);
    
    
--2월


INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',1);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,2);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,3);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,4);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,5);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,6);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,16000,7);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,8);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,9);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,10);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,11);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',12);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,16000,13);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,14);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,15);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,16);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,17);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,16000,18);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,16000,19);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,20);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,21);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,22);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,23);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,24);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,25);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,26);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,27);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,28);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,29);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',30);
    

    
--3월

INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,1);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,2);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,3);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,4);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,5);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,6);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,7);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,8);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,9);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,18000,10);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,11);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,12);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,13);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,14);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,15);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,16);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,17);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,18);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,19);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,20);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',21);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,22);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,23);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,24);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,25);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,26);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,27);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,28);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,29);
INSERT INTO tblattendedsudang(seq, sudang, learningseq)
    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,30);