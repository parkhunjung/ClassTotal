--ex19_delete.sql

/*

DELETE 문
-DML
- (행) 데이터를 삭제하는 명령어
- 특정 셀안의 값을 삭제하고 싶다 ? UPDATE 컬럼 = NULL
- DELETE [FROM] 테이블명 [WHERE 절]

*/

COMMIT;
ROLLBACK;

SELECT * FROM tblinsa;

DELETE FROM tblinsa WHERE jikwi = '부장';
DELETE FROM tblinsa;






















































