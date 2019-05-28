package example;

public class Ex29_while {
	public static void main(String[] args) {
		
		//반복문
		//1. for
		//2. while
		//3. do while
		//4. for
		
		
		
		//whileTest();
		
		dowhileTest();
		
	}//main

	private static void dowhileTest() {
		
		//do while 문
		// - for, while 문 유사
		// - 조건에 따라 반복 제어를 하는 제어문
		
		//do {
		//실행문
		//} while(조건);
		
		int n = 20;
		
		do {
			System.out.println(n);
			n++;
		} while(n<=10);
		
		
		
		
	}

	private static void whileTest() {
		
		//while문
		// - for문 유사
		// - 조건에 따라 반복 제어를 하는 제어문
		
		//while (조건식) {
		//실행문
		//}
		
		//숫자 1~10까지 출력
		for(int i=1; i<=10; i++) {
			System.out.println(i);
		}
		
		int n = 20;
		while(n <= 10) {
			System.out.println(n);
			n++;	
		}
		
		//누적값이 1000이 넘으면 중단
		int sum = 0;
		n = 1; //(암시적) 루프변수
		
		while (sum < 1000) {
			sum+=n; //누적값
			n++; //1,2,3,4,5..
			
//			if (sum > 1000) {
//				break;
//			}
			
		}
		
		System.out.println(sum);
		
		
		
	}//whileTest
}
