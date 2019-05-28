package Student;

import java.util.Scanner;

/*
 * 메인 > 학생
 * 
 * 학생패키지의 컨트롤러 역할을 수행하는 클래스입니다.
 * 
 * 클래스명: StudenetController
 * 
 */

public class StudentController {

	private static Scanner scan;

	// 생성자
	static {
		scan = new Scanner(System.in);
	}

//	// 테스트용 메인
//	public static void main(String[] args) {
//
//		start();
//
//	}

	// 실질적인 Student Controller[학생메인]
	public static void start() throws InterruptedException {

		StudentService stuService = new StudentService();

		stuService.studentLogin();
		stuService.studentInfo();
		stuService.studentMemu();

	}

}
