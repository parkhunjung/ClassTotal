-- 우리 시연할 때 사용하는 데이터들의 기간은 2019-02 ~ 2019-04로 픽스.

-- 더미데이터 : 반 하나 정도의 데이터 만들기
-- 교육생: 20~30명/ 강의실 8개 / (진행 + 미래 + 마친) 과정
-- 모든 실제는 FK맞춰서 만들기!!
-- 지금은 더미만 만듭니다.
rollback;

SELECT MAX(SEQ) FROM tblStudent;
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
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(31,'김훈훈','021017-3411391', '010-8963-2251', '서울시 남구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(32,'유우하','020925-4831689', '010-5471-5235', '대전시 서대문구 중동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(33,'박우우','011201-3607822', '010-5552-7734', '부산시 동대문구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(34,'최수대','010207-3703990', '010-3657-6595', '부산시 남구 양재동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(35,'임진석','021005-4559218', '010-9853-5532', '부산시 북구 논현동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(36,'최미하','000625-3688104', '010-1225-8957', '부산시 서대문구 중동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(37,'지하재','010128-3692737', '010-7773-9293', '대전시 서대문구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(38,'이대인','020601-3592289', '010-2515-4339', '강릉시 남구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(39,'김동훈','010117-4812791', '010-9618-8473', '강릉시 중구 논현동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(40,'정영우','020313-3072694', '010-2184-5347', '서울시 동대문구 논현동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(41,'이재재','020125-3606956', '010-8563-6625', '서울시 남구 중동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(42,'한미대','011228-3738563', '010-2544-2687', '부산시 북구 양재동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(43,'임진진','021018-4878710', '010-3334-1949', '광주시 남구 양재동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(44,'이하준','020921-3362102', '010-8475-5482', '서울시 서대문구 대치동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(45,'지석미','020907-3628225', '010-1418-9355', '대전시 남구 양재동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(46,'한은석','020923-3987257', '010-4631-6129', '강릉시 서대문구 양재동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(47,'최우우','021105-3168919', '010-4672-3385', '대전시 동대문구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(48,'유훈준','011018-4389426', '010-2497-5496', '부산시 북구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(49,'김석준','000119-4866964', '010-8992-8411', '대전시 중구 대치동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(50,'박미하','020505-3778352', '010-4774-6978', '부산시 중구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(51,'최준훈','021211-3178151', '010-2978-3437', '광주시 서대문구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(52,'박대수','010524-3460121', '010-5539-9591', '광주시 서대문구 양재동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(53,'유대대','001217-3386644', '010-5794-5958', '광주시 중구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(54,'이미동','011217-3551484', '010-5965-7937', '광주시 중구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(55,'지미준','020722-3394706', '010-7989-9725', '강릉시 북구 대치동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(56,'한영진','020310-3387671', '010-9389-6498', '대전시 중구 역삼동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(57,'김동진','000110-3989904', '010-2941-8175', '대전시 남구 양재동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(58,'유미수','020805-4935910', '010-9378-1568', '부산시 중구 대치동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(59,'최훈재','021002-3350808', '010-5197-4134', '서울시 서대문구 논현동', '2019-01-07', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(60,'정수석','020619-3646348', '010-9349-1257', '강릉시 서대문구 역삼동', '2019-01-07', '회원');

insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(61,'이하훈','010824-4957985', '010-3749-2476', '대전시 동대문구 중동', '2018-12-03', '회원');    
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(62,'박준미','010218-3503312', '010-6251-2381', '광주시 중구 논현동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(63,'이진준','000815-3030426', '010-3762-8346', '부산시 북구 역삼동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(64,'임미우','001025-4139512', '010-7538-3597', '강릉시 동대문구 논현동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(65,'조우진','011025-3705197', '010-1586-5392', '서울시 북구 대치동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(66,'박영하','000405-4487596', '010-5415-1851', '서울시 남구 역삼동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(67,'정동영','010416-3958439', '010-4918-4135', '대전시 중구 양재동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(68,'유석진','011220-4070662', '010-3694-3786', '광주시 중구 양재동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(69,'지은하','020602-3798293', '010-2773-2859', '서울시 서대문구 대치동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(70,'한훈동','021220-3121537', '010-2338-4629', '서울시 남구 역삼동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(71,'이창은','010818-3654706', '010-3195-4653', '광주시 북구 대치동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(72,'박영인','020725-4595384', '010-7871-5348', '부산시 서대문구 대치동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(73,'지인재','000508-4438448', '010-6173-8842', '대전시 북구 중동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(74,'이하하','000712-3806636', '010-4778-5874', '부산시 북구 논현동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(75,'지진창','021012-3172857', '010-5342-4735', '서울시 남구 대치동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(76,'한진미','011026-3895052', '010-5293-1628', '부산시 중구 중동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(77,'유창대','010228-4069803', '010-3334-7448', '부산시 북구 논현동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(78,'조진진','020515-3192256', '010-5457-6867', '광주시 동대문구 역삼동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(79,'김수우','020615-4720905', '010-9736-3378', '대전시 동대문구 양재동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(80,'유인하','020416-4831296', '010-6827-8776', '부산시 동대문구 양재동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(81,'임준하','000416-4332613', '010-8861-7212', '서울시 동대문구 역삼동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(82,'최진하','010901-3937544', '010-5477-8489', '강릉시 남구 중동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(83,'정미미','000510-3460343', '010-3839-7151', '강릉시 서대문구 역삼동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(84,'지미창','000716-3015691', '010-6831-7466', '광주시 동대문구 양재동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
    values(85,'박대동','011026-4617335', '010-7583-9737', '강릉시 서대문구 양재동', '2018-12-03', '회원');
insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(86,'조미재','001113-3215986', '010-6247-1639', '부산시 북구 논현동', '2018-12-03', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(87,'임대준','000102-3782303', '010-2165-3727', '광주시 중구 중동', '2018-12-03', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(88,'최은인','020426-4456327', '010-1886-4589', '강릉시 서대문구 대치동', '2018-12-03', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(89,'조하석','010522-4054562', '010-7954-2376', '부산시 북구 역삼동', '2018-12-03', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(90,'최영훈','000114-3051224', '010-8319-6516', '강릉시 북구 대치동', '2018-12-03', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(91,'임동하','010628-3152298', '010-3594-6276', '대전시 동대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(92,'조영은','021215-4588120', '010-3249-7573', '부산시 동대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(93,'유준인','011101-4218170', '010-5857-3273', '부산시 북구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(94,'임하진','020312-3776080', '010-1186-6953', '대전시 남구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(95,'김영하','010905-4596939', '010-5435-6729', '광주시 북구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(96,'지은은','000106-4439840', '010-6984-2667', '강릉시 남구 역삼동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(97,'아랑궁','000828-4945394', '010-8144-2773', '서울시 중구 역삼동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(98,'유훈우','010309-3303757', '010-6335-4581', '강릉시 서대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(99,'지창영','000820-3306231', '010-4648-2753', '광주시 북구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(100,'유동하','001214-4026281', '010-7389-3145', '대전시 동대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(101,'김동수','010915-4816676', '010-1117-2813', '광주시 중구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(102,'유은재','000421-4502055', '010-4573-5247', '광주시 서대문구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(103,'박은석','000327-4067296', '010-7131-7258', '부산시 서대문구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(104,'최준수','000623-4859228', '010-5777-3239', '강릉시 중구 역삼동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(105,'정은창','010226-3146764', '010-1696-4219', '서울시 동대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(106,'최하동','000819-3124491', '010-6962-3876', '서울시 남구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(107,'임수훈','020523-4167927', '010-5482-6987', '서울시 중구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(108,'정미우','020711-3626834', '010-5338-5919', '대전시 북구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(109,'박우재','000618-4877382', '010-4499-9817', '강릉시 서대문구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(110,'한창우','010117-4485566', '010-7771-1376', '광주시 동대문구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(111,'조미대','000201-3740012', '010-7377-1555', '부산시 중구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(112,'유영창','010504-3568299', '010-7266-9534', '대전시 서대문구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(113,'유진석','010601-3652328', '010-5295-8678', '강릉시 동대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(114,'임훈석','001227-4141157', '010-5198-8673', '대전시 동대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(115,'지수진','010107-3388326', '010-5172-8149', '부산시 동대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(116,'정훈은','021105-3569185', '010-3219-8487', '강릉시 동대문구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(117,'한영재','021109-4632740', '010-8322-1566', '강릉시 북구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(118,'최영동','020504-4276452', '010-5769-8814', '강릉시 서대문구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(119,'박훈영','001017-3421077', '010-6792-8844', '부산시 북구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(120,'이대미','011014-4549852', '010-2736-9985', '광주시 남구 역삼동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(121,'임창준','001215-4789992', '010-1963-8772', '부산시 중구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(122,'한재미','000725-4644204', '010-6156-9699', '광주시 중구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(123,'정우동','010817-4044789', '010-8447-2472', '광주시 서대문구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(124,'박수동','020501-3171199', '010-6261-4754', '강릉시 북구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(125,'이동훈','000424-3532971', '010-3835-8153', '부산시 남구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(126,'김하미','010503-4550523', '010-1627-7185', '광주시 중구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(127,'한인미','000109-3624865', '010-8672-5224', '부산시 서대문구 역삼동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(128,'조하미','001011-4380667', '010-4596-5347', '서울시 서대문구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(129,'김동우','020917-3408183', '010-3246-2598', '강릉시 북구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(130,'김우미','021125-4434901', '010-2346-7493', '광주시 남구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(131,'박미동','010203-4083470', '010-1553-1835', '부산시 중구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(132,'유석하','011123-3578013', '010-8234-1253', '광주시 중구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(133,'한수훈','020323-3647901', '010-6824-7457', '강릉시 중구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(134,'조훈미','011003-3267811', '010-3982-7723', '서울시 남구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(135,'조미은','010624-4655874', '010-6699-9855', '서울시 중구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(136,'조훈은','000522-3125249', '010-8241-5988', '대전시 북구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(137,'마이쿨','011203-4010613', '010-9939-4139', '광주시 동대문구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(138,'임진대','020311-4465167', '010-1951-7814', '강릉시 동대문구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(139,'다랑코','011119-3233417', '010-4646-3865', '대전시 북구 역삼동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(140,'정창영','010324-3436664', '010-1665-7741', '광주시 동대문구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(141,'이영동','010904-4790677', '010-9748-9286', '강릉시 서대문구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(142,'박동인','000322-3356445', '010-9696-6599', '부산시 북구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(143,'유미미','021221-3962231', '010-6426-5665', '부산시 남구 역삼동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(144,'지우준','000427-4820706', '010-1553-8747', '광주시 남구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(145,'조수석','000403-3242126', '010-3689-3543', '대전시 북구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(146,'김진동','010310-3178669', '010-7362-3914', '부산시 남구 대치동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(147,'김수대','000601-3062706', '010-7869-7666', '부산시 남구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(148,'한미미','020319-4981153', '010-3793-1661', '강릉시 남구 논현동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(149,'조준하','010912-3244223', '010-9358-1241', '광주시 중구 중동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(150,'박미재','001222-4766795', '010-8548-6625', '부산시 북구 양재동', '2018-12-31', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(151,'임재창','010526-4075933', '010-6262-1253', '대전시 중구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(152,'임영대','021002-3474132', '010-9515-5527', '서울시 북구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(153,'한수진','010514-3523812', '010-6739-1135', '서울시 서대문구 역삼동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(154,'김준석','000510-3555562', '010-2718-4118', '부산시 서대문구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(155,'한수재','020713-3074906', '010-7497-8284', '강릉시 동대문구 대치동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(156,'박재우','010218-3004295', '010-7883-4465', '대전시 서대문구 역삼동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(157,'최창재','000209-4546308', '010-4448-3141', '서울시 서대문구 대치동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(158,'김석창','020511-4475987', '010-3674-9733', '강릉시 서대문구 역삼동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(159,'최물죠','000526-4306535', '010-2461-4145', '대전시 북구 대치동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(160,'유수창','010605-3460744', '010-3867-9449', '서울시 남구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(161,'조재석','010609-4015557', '010-1574-2726', '서울시 남구 역삼동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(162,'지석준','020927-3599193', '010-4325-7594', '부산시 서대문구 논현동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(163,'김훈하','010226-3448274', '010-4892-5658', '광주시 동대문구 대치동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(164,'최대미','000128-3483455', '010-4135-7425', '광주시 중구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(165,'박훈미','011023-4497721', '010-2889-7785', '서울시 동대문구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(166,'박우석','020215-3950631', '010-3571-5937', '부산시 중구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(167,'유인석','001010-3180483', '010-6799-7256', '부산시 서대문구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(168,'김수하','010324-4921662', '010-4584-7887', '대전시 서대문구 대치동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(169,'최은우','000604-4617274', '010-7537-1689', '대전시 동대문구 역삼동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(170,'한동우','000902-4144991', '010-3498-3894', '서울시 동대문구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(171,'정영동','000716-3771470', '010-7456-6919', '대전시 중구 논현동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(172,'김수수','001126-4995134', '010-2953-9261', '서울시 서대문구 양재동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(173,'조재동','010309-3531295', '010-4897-8382', '광주시 남구 대치동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(174,'임하훈','010425-4114822', '010-4582-4282', '대전시 서대문구 중동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(175,'박영석','001123-3123315', '010-9297-6832', '강릉시 남구 역삼동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(176,'정대미','000217-4331538', '010-1861-4129', '부산시 서대문구 중동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(177,'지영준','000126-4357589', '010-6565-2645', '서울시 남구 중동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(178,'박은진','000613-3159287', '010-4637-6948', '부산시 서대문구 중동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(179,'박하훈','001026-3095710', '010-9385-3586', '서울시 중구 논현동', '2019-01-28', '회원');
    insert into tblStudent(seq ,name, ssn, tel, address, regdate, delete_status) 
values(180,'지창석','001215-3905194', '010-5157-1584', '서울시 중구 중동', '2019-01-28', '회원');
-- sequence : student_seq

--날짜 범위: 2015-01-01 ~ 2019-04-02



--2. 강사 (더미 : 9명, 실제 : 1명)
insert into tblTeacher (seq, name, ssn, tel, address, regdate, delete_status)
    values (1, '유병현', '910121-1000000','010-1111-1111', '서울시 송파구 성내천로 37길 37', '2019-01-20', '회원');
                        ----------------더미↓----------------

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
insert into tblSubject(seq, subject_name, delete_status)
    values(6, 'Spring','가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(7, 'Python','가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(8, 'C#','가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(9, 'PHP','가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(10, 'HTML5','가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(11, 'R','가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(12, 'MySQL','가능');
insert into tblSubject(seq, subject_name, delete_status)
    values(13, 'BigData','가능');
    
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
--0418
insert into tblBook(seq, title, subjectseq, publisher)
    values(14, '나는야 Java 마스터', 1, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(15, 'Java가 미래다', 1, '쌍용교육센터');
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(16, '나는야 Oracle 마스터', 2, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(17, 'Oracle이 미래다', 2, '쌍용교육센터');
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(18, '나는야 JavaScript 마스터', 3, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(19, 'JavaScript가 미래다', 3, '쌍용교육센터'); 

insert into tblBook(seq, title, subjectseq, publisher)
    values(18, '나는야 JSP 마스터', 4, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(19, 'JSP가 미래다', 4, '쌍용교육센터'); 
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(20, '나는야 Project 마스터', 5, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(21, 'Project가 미래다', 5, '쌍용교육센터'); 
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(22, '나는야 Spring 마스터', 6, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(23, 'Spring이 미래다', 6, '쌍용교육센터'); 
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(24, '나는야 Python 마스터', 7, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(25, 'Python이 미래다', 7, '쌍용교육센터');     
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(26, '나는야 C# 마스터', 8, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(27, 'C#이 미래다', 8, '쌍용교육센터');         
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(28, '나는야 PHP 마스터', 9, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(29, 'PHP가 미래다', 9, '쌍용교육센터');     
        
insert into tblBook(seq, title, subjectseq, publisher)
    values(30, '나는야 HTML5 마스터', 10, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(31, 'HTML5가 미래다', 10, '쌍용교육센터');     
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(32, '나는야 R 마스터', 11, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(33, 'R이 미래다', 11, '쌍용교육센터');     
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(34, '나는야 MySQL 마스터', 12, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(35, 'MySQL이 미래다', 12, '쌍용교육센터');      
    
insert into tblBook(seq, title, subjectseq, publisher)
    values(36, '나는야 BigData 마스터', 13, '쌍용교육센터');
insert into tblBook(seq, title, subjectseq, publisher)
    values(37, 'BigData다 미래다', 13, '쌍용교육센터');
-- sequence : book_seq

--교재 : 한 과목당 3개 



--6. 과정명
insert into tblCourseTitle(seq,title)
    values(1, 'Java 기반 응용SW 개발자 양성과정');
                        ----------------더미↓----------------

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
    values(1, 1,1, '진행중', '2019-01-28', '2019-08-21', '정보처리기사, 정보처리산업기사 등의 관련 자격증을 취득 및 소프트웨어 개발업체, IT컨설팅 회사, 시스템 통합 및 구축 업체 등에 취업을 할 수 있는 응용SW실무개발자로 양성하는 것을 최종 목표로 한다.');
                        ----------------더미↓----------------
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(2,	2,	2,	'진행중',	'19/01/07	','19/06/17', '빅데이터를 수집, 저장 및 처리하고, 플랫폼을 개발, 분석하여 의미있는 결과를 제공하는 능력을 함양하고 데이터 집합으로부터 일정한 법칙을 추론하여 결과 및 행동을 예측하기 위하여 조직 내, 외부의 정형 및 비정형 대용량 데이터를 분석 기획하고 수집, 저장, 처리하여 목적에 따라 분석, 시각화를 수행하는 업무능력을 함양할 수 있도록 최종목표로 한다.');   
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(3,	3,	3,	'폐강','18/12/03'	,'19/05/28', '기업의 최근 요구사항을 반영, 전자정부 프레임워크와 Spring 프레임워크를 실무형프로젝트를 중심으로 학습하고 또한 SM업체로의 취업을 대비, 기존에 구축된 웹 어플리케이션의 유지 보수를위한 Struts 프레임워크를 학습하여 현업에 바로 적응이 가능한 실무형 개발자 양성을 목표로 한다. 훈련과정 수료 후 본 과정에서 습득한 자바 프로그램 개발 능력을 활용하여 SI, ERP 및 CRM프로그래밍개발자나 웹 프로그래밍 개발자 및 웹 컴포넌트 개발자로 취업할 수 있도록 최종목표로 한다.');   
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(4,	4,	4,	'진행중',	'18/12/31','	19/06/25', '2016년 프로그래밍 언어 인기 순위에서 java, c++, c# 등을 제치고 1위를 한 언어로 문법이 간결하고 표현 구조가 인간의 사고 체계와 닮아 있어 프로그래밍에 입문하는 초보자들에게 가장 추천되는 언어이다. 당연히 오픈소스로 사용료에 대한 걱정이 없다. 파이썬은 유지 보수와관리도 쉽고, 다양한 라이브러리가 있어 용도 확장도 쉽고 생산성도 높아, 구글의 사내 프로젝트에서도가장 인기있는 언어이다. 웹개발, 데이터 분석, 머신러닝, 그래픽 등 다양한 분야에 응용, 활용할 수 있도록 최종목표로 한다.');   
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(5,	5,	5,	'진행중',	'18/12/31','	19/06/25', 'C언어 프로그래머로 취업하기 위하여, 프로그래밍 관련 알고리즘과 문법을 이해하고 실무 지향적인 예제를 바탕으로 전문 프로그래밍 기술을 습득합니다. C언어 전문 과정은 기본 문법, 알고리즘 이해, 자료 구조 등의 교육을 통해 현업에서 필요로 하는 전문 프로그래머 양성을 목표로 합니다. 본 교육 과정 이수 후에 C언어/C++ 관련 분야에 취업이 가능하며, 상위 프로그램 과정을 이수 하면 전문 프로그래머로 취업을 최종목표로 한다.  ');   
insert into tblCourse(seq, coursetitleseq, roomseq, status, begindate, enddate, etc)
    values(6,	6,	6,	'진행중',	'19/01/28	','19/08/21', '자바스크립트는 HTML, CSS 와 전혀 다른 언어이기에프로그래밍 기초 개념부터 짚어가며 배워야합니다.무작정 ‘jQuery를 활용하면 되겠지’, ‘다른 사람 코드를 적당히 바꿔 쓰면 되겠지’ 라고 생각하면 안됩니다. 8주 캠프에서 탄탄한 자바스크립트 기초을 키울수 있도록 최종목표로 한다.');   
-- sequence : course_seq

SELECT * FROM tblTeacher;

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

insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(31, 2, 31, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(32, 2, 32, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(33, 2, 33, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(34, 2, 34, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(35, 2, 35, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(36, 2, 36, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(37, 2, 37, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(38, 2, 38, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(39, 2, 39, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(40, 2, 40, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(41, 2, 41, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(42, 2, 42, '중도탈락', '2019-01-11');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(43, 2, 43, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(44, 2, 44, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(45, 2, 45, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(46, 2, 46, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(47, 2, 47, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(48, 2, 48, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(49, 2, 49, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(50, 2, 50, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(51, 2, 51, '중도탈락', '2019-03-15');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(52, 2, 52, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(53, 2, 53, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(54, 2, 54, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(55, 2, 55, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(56, 2, 56, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(57, 2, 57, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(58, 2, 58, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(59, 2, 59, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(60, 2, 60, '진행중', default);
----------------------------------------------------------------------------------
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(61, 3, 61, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(62, 3, 62, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(63, 3, 63, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(64, 3, 64, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(65, 3, 65, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(66, 3, 66, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(67, 3, 67, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(68, 3, 68, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(69, 3, 69, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(70, 3, 70, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(71, 3, 71, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(72, 3, 72, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(73, 3, 73, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(74, 3, 74, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(75, 3, 75, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(76, 3, 76, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(77, 3, 77, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(78, 3, 78, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(79, 3, 79, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(80, 3, 80, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(81, 3, 81, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(82, 3, 82, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(83, 3, 83, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(84, 3, 84, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(85, 3, 85, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(86, 3, 86, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(87, 3, 87, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(88, 3, 88, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(89, 3, 89, '중도탈락', '2018-12-03');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(90, 3, 90, '중도탈락', '2018-12-03');
----------------------------------------------------------------------------------
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(91, 4, 91, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(92, 4, 92, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(93, 4, 93, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(94, 4, 94, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(95, 4, 95, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(96, 4, 96, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(97, 4, 97, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(98, 4, 98, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(99, 4, 99, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(100, 4, 100, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(101, 4, 101, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(102, 4, 102, '중도탈락', '2019-01-07');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(103, 4, 103, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(104, 4, 104, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(105, 4, 105, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(106, 4, 106, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(107, 4, 107, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(108, 4, 108, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(109, 4, 109, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(110, 4, 110, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(111, 4, 111, '중도탈락', '2019-03-08');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(112, 4, 112, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(113, 4, 113, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(114, 4, 114, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(115, 4, 115, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(116, 4, 116, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(117, 4, 117, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(118, 4, 118, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(119, 4, 119, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(120, 4, 120, '진행중', default);
----------------------------------------------------------------------------------
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(121, 5, 121, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(122, 5, 122, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(123, 5, 123, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(124, 5, 124, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(125, 5, 125, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(126, 5, 126, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(127, 5, 127, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(128, 5, 128, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(129, 5, 129, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(130, 5, 130, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(131, 5, 131, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(132, 5, 132, '중도탈락', '2019-01-16');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(133, 5, 133, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(134, 5, 134, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(135, 5, 135, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(136, 5, 136, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(137, 5, 137, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(138, 5, 138, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(139, 5, 139, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(140, 5, 140, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(141, 5, 141, '중도탈락', '2019-03-07');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(142, 5, 142, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(143, 5, 143, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(144, 5, 144, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(145, 5, 145, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(146, 5, 146, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(147, 5, 147, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(148, 5, 148, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(149, 5, 149, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(150, 5, 150, '진행중', default);
----------------------------------------------------------------------------------
 insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(151, 6, 151, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(152, 6, 152, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(153, 6, 153, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(154, 6, 154, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(155, 6, 155, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(156, 6, 156, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(157, 6,157, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(158, 6, 158, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(159, 6,159, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(160, 6, 160, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(161, 6, 161, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(162, 6, 162, '중도탈락', '2019-04-05');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(163, 6, 163, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(164, 6, 164, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(165, 6, 165, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(166, 6, 166, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(167, 6, 167, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(168, 6, 168, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(169, 6, 169, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(170, 6, 170, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(171, 6, 171, '중도탈락', '2019-03-20');
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(172, 6, 172, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(173, 6, 173, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(174, 6, 174, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(175, 6, 175, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(176, 6, 176, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(177, 6, 177, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(178, 6, 178, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(179, 6, 179, '진행중', default);
insert into tblLearning(seq, courseseq, studentseq, ing, ingdate)
    values(180, 6, 180, '진행중', default);
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
-- 1월
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',1);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,2);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,3);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,4);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,5);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,6);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,7);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,8);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,9);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,10);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,11);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,12);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,13);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,14);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,15);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,16);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,17);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,18);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,19);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,20);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,21);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,22);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,23);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,24);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,25);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,26);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,27);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,28);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,29);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,4000,30);
--    
--    
----2월
--
--
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',1);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,2);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,3);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,4);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,5);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,6);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,16000,7);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,8);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,9);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,10);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,11);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',12);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,16000,13);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,14);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,15);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,16);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,17);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,16000,18);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,16000,19);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,20);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,21);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,22);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,23);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,24);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,25);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,26);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,27);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,28);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,29);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',30);
--    
--
--    
----3월
--
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,17000,1);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,2);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,3);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,4);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,5);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,6);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,7);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,8);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,9);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,18000,10);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,11);
----INSERT INTO tblattendedsudang(seq, sudang, learningseq)
----    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,12);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,13);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,14);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,15);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,16);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,17);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,18);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,19);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,20);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,'미지급',21);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,22);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,23);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,24);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,25);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,26);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,20000,27);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,28);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,29);
--INSERT INTO tblattendedsudang(seq, sudang, learningseq)
--    VALUES(ATTENDEDSUDNAG_SEQ.nextval,19000,30);
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
--insert into tblRoomStatus (seq, reservedate, roomseq, studyseq)
--    values (1, '시연하면 날짜 입력하기', 1, 1);
insert into tblRoomStatus (seq, reservedate, roomseq, studyseq)
    values (1, '2019-04-17', 1, 1);
INSERT INTO tblroomstatus(seq, reservedate, roomseq, studyseq)
    VALUES(2,'2019-04-19',5,2);
                        ----------------더미↓----------------
-- sequence : roomstatus_seq    

COMMIT;

select * from tblstudent;
select student_seq.currVal from dual;