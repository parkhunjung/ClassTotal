package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_for {
	
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		/*
	
		반복문
		- 실행 블럭 코드를 원하는 횟수만큼 반복 실행 제어
	
		for문
	
		for (초기식; 조건식; 증감식) {
		실행문;
		
		}
	
	
	
	 	*/
		//m1();
		//m2();
		//m3();
		//m4();
		//m5();
		//m6(reader);
		//m7();
		//m8(reader);
		
		
		a1();
	
	
	}//main

	private static void m8(BufferedReader reader) throws Exception {
		
		//반복 횟수 > 무한 반복
		int i;
//		for (i=0; i<10; i--) {
//			System.out.println(i);
//		}
		
		//의도적으로 무한 루프 생성

//		for(;;) {
//			System.out.println("안녕");
//		}
		
//		for (i = 0; true; i++) {
//			System.out.println("안녕");
//		}
		
		
		for (;;) {
			System.out.println("게임 중..");
			System.out.println("게임 종료.");
			
			System.out.println("계속 하시겠습니까?(y | n)");
			String input = reader.readLine();
			if(input.equals("n")) {
				break;
			}
			
		}//루프
		
		System.out.println("프로그램 종료");
		
	}//m8

	private static void m7() {
		
		//제어문(반복문) + break, continue
		//1. break
		//자신이 속한 제어문을 탈출한다.(if문 예외) if문은 자기가 속한 제어문이라 생각 안한다.
		//2. continue
		// - 자신이 속한 제어문(반복문)의 처음으로 돌아간다.(if문은 예외)
		for(int i = 1; i<=10; i++) {
			
			
			if( i == 5) {
				
				//break;// 자신이 속한 제어문을 if가 아니라 for 라고 생각함.
				continue;// 컨티뉴를 만나는 즉시 제일 위로 올라간다. 그래서 5일때 5를출력하지않고 넘어가버렷다.
			
			
			}	
			System.out.println(i);
		
		}
		
		
		//선생님 + 학생 상담(30명)
		int i;
		for (i = 1; i <=30; i++) {
			
			//흐름 제어
//			if (i == 15) {
//				break; //반복제어를 끝내자
//			}
			if ( i == 10 || i == 15 || i == 20 ) {
				continue;
			}
			
			
			
			System.out.printf("선생님이 %d번 학생을 상담 중..\n", i);
		}
		
		
		
	}

	private static void a1() {
		
		//난수
		// - 임의의 수
		// -> 난수 생성기
		
		//1. 
		// 0(inclusive) ~ 1(exclusive) 사이의 난수
		// 포함 ~ 미포함
		// greater than or equal to 0.0 and less than 1.0
		for (int i = 0; i<10; i++) {
		//System.out.println(Math.random());
		
		double d = Math.random();
		//System.out.println(d);
		
		//0~9사이의 정수
		int n = (int)(d * 10);
		//System.out.println(n);
		
		
		//주사위 : 1 ~ 6 사이의 정수
		int dice = (int)(d * 6) + 1; //(int)(d * 최대값) + 최소값;
		System.out.println(dice);
		
		}
		
	}
		
		
	

	private static void m6(BufferedReader reader) throws Exception {
		//BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		int sum = 0;
		
		for (int i = 0; i<10; i++) {
			
			System.out.print("숫자 : ");
			int num = Integer.parseInt(reader.readLine());
			
			sum += num;
		}
		//요구사항]사용자에게 숫자를 10개 입력받아 그 수의 합을 구한다.
		System.out.println(sum);
		
		
		
	}

	private static void m5() {
		
		//Loop -> 누적
		//1~10까지의 합을 구하시오
		//1+2+3+4+...+9+10
		int i;
		//무언가의 누적값을 구해야 한다.
		//1.누적 변수를 선언한다. 누적 변수는 반드시 초기화해야 한다.
		int sum = 0;
		
		//2. 누적시킬 수열을 구한다.
		//for (i = 0; i <= 10; i++) {
		//for (i = 5; i <= 25; i++) {
		for (i = 0; i <= 10; i+=2) {
			//3.누적한다.
			sum += i;
					
		}
		System.out.println(sum);
	}

	private static void m4() {
		
		//모든 제어문 + 지역변수
		//메소드 + 지역변수
		
		//지역변수의 영역(생명주기)
		// - 블럭의 종류 : 메소드 or 제어문
		
		int a = 10;
		if (true) {
			System.out.println(a);
			
			int b = 20;
			System.out.println(b);
		} 
		
		System.out.println(a);
		//System.out.println(b); 
		
		int i;
		//루프변수나 제어문변수는 굳이 제어문속이나 루프문속에서 만들 필요가없다.
		for (i=0; i<10; i++) {
			System.out.println(i);
		}
		
		System.out.println(i);
		
		for (int j=0; j<10; j++) {
			//루프변수 j 와 지역변수k의 차이
			//j 는 계속살아서 돌아오지만 k는 10번만들어지고 10번죽는다.
			System.out.println("j :" +j);
			
			int k = 0;;
			System.out.println("k :" +k);
			k++;
		}
		
	}//m4
	

	private static void m3() {
		
		//구구단 출력
		//- 5단
		int d;
		for (int i=2; i<10; i++) {
			for(d=1; d<10; d++) {
				System.out.printf("%d x %d = %2d\n", i, d, i*d);
			}
			
		}
		
		
	}//m3

	private static void m2() {
		
		//반복문 -> Loop(루프)
		//i -> 루프 변수
		//1. 반복 횟수
		//2. 루프 변수의 변화(***)
//		for (int i=0; i<10; i++) {
//			System.out.println(i);
//			
//		}
		
//		for (int i=0; i<10; i+=2) {
//			System.out.println(i);
//			
//		}
		
//		for (int i=1; i<10; i+=2) {
//			System.out.println(i);
//			
//		}
		
//		for (int i=0; i<10; i+=4) {
//			System.out.println(i);
//			
//		}
		
//		for (int i=0; i<10; i--) {
//			System.out.println(i);
//			
//		}
		
		//10,9,8...1
//		for (int i=10; i>0; i--) {
//			System.out.println(i);
//			
//		}
		
		for (int i=0; i<10; i++) {
			System.out.println(i);
			//루프 변수 수정 -> 지양 -> 예측 힘들다
			i = 15;
		}
		
	}

	private static void m1() {
		
		for (int i=1; i<=10; i+=1) {
			System.out.printf("%d. 안녕하세요.\n", i);
		}
		
	}
}
