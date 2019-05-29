--ex29_hierarchicalQuery.sql

/*

계층형 쿼리, HIERARCHICAL QUERY
- 오라클 전용
- 답변형 게시판, 카테고리 관리, BOM(자재 명세서) 등에 적용
- 부모와 자식으로 구성된 트리 구조의 데이터를 처리하는 질의


컴퓨터
    - 본체
        - 메인보드
        - 그래픽카드
        - 랜카드
        - 메모리
    - 모니터
        - 보호필름
    - 프린터
        - 잉크카트리지
        - A4용지
*/

CREATE TABLE tblComputer
(
    seq NUMBER PRIMARY KEY, --PK
    name VARCHAR2(100) NOT NULL, --요소명
    qty NUMBER NOT NULL, -- 수량
    pseq NUMBER REFERENCES tblComputer(seq) NULL -- 부모부품(FK)

);

DROP TABLE tblComputer;

INSERT INTO tblcomputer VALUES (1, '컴퓨터', 1, null); --루트 노드

INSERT INTO tblcomputer VALUES (2, '본체', 1, 1);
INSERT INTO tblcomputer VALUES (3, '모니터', 1, 1);
INSERT INTO tblcomputer VALUES (4, '프린터', 1, 1);

INSERT INTO tblcomputer VALUES (5, '메인보드', 1, 2);
INSERT INTO tblcomputer VALUES (6, '그래픽카드', 1, 2);
INSERT INTO tblcomputer VALUES (7, '랜카드', 1, 2);
INSERT INTO tblcomputer VALUES (8, '메모리', 2, 2);

INSERT INTO tblcomputer VALUES (9, '보호필름', 1, 3);
INSERT INTO tblcomputer VALUES (10, '잉크카트리지', 3, 4);
INSERT INTO tblcomputer VALUES (11, 'A4용지', 100, 4);

SELECT * FROM tblcomputer;


-- 1. 셀프 조인 > 부모 & 자식 밖에 표현을 못함
SELECT c2.name AS 부품, c1.name AS 부모부품  FROM tblcomputer c1
    RIGHT OUTER JOIN tblcomputer c2
        ON c1.seq = c2.pseq;

--2. 계층형 쿼리 > 의사 컬럼
--START WITH 절 CONNECT BY 절
SELECT * FROM tblcomputer
    START WITH seq = 1 
        CONNECT BY PRIOR seq = pseq;



SELECT seq, name, qty, pseq, level FROM tblcomputer
    START WITH seq = 1 
        CONNECT BY PRIOR seq = pseq;

SELECT lpad(' ', (level-1) * 5) || name, prior name FROM tblcomputer
    START WITH seq = 1 -- 루트 노드(출발점) 지정
        CONNECT BY PRIOR seq = pseq;


SELECT lpad(' ', (level-1) * 5) || name, prior name FROM tblcomputer
    START WITH pseq IS NULL -- 루트 노드(출발점) 지정 이것도 똑같이 루트노드부터 시작이다.
        CONNECT BY PRIOR seq = pseq;


SELECT lpad(' ', (level-1) * 5) || subject FROM tblboard
    START WITH pseq IS NULL
        CONNECT BY PRIOR seq = pseq
            ORDER SIBLINGS BY seq desc;


SELECT lpad(' ', (level-1) * 3) || name FROM tblcategory
    START WITH pseq IS NULL
        CONNECT BY PRIOR seq = pseq
            ORDER SIBLINGS BY name ASC;



SELECT
    
    lpad(' ', (level-1) * 3) || name AS "현재 카테고리",
    PRIOR name AS "부모 카테고리",
    CONNECT_BY_ROOT name AS "루트 카테고리",
    CONNECT_BY_ISLEAF AS "자식유무",
    SYS_CONNECT_BY_PATH(name, '▷') AS "단계별"
        
    FROM tblcategory 
    START WITH pseq IS NULL
        CONNECT BY PRIOR seq = pseq
            ORDER SIBLINGS BY name ASC;















































