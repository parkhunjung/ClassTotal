--11. 교육생출결하기(더미 : 30명(하루치), 실제 : 30명(하루치)) ************************4/1일까지!!!최대한하기 (출근,지각,결석,조퇴)
--출근시간, 퇴근시간은 기존과 동일!!!!! (9:00 ~ 18:00)
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1, to_date('2019-01-28/09:20','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1);
--delete from tblAttended where seq=1;
                        ----------------더미↓----------------
--ex) values(1, to_date('2019-01-01/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-01/00:00','yyyy-mm-dd/hh24:mi') , '결석', 1);

--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(1, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(2, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(3, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(4, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(5, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(6, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(7, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(8, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(9, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(10, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(11, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(12, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(13, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(14, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(15, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(16, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(17, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(18, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(19, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(20, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(21, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(22, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(23, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(24, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(25, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(26, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(27, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(28, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(29, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(30, to_date('2019-01-28/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
---------------


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(31, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(32, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(33, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(34, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(35, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(36, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(37, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(38, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(39, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(40, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(41, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(42, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(43, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(44, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(45, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(46, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(47, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(48, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(49, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(50, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(51, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(52, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(53, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(54, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(55, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(56, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(57, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(58, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(59, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(60, to_date('2019-01-29/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(61, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(62, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(63, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(64, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(65, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(66, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(67, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(68, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(69, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(70, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(71, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(72, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(73, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(74, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(75, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(76, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(77, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(78, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(79, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(80, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(81, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(82, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(83, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(84, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(85, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(86, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(87, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(88, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(89, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(90, to_date('2019-01-30/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-30/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    

    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(91, to_date('2019-01-31/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(92, to_date('2019-01-31/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(93, to_date('2019-01-31/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(94, to_date('2019-01-31/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(95, to_date('2019-01-31/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(96, to_date('2019-01-31/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(97, to_date('2019-01-31/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(98, to_date('2019-01-31/08:59','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(99, to_date('2019-01-31/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(100, to_date('2019-01-31/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근',10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(101, to_date('2019-01-31/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근',11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(102, to_date('2019-01-31/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근',12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(103, to_date('2019-01-31/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근',13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(104, to_date('2019-01-31/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근',14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(105, to_date('2019-01-31/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(106, to_date('2019-01-31/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(107, to_date('2019-01-31/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(108, to_date('2019-01-31/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(109, to_date('2019-01-31/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(110, to_date('2019-01-31/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(111, to_date('2019-01-31/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(112, to_date('2019-01-31/08:59','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(113, to_date('2019-01-31/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(114, to_date('2019-01-31/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(115, to_date('2019-01-31/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(116, to_date('2019-01-31/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(117, to_date('2019-01-31/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(118, to_date('2019-01-31/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(119, to_date('2019-01-31/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(120, to_date('2019-01-31/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-01-31/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(121, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(122, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(123, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(124, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(125, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(126, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(127, to_date('2019-02-01/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(128, to_date('2019-02-01/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(129, to_date('2019-02-01/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(130, to_date('2019-02-01/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(131, to_date('2019-02-01/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(132, to_date('2019-02-01/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(133, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(134, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(135, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(136, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(137, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(138, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(139, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(140, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(141, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(142, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(143, to_date('2019-02-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(144, to_date('2019-02-01/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(145, to_date('2019-02-01/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(146, to_date('2019-02-01/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(147, to_date('2019-02-01/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(148, to_date('2019-02-01/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(149, to_date('2019-02-01/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(150, to_date('2019-02-01/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-02-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    
 -- ㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴ 
 
 insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(151, to_date('2019-02-07/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(152, to_date('2019-02-07/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(153, to_date('2019-02-07/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(154, to_date('2019-02-07/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(155, to_date('2019-02-07/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(156, to_date('2019-02-07/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(157, to_date('2019-02-07/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(158, to_date('2019-02-07/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(159, to_date('2019-02-07/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(160, to_date('2019-02-07/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(161, to_date('2019-02-07/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(162, to_date('2019-02-07/08:29','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(163, to_date('2019-02-07/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(164, to_date('2019-02-07/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(165, to_date('2019-02-07/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(166, to_date('2019-02-07/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(167, to_date('2019-02-07/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(168, to_date('2019-02-07/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(169, to_date('2019-02-07/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(170, to_date('2019-02-07/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(171, to_date('2019-02-07/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(172, to_date('2019-02-07/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(173, to_date('2019-02-07/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(174, to_date('2019-02-07/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(175, to_date('2019-02-07/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(176, to_date('2019-02-07/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(177, to_date('2019-02-07/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(178, to_date('2019-02-07/08:29','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(179, to_date('2019-02-07/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(180, to_date('2019-02-07/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30); 
    
 -----------------------------------------------------------------------------------------------------  
 insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(181, to_date('2019-02-08/09:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(182, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(183, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(184, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(185, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(186, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(187, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(188, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(189, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(190, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(191, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(192, to_date('2019-02-08/09:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '지각', 12); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(193, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(194, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(195, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(196, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(197, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(198, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(199, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(200, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(201, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(202, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(203, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(204, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(205, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(206, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(207, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(208, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(209, to_date('2019-02-08/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(210, to_date('2019-02-08/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30); 
 -----------------------------------------------------------------------------------------------------
 insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(211, to_date('2019-02-11/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(212, to_date('2019-02-11/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(213, to_date('2019-02-11/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(214, to_date('2019-02-11/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(215, to_date('2019-02-11/08:20','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(216, to_date('2019-02-11/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(217, to_date('2019-02-11/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(218, to_date('2019-02-11/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(219, to_date('2019-02-11/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(220, to_date('2019-02-11/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(221, to_date('2019-02-11/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(222, to_date('2019-02-11/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(223, to_date('2019-02-11/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(224, to_date('2019-02-11/08:20','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(225, to_date('2019-02-11/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(226, to_date('2019-02-11/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(227, to_date('2019-02-11/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(228, to_date('2019-02-11/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(229, to_date('2019-02-11/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);   
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(230, to_date('2019-02-11/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(231, to_date('2019-02-11/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(232, to_date('2019-02-11/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(233, to_date('2019-02-11/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(234, to_date('2019-02-11/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(235, to_date('2019-02-11/08:20','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(236, to_date('2019-02-11/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(237, to_date('2019-02-11/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(238, to_date('2019-02-11/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(239, to_date('2019-02-11/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);

  -----------------------------------------------------------------------------------------------------
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(240, to_date('2019-02-12/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(241, to_date('2019-02-12/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(242, to_date('2019-02-12/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(243, to_date('2019-02-12/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(244, to_date('2019-02-12/08:54','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(245, to_date('2019-02-12/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(246, to_date('2019-02-12/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(247, to_date('2019-02-12/08:54','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(248, to_date('2019-02-12/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(249, to_date('2019-02-12/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(250, to_date('2019-02-12/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(251, to_date('2019-02-12/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(252, to_date('2019-02-12/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(253, to_date('2019-02-12/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(254, to_date('2019-02-12/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(255, to_date('2019-02-12/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(256, to_date('2019-02-12/09:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '지각', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(257, to_date('2019-02-12/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(258, to_date('2019-02-12/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(259, to_date('2019-02-12/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(260, to_date('2019-02-12/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(261, to_date('2019-02-12/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(262, to_date('2019-02-12/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(263, to_date('2019-02-12/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(264, to_date('2019-02-12/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(265, to_date('2019-02-12/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(266, to_date('2019-02-12/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(267, to_date('2019-02-12/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(268, to_date('2019-02-12/09:23','yyyy-mm-dd/hh24:mi'), to_date('2019-02-12/18:00','yyyy-mm-dd/hh24:mi') , '지각', 30);


------------------------------------------------------------------------    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(269, to_date('2019-02-13/10:22','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(270, to_date('2019-02-13/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(271, to_date('2019-02-13/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(272, to_date('2019-02-13/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(273, to_date('2019-02-13/08:05','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(274, to_date('2019-02-13/08:08','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(275, to_date('2019-02-13/10:22','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '지각', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(276, to_date('2019-02-13/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(277, to_date('2019-02-13/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(278, to_date('2019-02-13/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(279, to_date('2019-02-13/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(280, to_date('2019-02-13/10:22','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '지각', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(281, to_date('2019-02-13/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(282, to_date('2019-02-13/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(283, to_date('2019-02-13/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(284, to_date('2019-02-13/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(285, to_date('2019-02-13/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(286, to_date('2019-02-13/10:22','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '지각', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(287, to_date('2019-02-13/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(288, to_date('2019-02-13/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(289, to_date('2019-02-13/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(290, to_date('2019-02-13/08:05','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(291, to_date('2019-02-13/08:09','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(292, to_date('2019-02-13/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(293, to_date('2019-02-13/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(294, to_date('2019-02-13/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(295, to_date('2019-02-13/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(296, to_date('2019-02-13/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(297, to_date('2019-02-13/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(298, to_date('2019-02-14/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(299, to_date('2019-02-14/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(300, to_date('2019-02-14/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(301, to_date('2019-02-14/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(302, to_date('2019-02-14/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(303, to_date('2019-02-14/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);   
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(304, to_date('2019-02-14/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(305, to_date('2019-02-14/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(306, to_date('2019-02-14/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(307, to_date('2019-02-14/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(308, to_date('2019-02-14/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(309, to_date('2019-02-14/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(310, to_date('2019-02-14/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(311, to_date('2019-02-14/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(312, to_date('2019-02-14/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);   
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(313, to_date('2019-02-14/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(314, to_date('2019-02-14/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(315, to_date('2019-02-14/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(316, to_date('2019-02-14/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(317, to_date('2019-02-14/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(318, to_date('2019-02-14/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(319, to_date('2019-02-14/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(320, to_date('2019-02-14/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(321, to_date('2019-02-14/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(322, to_date('2019-02-14/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);   
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(323, to_date('2019-02-14/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(324, to_date('2019-02-14/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(325, to_date('2019-02-14/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(326, to_date('2019-02-14/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-02-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);


        
-----------------------------------------------------------------------------------------------
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(327, to_date('2019-02-15/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(328, to_date('2019-02-15/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(329, to_date('2019-02-15/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(330, to_date('2019-02-15/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(331, to_date('2019-02-15/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(332, to_date('2019-02-15/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(333, to_date('2019-02-15/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(334, to_date('2019-02-15/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(335, to_date('2019-02-15/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(336, to_date('2019-02-15/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(337, to_date('2019-02-15/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(338, to_date('2019-02-15/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(339, to_date('2019-02-15/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(340, to_date('2019-02-15/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(341, to_date('2019-02-15/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(342, to_date('2019-02-15/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(343, to_date('2019-02-15/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(344, to_date('2019-02-15/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(345, to_date('2019-02-15/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(346, to_date('2019-02-15/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(347, to_date('2019-02-15/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(348, to_date('2019-02-15/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(349, to_date('2019-02-15/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(350, to_date('2019-02-15/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(351, to_date('2019-02-15/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(352, to_date('2019-02-15/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(353, to_date('2019-02-15/08:29','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(354, to_date('2019-02-15/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(355, to_date('2019-02-15/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30); 

----------------------------------------------------
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(356, to_date('2019-02-18/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(357, to_date('2019-02-18/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(358, to_date('2019-02-18/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(359, to_date('2019-02-18/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(360, to_date('2019-02-18/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(361, to_date('2019-02-18/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(362, to_date('2019-02-18/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(363, to_date('2019-02-18/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(364, to_date('2019-02-18/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(365, to_date('2019-02-18/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(366, to_date('2019-02-18/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(367, to_date('2019-02-18/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(368, to_date('2019-02-18/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(369, to_date('2019-02-18/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(370, to_date('2019-02-18/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(371, to_date('2019-02-18/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(372, to_date('2019-02-18/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(373, to_date('2019-02-18/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(374, to_date('2019-02-18/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(375, to_date('2019-02-18/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(376, to_date('2019-02-18/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(377, to_date('2019-02-18/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(378, to_date('2019-02-18/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(379, to_date('2019-02-18/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(380, to_date('2019-02-18/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(381, to_date('2019-02-18/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(382, to_date('2019-02-18/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(383, to_date('2019-02-18/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(384, to_date('2019-02-18/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-02-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 ); 

-------------------------------------------------------------------------------------------------------------------------------

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(385, to_date('2019-02-19/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(386, to_date('2019-02-19/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(387, to_date('2019-02-19/08:54','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(388, to_date('2019-02-19/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(389, to_date('2019-02-19/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(390, to_date('2019-02-19/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(391, to_date('2019-02-19/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(392, to_date('2019-02-19/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(393, to_date('2019-02-19/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(394, to_date('2019-02-19/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(395, to_date('2019-02-19/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(396, to_date('2019-02-19/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(397, to_date('2019-02-19/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(398, to_date('2019-02-19/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(399, to_date('2019-02-19/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(400, to_date('2019-02-19/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(401, to_date('2019-02-19/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(402, to_date('2019-02-19/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(403, to_date('2019-02-19/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(404, to_date('2019-02-19/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(405, to_date('2019-02-19/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(406, to_date('2019-02-19/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(407, to_date('2019-02-19/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(408, to_date('2019-02-19/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(409, to_date('2019-02-19/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(410, to_date('2019-02-19/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(411, to_date('2019-02-19/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(412, to_date('2019-02-19/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(413, to_date('2019-02-19/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-02-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 ); 

--------------------------------------------------------------------------------------------------------------------------------

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(414, to_date('2019-02-20/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(415, to_date('2019-02-20/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(416, to_date('2019-02-20/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(417, to_date('2019-02-20/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(418, to_date('2019-02-20/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(419, to_date('2019-02-20/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(420, to_date('2019-02-20/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(421, to_date('2019-02-20/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(422, to_date('2019-02-20/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(423, to_date('2019-02-20/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(424, to_date('2019-02-20/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(425, to_date('2019-02-20/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(426, to_date('2019-02-20/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(427, to_date('2019-02-20/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(428, to_date('2019-02-20/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(429, to_date('2019-02-20/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(430, to_date('2019-02-20/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(431, to_date('2019-02-20/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(432, to_date('2019-02-20/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(433, to_date('2019-02-20/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(434, to_date('2019-02-20/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(435, to_date('2019-02-20/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(436, to_date('2019-02-20/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(437, to_date('2019-02-20/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(438, to_date('2019-02-20/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(439, to_date('2019-02-20/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(440, to_date('2019-02-20/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(441, to_date('2019-02-20/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(442, to_date('2019-02-20/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-02-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 ); 
-------------------------------------------------------------------------------

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(443, to_date('2019-02-21/09:11','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(444, to_date('2019-02-21/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(445, to_date('2019-02-21/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(446, to_date('2019-02-21/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(447, to_date('2019-02-21/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(448, to_date('2019-02-21/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(449, to_date('2019-02-21/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(450, to_date('2019-02-21/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(451, to_date('2019-02-21/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(452, to_date('2019-02-21/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(453, to_date('2019-02-21/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(454, to_date('2019-02-21/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(455, to_date('2019-02-21/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(456, to_date('2019-02-21/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(457, to_date('2019-02-21/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(458, to_date('2019-02-21/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(459, to_date('2019-02-21/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(460, to_date('2019-02-21/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(461, to_date('2019-02-21/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(462, to_date('2019-02-21/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(463, to_date('2019-02-21/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(464, to_date('2019-02-21/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(465, to_date('2019-02-21/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(466, to_date('2019-02-21/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(467, to_date('2019-02-21/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(468, to_date('2019-02-21/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(469, to_date('2019-02-21/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(470, to_date('2019-02-21/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(471, to_date('2019-02-21/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-02-21/00:00','yyyy-mm-dd/hh24:mi') , '결석', 30 ); 
-------------------------------------------------------------------------------------------------------------
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(472, to_date('2019-02-22/09:01','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(473, to_date('2019-02-22/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(474, to_date('2019-02-22/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(475, to_date('2019-02-22/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(476, to_date('2019-02-22/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(477, to_date('2019-02-22/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(478, to_date('2019-02-22/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(479, to_date('2019-02-22/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(480, to_date('2019-02-22/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(481, to_date('2019-02-22/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(482, to_date('2019-02-22/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(483, to_date('2019-02-22/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(484, to_date('2019-02-22/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(485, to_date('2019-02-22/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(486, to_date('2019-02-22/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(487, to_date('2019-02-22/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(488, to_date('2019-02-22/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(489, to_date('2019-02-22/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(490, to_date('2019-02-22/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(491, to_date('2019-02-22/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(492, to_date('2019-02-22/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(493, to_date('2019-02-22/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(494, to_date('2019-02-22/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(495, to_date('2019-02-22/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(496, to_date('2019-02-22/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(497, to_date('2019-02-22/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(498, to_date('2019-02-22/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(499, to_date('2019-02-22/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(500, to_date('2019-02-22/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-02-22/00:00','yyyy-mm-dd/hh24:mi') , '결석', 30 ); 
-------------------------------------------------------------------------------------------
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(501, to_date('2019-02-25/09:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(502, to_date('2019-02-25/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(503, to_date('2019-02-25/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(504, to_date('2019-02-25/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(505, to_date('2019-02-25/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(506, to_date('2019-02-25/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(507, to_date('2019-02-25/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(508, to_date('2019-02-25/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(509, to_date('2019-02-25/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(510, to_date('2019-02-25/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(511, to_date('2019-02-25/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(512, to_date('2019-02-25/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(513, to_date('2019-02-25/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(514, to_date('2019-02-25/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(515, to_date('2019-02-25/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(516, to_date('2019-02-25/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(517, to_date('2019-02-25/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(518, to_date('2019-02-25/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(519, to_date('2019-02-25/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(520, to_date('2019-02-25/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(521, to_date('2019-02-25/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(522, to_date('2019-02-25/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(523, to_date('2019-02-25/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(524, to_date('2019-02-25/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(525, to_date('2019-02-25/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(526, to_date('2019-02-25/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(527, to_date('2019-02-25/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(528, to_date('2019-02-25/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(529, to_date('2019-02-25/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-02-25/00:00','yyyy-mm-dd/hh24:mi') , '결석', 30 );

--------------------------------------------------------------
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(530, to_date('2019-02-26/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(531, to_date('2019-02-26/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(532, to_date('2019-02-26/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(533, to_date('2019-02-26/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(534, to_date('2019-02-26/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(535, to_date('2019-02-26/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(536, to_date('2019-02-26/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(537, to_date('2019-02-26/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(538, to_date('2019-02-26/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(539, to_date('2019-02-26/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(540, to_date('2019-02-26/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(541, to_date('2019-02-26/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(542, to_date('2019-02-26/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(543, to_date('2019-02-26/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(544, to_date('2019-02-26/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(545, to_date('2019-02-26/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(546, to_date('2019-02-26/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(547, to_date('2019-02-26/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(548, to_date('2019-02-26/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(549, to_date('2019-02-26/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(550, to_date('2019-02-26/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(551, to_date('2019-02-26/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(552, to_date('2019-02-26/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(553, to_date('2019-02-26/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(554, to_date('2019-02-26/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(555, to_date('2019-02-26/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(556, to_date('2019-02-26/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(557, to_date('2019-02-26/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(558, to_date('2019-02-26/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-02-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );
-------------------------------------------------------------------------------------
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(559, to_date('2019-02-27/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(560, to_date('2019-02-27/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(561, to_date('2019-02-27/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(562, to_date('2019-02-27/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(563, to_date('2019-02-27/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(564, to_date('2019-02-27/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(565, to_date('2019-02-27/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(566, to_date('2019-02-27/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(567, to_date('2019-02-27/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(568, to_date('2019-02-27/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(569, to_date('2019-02-27/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(570, to_date('2019-02-27/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(571, to_date('2019-02-27/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(572, to_date('2019-02-27/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(573, to_date('2019-02-27/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(574, to_date('2019-02-27/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(575, to_date('2019-02-27/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(576, to_date('2019-02-27/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(577, to_date('2019-02-27/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(578, to_date('2019-02-27/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(579, to_date('2019-02-27/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(580, to_date('2019-02-27/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(581, to_date('2019-02-27/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(582, to_date('2019-02-27/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(583, to_date('2019-02-27/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(584, to_date('2019-02-27/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(585, to_date('2019-02-27/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(586, to_date('2019-02-27/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(587, to_date('2019-02-27/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-02-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );
-------------------------------------------------------------------------------
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(588, to_date('2019-02-28/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(589, to_date('2019-02-28/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(590, to_date('2019-02-28/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(591, to_date('2019-02-28/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(592, to_date('2019-02-28/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(593, to_date('2019-02-28/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(594, to_date('2019-02-28/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(595, to_date('2019-02-28/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(596, to_date('2019-02-28/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(597, to_date('2019-02-28/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(598, to_date('2019-02-28/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(599, to_date('2019-02-28/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(600, to_date('2019-02-28/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(601, to_date('2019-02-28/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(602, to_date('2019-02-28/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(603, to_date('2019-02-28/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(604, to_date('2019-02-28/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(605, to_date('2019-02-28/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(606, to_date('2019-02-28/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(607, to_date('2019-02-28/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(608, to_date('2019-02-28/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(609, to_date('2019-02-28/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(610, to_date('2019-02-28/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(611, to_date('2019-02-28/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(612, to_date('2019-02-28/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(613, to_date('2019-02-28/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(614, to_date('2019-02-28/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(615, to_date('2019-02-28/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(616, to_date('2019-02-28/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-02-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );


--3월 1일 ~ 3월 15일부터

--*************3월 1일 삼일절

    
    
    
    
--***************3월 2일 토요일

    
    
    
    
--******************3월 3일 일요일

 
 
 
 
 
--******************3월 4일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(617, to_date('2019-03-04/09:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1);

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(618, to_date('2019-03-04/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(619, to_date('2019-03-04/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(620, to_date('2019-03-04/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(621, to_date('2019-03-04/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(622, to_date('2019-03-04/08:59','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(623, to_date('2019-03-04/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(624, to_date('2019-03-04/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/00:00','yyyy-mm-dd/hh24:mi') , '결석', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)

    values(625, to_date('2019-03-04/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(626, to_date('2019-03-04/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(627, to_date('2019-03-04/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-04/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(628, to_date('2019-03-04/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(629, to_date('2019-03-04/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(630, to_date('2019-03-04/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(631, to_date('2019-03-04/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(632, to_date('2019-03-04/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(633, to_date('2019-03-04/08:59','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(634, to_date('2019-03-04/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(635, to_date('2019-03-04/08:57','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(636, to_date('2019-03-04/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(637, to_date('2019-03-04/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(638, to_date('2019-03-04/08:54','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(639, to_date('2019-03-04/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(640, to_date('2019-03-04/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(641, to_date('2019-03-04/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(642, to_date('2019-03-04/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(643, to_date('2019-03-04/09:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '지각', 28);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(644, to_date('2019-03-04/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(645, to_date('2019-03-04/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-04/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
       




--******************3월 5일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(646, to_date('2019-03-05/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(647, to_date('2019-03-05/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(648, to_date('2019-03-05/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(649, to_date('2019-03-05/08:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(650, to_date('2019-03-05/08:49','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(651, to_date('2019-03-05/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(652, to_date('2019-03-05/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(653, to_date('2019-03-05/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(654, to_date('2019-03-05/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(655, to_date('2019-03-05/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(656, to_date('2019-03-05/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/17:00','yyyy-mm-dd/hh24:mi') , '조퇴', 11);
    
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-05/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(657, to_date('2019-03-05/08:49','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(658, to_date('2019-03-05/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(659, to_date('2019-03-05/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(660, to_date('2019-03-05/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(661, to_date('2019-03-05/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(662, to_date('2019-03-05/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(663, to_date('2019-03-05/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(664, to_date('2019-03-05/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(665, to_date('2019-03-05/09:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '지각', 21);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(666, to_date('2019-03-05/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(667, to_date('2019-03-05/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(668, to_date('2019-03-05/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(669, to_date('2019-03-05/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(670, to_date('2019-03-05/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(671, to_date('2019-03-05/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(672, to_date('2019-03-05/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(673, to_date('2019-03-05/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(674, to_date('2019-03-05/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-05/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    
    
    
    
    
--******************3월 6일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(675, to_date('2019-03-06/09:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(676, to_date('2019-03-06/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(677, to_date('2019-03-06/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(678, to_date('2019-03-06/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(679, to_date('2019-03-06/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(680, to_date('2019-03-06/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(681, to_date('2019-03-06/08:05','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(682, to_date('2019-03-06/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(683, to_date('2019-03-06/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(684, to_date('2019-03-06/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(685, to_date('2019-03-06/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-06/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(686, to_date('2019-03-06/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(687, to_date('2019-03-06/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(688, to_date('2019-03-06/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(689, to_date('2019-03-06/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/00:00','yyyy-mm-dd/hh24:mi') , '결석', 16);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(690, to_date('2019-03-06/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(691, to_date('2019-03-06/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(692, to_date('2019-03-06/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(693, to_date('2019-03-06/08:49','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(694, to_date('2019-03-06/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(695, to_date('2019-03-06/08:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(696, to_date('2019-03-06/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(697, to_date('2019-03-06/10:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '지각', 24);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(698, to_date('2019-03-06/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/17:23','yyyy-mm-dd/hh24:mi') , '조퇴', 25);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(699, to_date('2019-03-06/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(700, to_date('2019-03-06/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(701, to_date('2019-03-06/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(702, to_date('2019-03-06/08:59','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(703, to_date('2019-03-06/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-06/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    
    
    
    
    
--******************3월 7일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(704, to_date('2019-03-07/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(705, to_date('2019-03-07/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(706, to_date('2019-03-07/08:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(707, to_date('2019-03-07/08:10','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(708, to_date('2019-03-07/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(709, to_date('2019-03-07/08:03','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(710, to_date('2019-03-07/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(711, to_date('2019-03-07/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(712, to_date('2019-03-07/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(713, to_date('2019-03-07/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(714, to_date('2019-03-07/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-07/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(715, to_date('2019-03-07/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(716, to_date('2019-03-07/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(717, to_date('2019-03-07/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/00:00','yyyy-mm-dd/hh24:mi') , '결석', 15);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(718, to_date('2019-03-07/08:10','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(719, to_date('2019-03-07/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(720, to_date('2019-03-07/08:02','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(721, to_date('2019-03-07/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(722, to_date('2019-03-07/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(723, to_date('2019-03-07/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(724, to_date('2019-03-07/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(725, to_date('2019-03-07/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(726, to_date('2019-03-07/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(727, to_date('2019-03-07/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(728, to_date('2019-03-07/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(729, to_date('2019-03-07/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(730, to_date('2019-03-07/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(731, to_date('2019-03-07/08:51','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(732, to_date('2019-03-07/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-03-07/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);


   
   
   
--******************3월 8일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(733, to_date('2019-03-08/09:03','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(734, to_date('2019-03-08/08:10','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(735, to_date('2019-03-08/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(736, to_date('2019-03-08/08:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(737, to_date('2019-03-08/08:04','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(738, to_date('2019-03-08/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(739, to_date('2019-03-08/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(740, to_date('2019-03-08/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(741, to_date('2019-03-08/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(742, to_date('2019-03-08/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(743, to_date('2019-03-08/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-08/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(744, to_date('2019-03-08/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(745, to_date('2019-03-08/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(746, to_date('2019-03-08/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(747, to_date('2019-03-08/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(748, to_date('2019-03-08/08:20','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(749, to_date('2019-03-08/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(750, to_date('2019-03-08/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(751, to_date('2019-03-08/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(752, to_date('2019-03-08/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(753, to_date('2019-03-08/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(754, to_date('2019-03-08/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(755, to_date('2019-03-08/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(756, to_date('2019-03-08/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(757, to_date('2019-03-08/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(758, to_date('2019-03-08/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(759, to_date('2019-03-08/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(760, to_date('2019-03-08/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(761, to_date('2019-03-08/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-08/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
       
   
   
   
    
    
--*** 3월 9일 토요일


--*** 3월 10일 일요일




--*** 3월 11일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(762, to_date('2019-03-11/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(763, to_date('2019-03-11/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(764, to_date('2019-03-11/08:54','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(765, to_date('2019-03-11/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(766, to_date('2019-03-11/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(767, to_date('2019-03-11/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(768, to_date('2019-03-11/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(769, to_date('2019-03-11/08:20','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(770, to_date('2019-03-11/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(771, to_date('2019-03-11/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(772, to_date('2019-03-11/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-11/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(773, to_date('2019-03-11/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(774, to_date('2019-03-11/08:20','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(775, to_date('2019-03-11/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(776, to_date('2019-03-11/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(777, to_date('2019-03-11/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(778, to_date('2019-03-11/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(779, to_date('2019-03-11/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(780, to_date('2019-03-11/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(781, to_date('2019-03-11/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(782, to_date('2019-03-11/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(783, to_date('2019-03-11/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(784, to_date('2019-03-11/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(785, to_date('2019-03-11/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(786, to_date('2019-03-11/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(787, to_date('2019-03-11/08:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(788, to_date('2019-03-11/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(789, to_date('2019-03-11/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(790, to_date('2019-03-11/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-11/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    




--*** 3월 12일 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(791, to_date('2019-03-12/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(792, to_date('2019-03-12/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(793, to_date('2019-03-12/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(794, to_date('2019-03-12/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(795, to_date('2019-03-12/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(796, to_date('2019-03-12/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(797, to_date('2019-03-12/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(798, to_date('2019-03-12/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(799, to_date('2019-03-12/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(800, to_date('2019-03-12/09:08','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '지각', 10);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(801, to_date('2019-03-12/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-12/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(802, to_date('2019-03-12/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(803, to_date('2019-03-12/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(804, to_date('2019-03-12/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(805, to_date('2019-03-12/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(806, to_date('2019-03-12/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(807, to_date('2019-03-12/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(808, to_date('2019-03-12/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(809, to_date('2019-03-12/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(810, to_date('2019-03-12/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(811, to_date('2019-03-12/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(812, to_date('2019-03-12/08:02','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(813, to_date('2019-03-12/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(814, to_date('2019-03-12/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(815, to_date('2019-03-12/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(816, to_date('2019-03-12/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(817, to_date('2019-03-12/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(818, to_date('2019-03-12/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(819, to_date('2019-03-12/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-12/00:00','yyyy-mm-dd/hh24:mi') , '결석', 30);
    
    



--*** 3월 13일 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(820, to_date('2019-03-13/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(821, to_date('2019-03-13/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(822, to_date('2019-03-13/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(823, to_date('2019-03-13/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(824, to_date('2019-03-13/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(825, to_date('2019-03-13/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(826, to_date('2019-03-13/08:03','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(827, to_date('2019-03-13/08:02','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(828, to_date('2019-03-13/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(829, to_date('2019-03-13/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(830, to_date('2019-03-13/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-13/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(831, to_date('2019-03-13/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(832, to_date('2019-03-13/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(833, to_date('2019-03-13/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(834, to_date('2019-03-13/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(835, to_date('2019-03-13/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(836, to_date('2019-03-13/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(837, to_date('2019-03-13/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(838, to_date('2019-03-13/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-13/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(839, to_date('2019-03-13/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(840, to_date('2019-03-13/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(841, to_date('2019-03-13/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(842, to_date('2019-03-13/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(843, to_date('2019-03-13/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(844, to_date('2019-03-13/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(845, to_date('2019-03-13/08:51','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(846, to_date('2019-03-13/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(847, to_date('2019-03-13/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-03-13/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    
    
    
    
    
    
    
    
    
--*** 3월 14일 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(848, to_date('2019-03-14/09:50','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '지각', 1);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(849, to_date('2019-03-14/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(850, to_date('2019-03-14/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(851, to_date('2019-03-14/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(852, to_date('2019-03-14/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(853, to_date('2019-03-14/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(854, to_date('2019-03-14/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(855, to_date('2019-03-14/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(856, to_date('2019-03-14/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(857, to_date('2019-03-14/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(858, to_date('2019-03-14/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-14/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(859, to_date('2019-03-14/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(860, to_date('2019-03-14/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(861, to_date('2019-03-14/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(862, to_date('2019-03-14/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(863, to_date('2019-03-14/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(864, to_date('2019-03-14/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(865, to_date('2019-03-14/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(866, to_date('2019-03-14/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/00:00','yyyy-mm-dd/hh24:mi') , '결석', 20);
    
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-14/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(867, to_date('2019-03-14/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(868, to_date('2019-03-14/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(869, to_date('2019-03-14/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(870, to_date('2019-03-14/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(871, to_date('2019-03-14/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(872, to_date('2019-03-14/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(873, to_date('2019-03-14/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(874, to_date('2019-03-14/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(875, to_date('2019-03-14/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-14/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);
    
    
    
    
   
--*** 3월 15일 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(876, to_date('2019-03-15/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(877, to_date('2019-03-15/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(878, to_date('2019-03-15/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(879, to_date('2019-03-15/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(880, to_date('2019-03-15/00:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/00:00','yyyy-mm-dd/hh24:mi') , '결석', 5);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(881, to_date('2019-03-15/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(882, to_date('2019-03-15/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(883, to_date('2019-03-15/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8);  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(884, to_date('2019-03-15/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(885, to_date('2019-03-15/09:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '지각', 10);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(886, to_date('2019-03-15/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-15/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 12);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(887, to_date('2019-03-15/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(888, to_date('2019-03-15/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(889, to_date('2019-03-15/08:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(890, to_date('2019-03-15/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(891, to_date('2019-03-15/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(892, to_date('2019-03-15/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(893, to_date('2019-03-15/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(894, to_date('2019-03-15/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20);
--insert into tblAttended(seq, intime, outtime, status, learningseq)
--    values(, to_date('2019-03-15/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 21);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(895, to_date('2019-03-15/08:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(896, to_date('2019-03-15/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(897, to_date('2019-03-15/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(898, to_date('2019-03-15/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(899, to_date('2019-03-15/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(900, to_date('2019-03-15/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27);
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(901, to_date('2019-03-15/08:03','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(902, to_date('2019-03-15/09:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '지각', 29);
    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(903, to_date('2019-03-15/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-15/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30);    

-- 3월 18일 ~ 4월 1일

-- 18일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(904, to_date('2019-03-18/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(905, to_date('2019-03-18/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(906, to_date('2019-03-18/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(907, to_date('2019-03-18/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(908, to_date('2019-03-18/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(909, to_date('2019-03-18/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(910, to_date('2019-03-18/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(911, to_date('2019-03-18/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(912, to_date('2019-03-18/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(913, to_date('2019-03-18/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(914, to_date('2019-03-18/07:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(915, to_date('2019-03-18/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(916, to_date('2019-03-18/08:57','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(917, to_date('2019-03-18/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(918, to_date('2019-03-18/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(919, to_date('2019-03-18/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(920, to_date('2019-03-18/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(921, to_date('2019-03-18/08:08','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(922, to_date('2019-03-18/08:06','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(923, to_date('2019-03-18/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(924, to_date('2019-03-18/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(925, to_date('2019-03-18/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(926, to_date('2019-03-18/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(927, to_date('2019-03-18/08:10','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(928, to_date('2019-03-18/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(929, to_date('2019-03-18/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(930, to_date('2019-03-18/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(931, to_date('2019-03-18/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-03-18/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 ); 

----------------------------------------------------------------------------------------------------------------------------------- 
--19일   
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(932, to_date('2019-03-19/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(933, to_date('2019-03-19/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(934, to_date('2019-03-19/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(935, to_date('2019-03-19/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(936, to_date('2019-03-19/08:29','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(937, to_date('2019-03-19/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(938, to_date('2019-03-19/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(939, to_date('2019-03-19/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(940, to_date('2019-03-19/08:09','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(941, to_date('2019-03-19/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(942, to_date('2019-03-19/07:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(943, to_date('2019-03-19/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(944, to_date('2019-03-19/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(945, to_date('2019-03-19/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(946, to_date('2019-03-19/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(947, to_date('2019-03-19/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(948, to_date('2019-03-19/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(949, to_date('2019-03-19/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(950, to_date('2019-03-19/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(951, to_date('2019-03-19/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(952, to_date('2019-03-19/08:09','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(953, to_date('2019-03-19/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(954, to_date('2019-03-19/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(955, to_date('2019-03-19/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(956, to_date('2019-03-19/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(957, to_date('2019-03-19/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(958, to_date('2019-03-19/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(959, to_date('2019-03-19/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-03-19/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 ); 
    
----------------------------------------------------------------------------------------------------------------------------------- 
--20일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(960, to_date('2019-03-20/08:09','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(961, to_date('2019-03-20/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(962, to_date('2019-03-20/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(963, to_date('2019-03-20/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(964, to_date('2019-03-20/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(965, to_date('2019-03-20/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(966, to_date('2019-03-20/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(967, to_date('2019-03-20/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(968, to_date('2019-03-20/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(969, to_date('2019-03-20/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(970, to_date('2019-03-20/07:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(971, to_date('2019-03-20/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(972, to_date('2019-03-20/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(973, to_date('2019-03-20/08:23','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(974, to_date('2019-03-20/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(975, to_date('2019-03-20/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(976, to_date('2019-03-20/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(977, to_date('2019-03-20/08:08','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(978, to_date('2019-03-20/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(979, to_date('2019-03-20/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(980, to_date('2019-03-20/08:02','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(981, to_date('2019-03-20/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(982, to_date('2019-03-20/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(983, to_date('2019-03-20/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(984, to_date('2019-03-20/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(985, to_date('2019-03-20/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(986, to_date('2019-03-20/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(987, to_date('2019-03-20/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-20/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 ); 

----------------------------------------------------------------------------------------------------------------------------------- 
--21일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(988, to_date('2019-03-21/08:04','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(989, to_date('2019-03-21/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(990, to_date('2019-03-21/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(991, to_date('2019-03-21/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(992, to_date('2019-03-21/08:23','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(993, to_date('2019-03-21/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(994, to_date('2019-03-21/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(995, to_date('2019-03-21/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(996, to_date('2019-03-21/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(997, to_date('2019-03-21/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(998, to_date('2019-03-21/07:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(999, to_date('2019-03-21/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1000, to_date('2019-03-21/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1001, to_date('2019-03-21/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1002, to_date('2019-03-21/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1003, to_date('2019-03-21/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1004, to_date('2019-03-21/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1005, to_date('2019-03-21/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1006, to_date('2019-03-21/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1007, to_date('2019-03-21/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1008, to_date('2019-03-21/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1009, to_date('2019-03-21/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1010, to_date('2019-03-21/08:37','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1011, to_date('2019-03-21/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1012, to_date('2019-03-21/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1013, to_date('2019-03-21/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1014, to_date('2019-03-21/08:59','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1015, to_date('2019-03-21/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-03-21/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 ); 

----------------------------------------------------------------------------------------------------------------------------------- 
--22일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1016, to_date('2019-03-22/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1017, to_date('2019-03-22/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1018, to_date('2019-03-22/08:23','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1019, to_date('2019-03-22/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1020, to_date('2019-03-22/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1021, to_date('2019-03-22/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1022, to_date('2019-03-22/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1023, to_date('2019-03-22/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1024, to_date('2019-03-22/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1025, to_date('2019-03-22/08:51','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1026, to_date('2019-03-22/07:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1027, to_date('2019-03-22/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1028, to_date('2019-03-22/08:04','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1029, to_date('2019-03-22/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1030, to_date('2019-03-22/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1031, to_date('2019-03-22/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1032, to_date('2019-03-22/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1033, to_date('2019-03-22/08:23','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1034, to_date('2019-03-22/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );


insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1035, to_date('2019-03-22/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1036, to_date('2019-03-22/07:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1037, to_date('2019-03-22/08:31','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1038, to_date('2019-03-22/08:29','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1039, to_date('2019-03-22/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1040, to_date('2019-03-22/08:10','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1041, to_date('2019-03-22/08:49','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1042, to_date('2019-03-22/08:55','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1043, to_date('2019-03-22/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-03-22/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 ); 

----------------------------------------------------------------------------------------------------------------------------------- 
--25일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1044, to_date('2019-03-25/08:00','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1045, to_date('2019-03-25/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1046, to_date('2019-03-25/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1047, to_date('2019-03-25/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1048, to_date('2019-03-25/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1049, to_date('2019-03-25/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1050, to_date('2019-03-25/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1051, to_date('2019-03-25/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1052, to_date('2019-03-25/08:53','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1053, to_date('2019-03-25/08:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1054, to_date('2019-03-25/07:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1055, to_date('2019-03-25/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1056, to_date('2019-03-25/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1057, to_date('2019-03-25/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1058, to_date('2019-03-25/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1059, to_date('2019-03-25/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1060, to_date('2019-03-25/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1061, to_date('2019-03-25/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1062, to_date('2019-03-25/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1063, to_date('2019-03-25/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1064, to_date('2019-03-25/07:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1065, to_date('2019-03-25/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1066, to_date('2019-03-25/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1067, to_date('2019-03-25/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1068, to_date('2019-03-25/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1069, to_date('2019-03-25/08:46','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1070, to_date('2019-03-25/08:49','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1071, to_date('2019-03-25/08:11','yyyy-mm-dd/hh24:mi'), to_date('2019-03-25/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );

----------------------------------------------------------------------------------------------------------------------------------- 
--26일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1072, to_date('2019-03-26/07:59','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1073, to_date('2019-03-26/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1074, to_date('2019-03-26/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1075, to_date('2019-03-26/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1076, to_date('2019-03-26/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1077, to_date('2019-03-26/08:08','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1078, to_date('2019-03-26/08:07','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1079, to_date('2019-03-26/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1080, to_date('2019-03-26/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1081, to_date('2019-03-26/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1082, to_date('2019-03-26/07:29','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1083, to_date('2019-03-26/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1084, to_date('2019-03-26/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1085, to_date('2019-03-26/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1086, to_date('2019-03-26/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1087, to_date('2019-03-26/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1088, to_date('2019-03-26/08:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1089, to_date('2019-03-26/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1090, to_date('2019-03-26/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1091, to_date('2019-03-26/08:49','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1092, to_date('2019-03-26/07:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1093, to_date('2019-03-26/08:23','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1094, to_date('2019-03-26/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1095, to_date('2019-03-26/08:44','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1096, to_date('2019-03-26/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1097, to_date('2019-03-26/08:09','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1098, to_date('2019-03-26/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1099, to_date('2019-03-26/08:01','yyyy-mm-dd/hh24:mi'), to_date('2019-03-26/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );

----------------------------------------------------------------------------------------------------------------------------------- 
--27일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1100, to_date('2019-03-27/08:02','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1101, to_date('2019-03-27/08:10','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1102, to_date('2019-03-27/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1103, to_date('2019-03-27/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1104, to_date('2019-03-27/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1105, to_date('2019-03-27/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1106, to_date('2019-03-27/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1107, to_date('2019-03-27/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1108, to_date('2019-03-27/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1109, to_date('2019-03-27/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1110, to_date('2019-03-27/07:32','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1111, to_date('2019-03-27/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1112, to_date('2019-03-27/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1113, to_date('2019-03-27/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1114, to_date('2019-03-27/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1115, to_date('2019-03-27/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1116, to_date('2019-03-27/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1117, to_date('2019-03-27/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1118, to_date('2019-03-27/08:41','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1119, to_date('2019-03-27/08:50','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1120, to_date('2019-03-27/07:42','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1121, to_date('2019-03-27/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1122, to_date('2019-03-27/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1123, to_date('2019-03-27/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1124, to_date('2019-03-27/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1125, to_date('2019-03-27/08:06','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1126, to_date('2019-03-27/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1127, to_date('2019-03-27/08:10','yyyy-mm-dd/hh24:mi'), to_date('2019-03-27/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );

----------------------------------------------------------------------------------------------------------------------------------- 
--28일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1128, to_date('2019-03-28/07:52','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1129, to_date('2019-03-28/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1130, to_date('2019-03-28/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1131, to_date('2019-03-28/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1132, to_date('2019-03-28/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1133, to_date('2019-03-28/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1134, to_date('2019-03-28/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1135, to_date('2019-03-28/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1136, to_date('2019-03-28/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1137, to_date('2019-03-28/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1138, to_date('2019-03-28/07:23','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1139, to_date('2019-03-28/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1140, to_date('2019-03-28/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1141, to_date('2019-03-28/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1142, to_date('2019-03-28/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1143, to_date('2019-03-28/08:45','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1144, to_date('2019-03-28/08:33','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1145, to_date('2019-03-28/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1146, to_date('2019-03-28/08:20','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1147, to_date('2019-03-28/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1148, to_date('2019-03-28/07:39','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1149, to_date('2019-03-28/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1150, to_date('2019-03-28/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1151, to_date('2019-03-28/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1152, to_date('2019-03-28/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1153, to_date('2019-03-28/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1154, to_date('2019-03-28/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1155, to_date('2019-03-28/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-28/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );

----------------------------------------------------------------------------------------------------------------------------------- 
--29일
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1156, to_date('2019-03-29/07:58','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1157, to_date('2019-03-29/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1158, to_date('2019-03-29/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1159, to_date('2019-03-29/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1160, to_date('2019-03-29/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );  
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1161, to_date('2019-03-29/08:17','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1162, to_date('2019-03-29/08:16','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1163, to_date('2019-03-29/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1164, to_date('2019-03-29/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1165, to_date('2019-03-29/08:29','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1166, to_date('2019-03-29/07:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 ); 

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1167, to_date('2019-03-29/08:21','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1168, to_date('2019-03-29/08:25','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1169, to_date('2019-03-29/08:29','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1170, to_date('2019-03-29/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1171, to_date('2019-03-29/08:35','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1172, to_date('2019-03-29/08:34','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1173, to_date('2019-03-29/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1174, to_date('2019-03-29/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );

insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1175, to_date('2019-03-29/08:30','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1176, to_date('2019-03-29/07:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1177, to_date('2019-03-29/08:18','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1178, to_date('2019-03-29/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1179, to_date('2019-03-29/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1180, to_date('2019-03-29/08:14','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1181, to_date('2019-03-29/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1182, to_date('2019-03-29/08:38','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 ); 
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1183, to_date('2019-03-29/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-03-29/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );

----------------------------------------------------------------------------------------------------------------------------------- 
--1일    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1184, to_date('2019-04-01/08:06','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 1 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1185, to_date('2019-04-01/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 2 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1186, to_date('2019-04-01/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 3 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1187, to_date('2019-04-01/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 4 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1188, to_date('2019-04-01/08:15','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 5 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1189, to_date('2019-04-01/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 6 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1190, to_date('2019-04-01/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 7 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1191, to_date('2019-04-01/08:26','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 8 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1192, to_date('2019-04-01/08:43','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 9 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1193, to_date('2019-04-01/08:48','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 10 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1194, to_date('2019-04-01/08:58','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 11 );    

    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1195, to_date('2019-04-01/08:42','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 13 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1196, to_date('2019-04-01/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 14 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1197, to_date('2019-04-01/08:12','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 15 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1198, to_date('2019-04-01/08:08','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 16 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1199, to_date('2019-04-01/08:06','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 17 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1200, to_date('2019-04-01/08:27','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 18 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1201, to_date('2019-04-01/08:36','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 19 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1202, to_date('2019-04-01/08:10','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 20 );    

    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1203, to_date('2019-04-01/08:40','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 22 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1204, to_date('2019-04-01/08:22','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 23 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1205, to_date('2019-04-01/08:19','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 24 );
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1206, to_date('2019-04-01/08:13','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 25 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1207, to_date('2019-04-01/08:56','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 26 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1208, to_date('2019-04-01/08:28','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 27 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1209, to_date('2019-04-01/08:47','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 28 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1210, to_date('2019-04-01/08:39','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 29 );    
insert into tblAttended(seq, intime, outtime, status, learningseq)
    values(1211, to_date('2019-04-01/08:24','yyyy-mm-dd/hh24:mi'), to_date('2019-04-01/18:00','yyyy-mm-dd/hh24:mi') , '출근', 30 );    
    
    
    
    
    
    
    
