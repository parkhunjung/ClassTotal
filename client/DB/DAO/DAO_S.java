package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Scanner;

import DTO.DTO_Example;
import DTO.DTO_TeacherEval_A;
import DTO.DTO_TeacherEval_Q;
import DTO_Student.DTO_AttendanceTotal_S;
import DTO_Student.DTO_ConsultRecode_S;
import DTO_Student.DTO_EvalNoStudent_S;
import DTO_Student.DTO_EvalOk_Consult_S;
import DTO_Student.DTO_GradeSearch_S;
import DTO_Student.DTO_RegiCourseInfo_S;
import DTO_Student.DTO_RegiSubjInfo_S;
import DTO_Student.DTO_StudentInfo_S;
import DTO_Student.DTO_StudentLogin_S;
import Student.DBUtil;






//데이터 처리 담당 객체 [데이터 담당자]
	public class DAO_S {
	
		private Connection conn;
		private Statement stat;
		private PreparedStatement pstat;
	
		
		
		//초기화(선행 작업)
		// - DB 접속
		public DAO_S() {
	
			try {
			
				DBUtil util = new DBUtil();
				conn = util.connect();
				stat = conn.createStatement();
			
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("DAO.Constructor");
			}
	
		}
	
	
	
	//학생 로그인에 사용되는 DAO
	
	public DTO_StudentLogin_S studentLogin(String name, String pw) {
		
		try {			
			String sql ="select * from tblstudent where name=? and pw=?";
			
			pstat = conn.prepareStatement(sql);	
			
			pstat.setString(1, name);
			pstat.setString(2, pw);
			
			ResultSet rs = pstat.executeQuery();		
			
			if (rs.next()) {
			
				DTO_StudentLogin_S dto = new DTO_StudentLogin_S(); //복사용
				
				dto.setName(rs.getString("name"));
				dto.setPw(rs.getString("pw"));
				dto.setStudent_seq(rs.getString("student_seq"));

				return dto;
			}					
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}



	public DTO_StudentInfo_S studentInfo(String student_seq) {

		try {
			String sql ="select  s.student_seq as student_seq, s.name as sname,  c.name as courseName, "
					+ "to_char(o.startdate,'yyyy-mm-dd') as startDate, to_char(o.enddate,'yyyy-mm-dd' ) as endDate, "
					+ "r.roomname as roomName, t.name as tname  from tblstudent s" + 
					"    inner join tblRegiCourse regi " + 
					"        on s.student_seq = regi.student_seq" + 
					"            inner join tblOpenCourse o" + 
					"                on regi.opencourse_seq = o.opencourse_seq" + 
					"                    inner join tblroom r" + 
					"                        on r.room_seq = o.room_seq" + 
					"                            inner join tblCourse c" + 
					"                                on c.course_seq = o.course_seq" + 
					"                                    inner join tblTeacherCourse tc" + 
					"                                        on o.opencourse_seq=tc.opencourse_seq" + 
					"                                            inner join tblTeacher t" + 
					"                                                on t.teacher_seq = tc.teacher_seq"
					+ "													where s.student_seq=?" ;
			pstat = conn.prepareStatement(sql);	
			
			pstat.setString(1,student_seq);
			
			ResultSet rs = pstat.executeQuery();		
			
			if (rs.next()) {
			
				DTO_StudentInfo_S dto = new DTO_StudentInfo_S(); //복사
				
				dto.setStudent_seq(rs.getString("student_seq"));
				dto.setSname(rs.getString("sname"));
				dto.setCourseName(rs.getString("courseName"));
				dto.setStartDate(rs.getString("startDate"));
				dto.setEndDate(rs.getString("endDate"));
				dto.setRoomName(rs.getString("roomname"));
				dto.setTname(rs.getString("tname"));
			
				
				return dto;
				
			}					
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}



	
	
	public ArrayList<DTO_GradeSearch_S> gradeSearch(String student_seq) {

		try {
			
			String sql = "select sub.subject_seq, sub.name as subjName, to_char(os.startDate,'yyyy-mm-dd')as startDate, "
					+ "to_char(os.endDate,'yyyy-mm-dd') as endDate , t.name as tname,  g.score" + 
					" from tblstudent s" + 
					"    inner join tblRegiCourse regi" + 
					"        on s.student_seq = regi.student_seq" + 
					"            inner join tblOpenCourse o " + 
					"                on regi.opencourse_seq = o.opencourse_seq" + 
					"                    inner join tblCourse c " + 
					"                        on c.course_seq = o.course_seq" + 
					"                              inner join tblTeacherCourse tc " + 
					"                                  on o.opencourse_seq=tc.opencourse_seq" + 
					"                                       inner join tblTeacher t " + 
					"                                           on t.teacher_seq = tc.teacher_seq" + 
					"                                                inner join tblOpenSubjectMgmt os" + 
					"                                                    on o.opencourse_seq = os.opencourse_seq " + 
					"                                                        inner join tblsubject sub" + 
					"                                                            on sub.subject_seq = os.subject_seq" + 
					"                                                                  inner join tblgrade g " + 
					"                                                                       on g.opensubjectmgmt_seq = os.opensubjectmgmt_seq" + 
					"                                                                            where s.student_seq = ? and g.regiCourse_seq = ?" ;
			
			pstat = conn.prepareStatement(sql);			
			pstat.setString(1,student_seq);
			pstat.setString(2,student_seq);
			
			ResultSet rs = pstat.executeQuery();		
			
			ArrayList<DTO_GradeSearch_S> list = new ArrayList<DTO_GradeSearch_S>();
			
			while (rs.next()) {
				
				DTO_GradeSearch_S dto = new DTO_GradeSearch_S();
				
				dto.setSubject_seq(rs.getString("subject_seq"));
				dto.setSubjName(rs.getString("subjName"));
				dto.setStartDate(rs.getString("startdate"));
				dto.setEndDate(rs.getString("enddate"));
				dto.setTname(rs.getString("tname"));
				dto.setScore(rs.getString("score"));			
				
				//카피본 다 집어넣음
				list.add(dto);
				
			}	
			//성공 시, 반환값
			return list;
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}



	public ArrayList<DTO_AttendanceTotal_S> attendTotal(String student_seq) {
		
		try {
			
			String sql="select to_char(att.attenddate,'yyyy-mm-dd') as attenddate, to_char(att.workon,'hh24:mm') as workon, " + 
					"       to_char( att.workoff,'hh24:mm') as workoff, att.state " + 
					" from  tblstudent s" + 
					"    inner join tblregicourse regi " + 
					"        on s.student_seq = regi.student_seq" + 
					"            inner join tblopencourse o" + 
					"                on o.opencourse_seq = regi.opencourse_seq" + 
					"                    inner join tblattendancemgmt att" + 
					"                        on att.regicourse_seq = regi.regicourse_seq" + 
					"                            where s.student_seq = ? ";
			
			pstat = conn.prepareStatement(sql);			
			pstat.setString(1,student_seq);
			
			ResultSet rs = pstat.executeQuery();
			
			ArrayList<DTO_AttendanceTotal_S> list = new ArrayList<DTO_AttendanceTotal_S>();
			
			while (rs.next()) {
				DTO_AttendanceTotal_S dto = new DTO_AttendanceTotal_S();
				
				//딥 카피
				dto.setAttendDate(rs.getString("attendDate")); 
				dto.setWorkOn(rs.getString("workOn"));
				dto.setWorkOff(rs.getString("workOff"));
				dto.setState(rs.getString("state"));
			
				
				//카피본 다 집어넣음
				list.add(dto);
			}
					
			//성공 시, 반환값
			return list;
			
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	
		return null;
	}


	
	
	public ArrayList<DTO_AttendanceTotal_S> attendMonth(String student_seq, String monthNum) {
		
		try {
			
			String sql="select to_char(att.attenddate,'yyyy-mm-dd') as attenddate, to_char(att.workon,'hh24:mm') as workon, " + 
					"       to_char( att.workoff,'hh24:mm') as workoff, att.state " + 
					" from  tblstudent s" + 
					"    inner join tblregicourse regi " + 
					"        on s.student_seq = regi.student_seq" + 
					"            inner join tblopencourse o" + 
					"                on o.opencourse_seq = regi.opencourse_seq" + 
					"                    inner join tblattendancemgmt att" + 
					"                        on att.regicourse_seq = regi.regicourse_seq" + 
					"                            where s.student_seq = ?  and substr(att.attenddate,4,2)= ? ";
			
			pstat = conn.prepareStatement(sql);			
			pstat.setString(1,student_seq);
			pstat.setString(2,monthNum);
			
			ResultSet rs = pstat.executeQuery();
			
			ArrayList<DTO_AttendanceTotal_S> list = new ArrayList<DTO_AttendanceTotal_S>();
			
			while (rs.next()) {
				DTO_AttendanceTotal_S dto = new DTO_AttendanceTotal_S();
				
				//딥 카피
				dto.setAttendDate(rs.getString("attendDate")); 
				dto.setWorkOn(rs.getString("workOn"));
				dto.setWorkOff(rs.getString("workOff"));
				dto.setState(rs.getString("state"));
			
				
				//카피본 다 집어넣음
				list.add(dto);
			}
					
			//성공 시, 반환값
			return list;
			
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	
		return null;
	}

	
	
	
	
	public DTO_AttendanceTotal_S attendDaily(String student_seq, String monthNum, String dailyNum) {
	
		try {
		
			String sql="select to_char(att.attenddate,'yyyy-mm-dd') as attenddate, to_char(att.workon,'hh24:mm:ss') as workon, " + 
				"       to_char( att.workoff,'hh24:mm:ss') as workoff, att.state " + 
				" from  tblstudent s" + 
				"    inner join tblregicourse regi " + 
				"        on s.student_seq = regi.student_seq" + 
				"            inner join tblopencourse o" + 
				"                on o.opencourse_seq = regi.opencourse_seq" + 
				"                    inner join tblattendancemgmt att" + 
				"                        on att.regicourse_seq = regi.regicourse_seq" + 
				"                            where s.student_seq = ?  and substr(att.attenddate,4,2)= ?"
				+ "									and substr(att.attenddate,7,2)= ? ";
		

			pstat = conn.prepareStatement(sql);			
			pstat.setString(1,student_seq);
			pstat.setString(2,monthNum);
			pstat.setString(3,dailyNum);
		
			ResultSet rs = pstat.executeQuery();
			
			if (rs.next()) {
				DTO_AttendanceTotal_S dto = new DTO_AttendanceTotal_S(); //복사용
				
				dto.setAttendDate(rs.getString("attendDate")); 
				dto.setWorkOn(rs.getString("workOn"));
				dto.setWorkOff(rs.getString("workOff"));
				dto.setState(rs.getString("state"));
	
				return dto;
			}
			
			} catch (Exception e) {
				System.out.println("a : " + e.toString());
			}
			return null;
		}

	
	
	
	public DTO_EvalNoStudent_S teacherEvalNo(String student_seq) {
		
		try {
			
			String sql = "select s.name as sName, c.name as courseName, o.enddate " + 
					"    from tblstudent s" + 
					"        inner join tblregicourse regi" + 
					"            on s.student_seq = regi.student_seq" + 
					"                inner join tblresult r" + 
					"                    on regi.regicourse_seq = r.regicourse_seq" + 
					"                        inner join tblopencourse o" + 
					"                            on o.opencourse_seq = regi.opencourse_seq" + 
					"                                inner join tblcourse c" + 
					"                                    on c.course_seq = o.course_seq" + 
					"                                        where s.student_seq = ?" + 
					"                                            and sysdate < o.enddate ";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,student_seq);
			
			ResultSet rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				DTO_EvalNoStudent_S dto = new DTO_EvalNoStudent_S();
				
				dto.setSname(rs.getString("sname"));
				dto.setCourseName(rs.getString("courseName"));
				dto.setEndDate(rs.getString("endDate"));
				
				
				return dto;
			}
			
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;

	}


	//작동시키려면 컴퓨터 시간을 변경해야함.
	public DTO_EvalOk_Consult_S teacherEvalOk(String student_seq) {
		
		try {
		
			String sql = "select s.name as sName , c.name as courseName, t.name as tName" + 
					"    from tblstudent s " + 
					"        inner join tblregicourse regi " + 
					"            on s.student_seq = regi.student_seq" + 
					"                inner join tblresult r  "+ 
					"                    on regi.regicourse_seq = r.regicourse_seq" + 
					"                        inner join tblopencourse o " + 
					"                            on o.opencourse_seq = regi.opencourse_seq" + 
					"                                inner join tblcourse c " + 
					"                                    on c.course_seq = o.course_seq " + 
					"                                        inner join tblteacherCourse tc" + 
					"                                            on tc.opencourse_seq = o.opencourse_seq" + 
					"                                                inner join tblTeacher t" + 
					"                                                    on t.teacher_seq=tc.teacher_seq  " + 
					"                                                        where s.student_seq = ? " + 
					"                                                           and sysdate > o.enddate ";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, student_seq);
			
			ResultSet rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				DTO_EvalOk_Consult_S dto = new DTO_EvalOk_Consult_S();
				
				dto.setSname(rs.getString("sname"));
				dto.setCourseName(rs.getString("courseName"));
				dto.setTname(rs.getString("tname"));
				
				
				return dto;
			}
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return null;
	}

	

	public String result(String student_seq) {
	
		try {

			//미수료학생=1   수료학생=0
			String sql = "select   "+ 
					"	CASE" + 
					"        WHEN SYSDATE < o.enddate THEN 1" + 
					"        ELSE 0" + 
					"    END as result" + 
					"    from tblstudent s " + 
					"        inner join tblregicourse regi " + 
					"            on s.student_seq = regi.student_seq" + 
					"                inner join tblresult r " + 
					"                    on regi.regicourse_seq = r.regicourse_seq" + 
					"                        inner join tblopencourse o " + 
					"                            on o.opencourse_seq = regi.opencourse_seq" + 
					"                                inner join tblcourse c" + 
					"                                    on c.course_seq = o.course_seq  " + 
					"                                        inner join tblteacherCourse tc" + 
					"                                            on tc.opencourse_seq = o.opencourse_seq" + 
					"                                                inner join tblTeacher t" + 
					"                                                    on t.teacher_seq=tc.teacher_seq " + 
					"                                                        where s.student_seq = ?" ;	
					
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,student_seq);
			
			ResultSet rs = pstat.executeQuery();
			
			while(rs.next()) {
				
				String num = rs.getString("result");

				return num;
			}
	
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return null;	
		
	}
	
	
	
	
	
	
	
	public ArrayList<DTO_Example> example() {
		
		try {
			
			String sql= " select example_seq, content from tblexample ";
			
			ResultSet rs = stat.executeQuery(sql);
			
			ArrayList<DTO_Example> ex = new ArrayList<DTO_Example>(); //복사용
			
			while(rs.next()) {
				
				DTO_Example dto = new DTO_Example();
				
				dto.setExample_seq(rs.getString("example_seq"));
				dto.setContent(rs.getString("content"));
				
				ex.add(dto); //리턴 빼먹지 말것!★★★★★
			}
	
			return ex;
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	
		return null;
		
	}



	
	

	//교사평가문항[객관식]_2
	public ArrayList<DTO_TeacherEval_Q> evalObj(String student_seq) {
		try {
			
			String sql=	" select * from tblTeacherEval_Q where type_seq = 2";
			
			stat = conn.createStatement();
			
			ResultSet rs = stat.executeQuery(sql);
			
			ArrayList<DTO_TeacherEval_Q> evalObjQ = new ArrayList<DTO_TeacherEval_Q>();
			
			while(rs.next()) {
								
				DTO_TeacherEval_Q dto = new DTO_TeacherEval_Q();
				
				dto.setEvalQ_seq(rs.getString("evalQ_seq"));
				dto.setQuestion(rs.getString("question"));
				dto.setType_seq(rs.getString("type_seq"));
				
				evalObjQ.add(dto);
			
			}
			
			return evalObjQ;
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}

	
	
	
	
	
	
	
	
	
	//객관식 답변 저장을 위해 사용할 DAO
	public ArrayList<DTO_TeacherEval_A> evalA(String student_seq) {
		
		String sql = "";
		
		
		
		return null;
	}



	public ArrayList<DTO_EvalOk_Consult_S> consultInfo(String student_seq) {

		ArrayList<DTO_EvalOk_Consult_S> list = new ArrayList<DTO_EvalOk_Consult_S>();
		
		String sql = "select regi.student_seq, s.name as sname, c.name as courseName, t.name as tname "
				+ "from tblRegiCourse regi "
					+ "inner join tblOpenCourse o "
						+ "on o.opencourse_seq = regi.openCourse_seq "
							+ "inner join tblTeacherCourse tc "
								+ "on tc.openCourse_seq = o.openCourse_seq "
									+ "inner join tblTeacher t "
										+ "on t.teacher_seq = tc.teacher_seq "
											+ "inner join tblCourse c on c.course_seq = o.course_seq "
												+ "inner join tblstudent s "
													+ "on s.student_seq = regi.student_seq "
														+ "where s.student_seq = " + student_seq;
		
		try {
			ResultSet rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				DTO_EvalOk_Consult_S dto = new DTO_EvalOk_Consult_S();
				
				dto.setSname(rs.getString("sname"));
				dto.setCourseName(rs.getString("courseName"));
				dto.setTname(rs.getString("tname"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (SQLException e) {
			System.out.println("StudentDAO클래스 consultRecordInfo(String student_seq) 오류!");
			e.printStackTrace();
		}
		
		return null;
		
	}



	public ArrayList<DTO_ConsultRecode_S> consultRecordInfo(String student_seq) {

		ArrayList<DTO_ConsultRecode_S> consultList = new ArrayList<DTO_ConsultRecode_S>();
		
		String sql = "select s.student_seq, s.name as sname, creq.requestdate, crd.recorddate, creq.requestcontent, crd.recordcontent "
						+ "from tblstudent s "
							+ "inner join tblregicourse regi "
								+ "on s.student_seq = regi.student_seq "
									+ "inner join tblConsultRequest creq "
										+ "on creq.regicourse_seq = regi.regicourse_seq "
											+ "inner join tblConsultRecord crd "
												+ "on crd.consult_seq = creq.consult_seq "
													+ "where s.student_seq = " + student_seq;
		
		try {
			ResultSet rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				DTO_ConsultRecode_S dto = new DTO_ConsultRecode_S();
				
				dto.setRecordDate(rs.getString("recorddate"));
				dto.setRequestcontent(rs.getString("requestcontent"));
				dto.setRecordcontent(rs.getString("recordcontent"));
				
				consultList.add(dto);
				
			}
			return consultList;
			
		} catch (SQLException e) {
			System.out.println("StudentDAO클래스 consultRecordInfo(String student_seq) 오류!");
			e.printStackTrace();
		}
		
		return null;
	}

	public ArrayList<DTO_RegiCourseInfo_S> regiCourSearchInfo(String student_seq) {

		ArrayList<DTO_RegiCourseInfo_S> list = new ArrayList<DTO_RegiCourseInfo_S>();
		
		String sql = "select c.name as courseName, t.name as tname, r.roomname " + 
				" from tblOpenCourse o " + 
					"inner join tblcourse c " + 
						"on c.course_seq= o.course_seq " + 
							"inner join tblroom r " + 
								"on r.room_seq = o.room_seq " + 
									"inner join tblTeacherCourse tc " + 
										"on o.opencourse_seq = tc.opencourse_seq " + 
											"inner join tblteacher t " + 
												"on t.teacher_seq = tc.teacher_seq " + 
													"inner join tblRegiCourse rc " + 
														"on o.openCourse_seq = rc.openCourse_seq " + 
															"where sysdate between o.startDate and o.endDate and rc.student_seq = " + student_seq;
		
		try {
			ResultSet rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				DTO_RegiCourseInfo_S dto = new DTO_RegiCourseInfo_S();
				
				dto.setCourseName(rs.getString("courseName"));
				dto.setTname(rs.getString("tname"));
				dto.setRoomName(rs.getString("roomname"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (SQLException e) {
			System.out.println("StudentDAO클래스 regiCourSearchInfo(String student_seq) 오류!");
			e.printStackTrace();
		}
		
		return null;
	}



	public ArrayList<DTO_RegiSubjInfo_S> regiCourSearchSubjectInfo(String student_seq) {

		ArrayList<DTO_RegiSubjInfo_S> subjectList = new ArrayList<DTO_RegiSubjInfo_S>();
		
		String sql = "select s.subject_seq, s.name as subjName, to_char(os.startdate,'yyyy-mm-dd') as startD, to_char(os.enddate,'yyyy-mm-dd') as endD " + 
					"from tblcourse c " + 
						"inner join tblopencourse o " + 
							"on c.course_seq = o.course_seq " + 
								"inner join tblOpenSubjectMgmt os " + 
									"on  o.opencourse_seq = os.opencourse_seq " + 
										"inner join tblSubject s\r\n" + 
											"on s.subject_seq=os.subject_seq " + 
												"inner join tblRegiCourse rc " + 
													"on o.openCourse_seq = rc.openCourse_seq " + 
														"where sysdate between o.startDate and o.endDate and rc.student_seq = " + student_seq + 
															"order by s.subject_seq";
		
		try {
			ResultSet rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				DTO_RegiSubjInfo_S dto = new DTO_RegiSubjInfo_S();
				
				dto.setSubject_seq(rs.getString("subject_seq"));
				dto.setSubjName(rs.getString("subjName"));
				dto.setStartdate(rs.getString("startD"));
				dto.setEnddate(rs.getString("endD"));
				
				subjectList.add(dto);
				
			}
			
			return subjectList;
			
		} catch (SQLException e) {
			System.out.println("StudentDAO클래스 regiCourSearchSubjectInfo(String student_seq) 오류!");
			e.printStackTrace();
		}
		
		return null;
	}


	
	
	
	

	public void obASave(String regiNum, String q1, String q2, String q3, String q4, String q5) {

		String sql = "INSERT INTO tblTeacherEval_A (evalA_seq, subjective_A,objective_A, evalQ_seq, regiCourse_seq)" + 
				"    VALUES (TeacherEval_A_seq.nextVal, null, ? , ? , ?)"; // 작성한답안, 문제번호(1-5), 수강신청번호(regiNum)
		
		String[] sqlSave = new String[5];
		sqlSave[0] =  q1;  
		sqlSave[1] =  q2;
		sqlSave[2] =  q3;
		sqlSave[3] =  q4;
		sqlSave[4] =  q5;
		
		try {
			
			pstat = conn.prepareStatement(sql);
			
			for(int i=0; i< sqlSave.length; i++) {
				
				pstat.setString(1, sqlSave[i]);
				pstat.setString(2, (i+1)+"");
				pstat.setString(3, regiNum);

				pstat.executeUpdate();
			}
					
			

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	
	}



	
	
	
	public String regiSeqSave(String student_seq) {
		
		String sql = "select regicourse_seq from tblRegiCourse where student_seq =?";
		
		try {
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1,student_seq);
			
			ResultSet rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				String regiNum = rs.getString("regicourse_seq");
				
				return regiNum;
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}



	//[ 0 =>평가X ]  [ 1 => 평가O ]
	public String evalCount(String student_seq) {
		
		try {
			
			String sql = " select count(*) as cnt from tblteachereval_a a" + 
					"    inner join tblRegicourse rc" + 
					"        on a.regicourse_seq = rc.regicourse_seq" + 
					"            inner join tblStudent s" + 
					"                on s.student_seq = rc.student_seq" + 
					"                    where s.student_seq = ?";
			
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, student_seq);
			
			ResultSet rs = pstat.executeQuery();
			
			if( rs.next() ) {
				
				String countNum = rs.getString("cnt");
				
				return countNum;
				
			}
						
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return null;
		
	}


	//교사평가_주관식(6)
	public String evalSubj6() {
		
		try {
			
			String sql = "select * from tblTeacherEval_Q where evalq_seq = 6 ";
			
			stat = conn.createStatement();
			ResultSet rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				
				String good = "\t["+rs.getString("question")+"]";

				return good;
			}
		
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return null;
	}


	//교사평가_주관식(7)
	public String evalSubj7() {
		
		try {
			
			String sql = "select * from tblTeacherEval_Q where evalq_seq = 7 ";
			
			stat = conn.createStatement();
			ResultSet rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				
				String bad = "\n\n\t["+rs.getString("question")+"]";

				return bad;
			}
		
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return null;
	}
	
	
	
	//좋았던점에 대한 응답 저장_DAO
	public void subASave(String regiNum, String q) {
		
		String sql = "INSERT INTO tblTeacherEval_A (evalA_seq, subjective_A,objective_A, evalQ_seq, regiCourse_seq)" + 
				"    VALUES (TeacherEval_A_seq.nextVal, ? , null, 6, ? )";
		
		try {
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, q);
			pstat.setString(2, regiNum);
			
			pstat.executeUpdate();			
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		
	}



	//입력받은 상담요청일자를 DB로 돌리는 DAO
	// count(*)의 결과가 1이 나오면 가능/ 0이 나오면 불가
	public String passRqDate(String requestDate, String student_seq) {
		
		String sql = "select count(*) as cnt from tblopenCourse op" + 
				"    inner join tblRegiCourse regi" + 
				"        on regi.opencourse_seq = op.opencourse_seq" + 
				"            where regi.student_seq = ? " + 
				"                and ? between op.startdate and op.enddate ";
		
		
		try {
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, student_seq);
			pstat.setString(2, requestDate);
			
			ResultSet rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				String result = rs.getString("cnt");
				
				return result;
				
			}
			
			
	
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
		

		
	}


	//하루 최대2명까지 상담신청가능 
	// - 상담 가능 일자 확인여부 : 0,1까지 가능 2 이상은 불가 처리해야함
	public String consultMax2(String requestDate) {
		
		String sql = " select count(*) as cnt" + 
				"    from tblconsultRequest cr" + 
				"        inner join tblregicourse regi" + 
				"            on regi.regicourse_seq = cr.regicourse_seq" + 
				"                inner join tblopenCourse oc" + 
				"                    on oc.opencourse_seq = regi.opencourse_seq" + 
				"                       where requestdate = ? " + 
				"                                order by requestdate";
	
		try {
			

		pstat = conn.prepareStatement(sql);
		pstat.setString(1, requestDate);

		ResultSet rs = pstat.executeQuery();

		
		if(rs.next()) {	

			String result = rs.getString("cnt");

			return result;		

		}

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}



	public void consultContent(String requestDate,String content, String student_seq) {
		
		String sql = "insert into tblConsultRequest values (ConsultRequest_seq.nextVal, ? ,? ,? , default)";
		try {
			
		
		pstat=conn.prepareStatement(sql);
		
		pstat.setString(1, requestDate);
		pstat.setString(2, content);
		pstat.setString(3, student_seq);
		
		pstat.executeUpdate();
		
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		
	}
	
	//추가 기능 구현중...========================================================
	public void attendInsert(String student_seq) {
		
		String sql = "insert into tblattendancemgmt VALUES (ATTENDANCEMGMT_SEQ.nextval, sysdate, sysdate, null, null, ?)";
		Calendar time = Calendar.getInstance();
		
		try {
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, student_seq);
			
			pstat.executeUpdate();
			//%tT : 시분초, %tF : 년월일
			System.out.printf("\t %tF %tT 입실하셨습니다", time,time);
			
			System.out.println("\n\n\t엔터를 누르시면 이전으로 이동합니다.");
			Scanner scan = new Scanner(System.in);
			scan.nextLine();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	}



	
	public void attendUpdate( String student_seq) {
		
		String sql = "update tblattendancemgmt set workoff = to_date(?, 'yyyy-mm-dd hh24:mi:ss') "
						+ "where regicourse_seq= ? and to_char(attenddate, 'yyyy-mm-dd') = ? ";
		Calendar time = Calendar.getInstance();
		
		try {
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, String.format("%tF %tT", time, time));
			pstat.setString(2, student_seq);
			pstat.setString(3, String.format("%tF", time));

			pstat.executeUpdate();
			
			System.out.printf("\n\t %tF %tT 퇴실하셨습니다", time,time);
			System.out.println("\n\n\t엔터를 누르시면 이전으로 이동합니다.");
			Scanner scan = new Scanner(System.in);
			scan.nextLine();
			

			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	}



	
	
	public String attendRecord(String student_seq) {
		
		String sql = "select " + 
				"    case" + 
				"        when count(workon) >  count(workoff) then 1 " + 
				"        when count(workon) =  count(workoff) then 0 " + 
				"    end as cnt" + 
				"        from tblattendancemgmt where regicourse_seq= ? ";
		
		try {
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1,student_seq);
			
			ResultSet rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				String result = rs.getString("cnt");
				return result;
				
			}
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		
		return null;
	}

}//전체