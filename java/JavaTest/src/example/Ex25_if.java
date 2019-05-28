package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Ex25_if {

	// ctrl + space
	// - 인텔리센스(MS)
	// - Code Assist(이클립스)
	// - 자동 완성

	// 자주 쓰는 조각 코드 > 자동완성
	public static void main(String[] args) throws IOException {

		// 자동 개행(줄바꿈)
		// - alt + shift + y

		// 단일 라인 주석 단축키
		// - ctrl + /

		// 다중 라인 주석 단축키
		// - ctrl + shift + / ===== 풀때는 ctrl + shift + \
		
		// 자동 포맷
		// - ctrl + shift + F

		// Alt + 방향키 = 코드이동
		
		// ctrl + D = 라인 삭제

		/*
		제어문
		- 프로그램 코드의 실행 순서를 제어하는 역할
		
		1.조건문
			a. if
			b. swich
		
		2.반복문
			a. for
			b. while
			c. do while
			d. for(향상된 for문, Enhanced For Statement)
			
		3.분기문
			a. break
			b. continue
			
			
		if문
		- 조건을 제시한 후 결과에 따라 실행할 코드를 선택하는 제어
		- 조건은 반드시 boolean 값을 가진다.
		- A ? B : C
		
		if (조건식){
			
			실행문;
		
		}
		
		
		if (조건식){
			
			실행문;
		
		} else {
			
			실행문;
		
		}
		
		
		//다중 if문
		if (조건식){ //1회 필수
			
			실행문;
		
		} else if (조건식) { //몇개가 됫던지간에 필요한만큼 쓴다.
			
			실행문;
		
		} else { //0~1회. 선택
			
			실행문;
		
		}
		
		
		
		*/
		
		//리팩토링
		// - 이미 완성된 코드의 일부를 개선하는 작업
		
		
		//Eclipse
		// - IDE. Integrated Development Environment. 통합 개발 환경
		// - RAD. Rapid Application Development. 빠른 속도 개발 
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		m1(reader);
		//m2(reader);
		//m3(reader);
		//m4(reader);
		//m5(reader);
		
	} // main

	private static void m5(BufferedReader reader)  {
		
		//조건식
		// - 대다수 언어는 조건으로 boolean 이 아닌 값을 사용한다.
		// - 정수 : 0 (false), 1(true)..0이 아닌 숫자(true)
		// - 실수 : 0.0(false), 그 외의 숫자(true)
		// - 문자 : \0(Null-false), 그 외의 문자(true)
		// - 문자열 : ""(false), 그 외의 문자열(true)
		
//		int n = 10;
//		
//		if (n) { 
//			System.out.println("참");
//		} else {
//			System.out.println("거짓");
//		}
	}

	private static void m4(BufferedReader reader) throws IOException{
		
		//Calendar
		//요구사항] 생일 입력 -> 무슨 요일?
		
		System.out.print("년 : ");
		int year = Integer.parseInt(reader.readLine());
		
		System.out.print("월 : ");
		int month = Integer.parseInt(reader.readLine());
		
		System.out.print("일 : ");
		int date = Integer.parseInt(reader.readLine());
		
		
		Calendar birthday = Calendar.getInstance();
		birthday.set(year, month - 1, date);
		
		System.out.printf("생일인 %tF은 %tA입니다.\n"
						, birthday
						, birthday);
		
	}

	private static void m3(BufferedReader reader) throws IOException{
		
		//요구사항] 나이 입력 -> 원하는 나이대?
		//- 19세 이상 60세 미만
		System.out.print("나이 : ");
		int age = Integer.parseInt(reader.readLine());
		
		
		if (age >= 19 && age < 60) {
			System.out.println("합격");  //요구사항의 질문
		}else {
			System.out.println("불합격");
		
			//중첩 if문, Nested if Statement  => 동등하지않은 레벨의 질문 중첩if문을 사용
			 if (age < 19){
				 System.out.println("나이가 너무 어립니다."); // 불필요한 낮은레벨의 질문
			}else {
				System.out.println("나이가 너무 많습니다.");
			}
	
		}
		
		if (age >= 19 && age < 60) {
			System.out.println("합격"); // else if 는 동등한 레벨의 질문에서만 사용한다.
		}else if (age < 19){
			System.out.println("불합격 - 어려서");
		}else if (age > 60) {
			System.out.println("불합격 - 어려서");
		}
	}

	private static void m2(BufferedReader reader) throws IOException{
		
		//숫자입력
		System.out.print("숫자 : ");
		
		int num = Integer.parseInt(reader.readLine());
		
		//짝수 or 홀수
		
		if (num % 2 == 1) {
			System.out.println("홀수 입니다.");
		
		} else {	
			System.out.println("짝수 입니다.");
		
		}
		
		
	}

	private static void m1(BufferedReader reader) throws IOException {
		//ctrl + 1 
		//ctrl + shift + O
		
		
		//숫자입력
		System.out.print("숫자 입력 : ");
		
		int num = Integer.parseInt(reader.readLine());
		
		//요구사항] 입력 숫자가 양수인지?
//		if (num > 0) {
//			System.out.println("양수입니다.");
//		}
		
//		if (num > 0) {
//			System.out.println("양수입니다.");
//		}else {
//			System.out.println("양수가 아닙니다.");
//		}
		
		
		// TODO 점심 먹고 오류 체크할 것
		if (num > 0) {
			System.out.println("양수입니다.");
		}else if (num < 0){
			System.out.println("음수입니다.");
		} else {
			System.out.println("0");
		}

		
		
		
		System.out.println("종료");
	}

}