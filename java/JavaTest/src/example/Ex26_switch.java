package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex26_switch {
	public static void main(String[] args) throws Exception{
		
		//조건문
		//1. if
		//2. switch
		
		
		/*
		switch(조건){
			
			case 값:
				실행문;
				break;
			[case 값:
				실행문;
				break;] x N
			//원하는만큼 반복
			[default:
				실행문
				break;]
				
				
		}
		*/
		
		//m1();
		//m2();
		//m3();
		//m4();
		m5();
		
	
	}//main

	private static void m5() {
		
		//쇼핑몰
		//1. 카메라 + 메모리카드 + 삼각대
		//2. 카메라 + 메모리카드
		//3. 카메라
		
		int input = 1;
		
		switch (input) {
		
			case 1:
				System.out.println("카메라\n메모리카드\n삼각대"); //중복처리를 제거하려면 위에중복되는단어를지우면된다 ex)카메라
				//break;
			case 2:
				System.out.println("카메라\n메모리카드");
				//break;
			case 3:
				System.out.println("카메라");
				break;
					
		}
		
	}

	private static void m4() {
		int month = 5; //사용자가 입력한 날짜
		
		//입력한 달의 마지막 날짜?
		
		int lastDay = 0;
		
		if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
			
			lastDay = 31;
			
		} else if (month == 4 || month == 6 || month == 9 || month == 11 ) {
			lastDay = 30;
		}else {
			lastDay = 28;
		}
		
		switch (month) {
			
			case 1:
			case 3:
			case 5:
			case 7:
			case 8:
			case 10:
			case 12:
				lastDay = 31;
				break;
			case 4:
			case 6:
			case 9:
			case 11:
				lastDay = 30;
				break;
			case 2:
				lastDay = 28;
				break;


		}
	}

	private static void m3() throws Exception{
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("====================");
		System.out.println("       자판기");
		System.out.println("====================");
		System.out.println("1. 콜라");
		System.out.println("2. 사이다");
		System.out.println("3. 박카스");
		System.out.print("선택(숫자) : ");
		
		String input = reader.readLine();
		switch(input) {
		
			case "1":
				System.out.println("콜라는 700원 입니다.");
				
			case "2":
				System.out.println("콜라는 600원 입니다.");
				break;
			case "3":
				System.out.println("콜라는 500원 입니다.");
				break;
		}
		
		
	}

	private static void m2() {
		
		String color = "노랑색"; //사용자 입력 -> 옷 색깔
		
		//재고있는지? 취급색상?
		switch(color ) {
		
			case "파랑" :
				System.out.println("주문이 완료되었습니다.");
				break;
			case "빨강" :
				System.out.println("주문이 완료되었습니다.");
				break;
			case "노랑" :
				System.out.println("주문이 완료되었습니다.");
				break;
			default:
				//기타등등(else)
				System.out.println("취급하지 않는 색상입니다.");
				break;
		}
		
		
	}

	private static void m1() throws IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		//1 -> "하나"
		
		System.out.print("숫자 : ");
		int num = Integer.parseInt(reader.readLine());
		
		//if 조건 : boolean
		//switch 조건 : 값(데이터)
		// - 조건으로 사용할 수 있는 자료형
		// 		- 정수(대부분의 언어는 정수만 가능하다)
		// 		- 문자열	
		switch(num) {
		
			case 1:
				System.out.println("하나");
				break;
			
			case 2:
				System.out.println("둘");
				break;
			
			case 3:
				System.out.println("셋");
				break;
		}
	}
	
}
