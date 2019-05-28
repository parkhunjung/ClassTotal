package com.test.example.generic;

import java.util.Random;
import java.util.Scanner;

public class Ex70_Exeption {
	public static void main(String[] args) {
		
		//예외, Exception
		// - 실행 중 발생하는 에러
		// - 컴파일 발견x, 런타임 발견O
		// - 개발자 예측 O, X -> 예측 유무와 상관없이 발생한다.
		
		//예외 처리, Exception Handling
		//1. 전통적인 방식
		// - 제어문 사용(조건문)
		//2. 특화된 구문 제공(권장)
		// - try catch
		
//		m1();
//		m2();
//		m3();
//		m4();
		try {
			m5();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}//main

	private static void m5() throws Exception {
		
		//예외 미루기
		//m5() : 서울 본사
		//try {
			
			제주();
			부산();
			대전();
//		} catch (Exception e) {
//			
//		}
		
		
		
		
	}

	private static void 대전() throws Exception {
		int n = 0;
		System.out.println(100 / n);
	}

	private static void 부산() throws Exception {
		Random rnd = null;
		System.out.println(rnd.nextInt());
		
	}

	private static void 제주() throws Exception {
		int[] list = { 100 };
		System.out.println(list[100]);
	}

	private static void m4() {
		
		//요구사항] 짝수만 입력
		//홀수 입력 > 예외 발생
		
		Scanner scan = new Scanner(System.in);
		System.out.print("숫자 : ");
		int num = scan.nextInt();
		
		if ( num % 2 == 0 ) {
			System.out.println(num); //출력
		}else {
			System.out.println("홀수 불가능");
		}
		
		try { 
			if (num % 2 == 1) {
				throw new Exception("홀수 입력"); //강제 예외 발생을 시켜준다.
			}
			
			System.out.println(num);
		} catch (Exception e) {
			System.out.println("홀수 불가능");
			System.out.println(e);
		}
		
	}

	private static void m3() {
		
		try {
			
		
			int[] nums = {100, 200, 300};
			nums[5] = 400;
			
			Random rnd = null;
			System.out.println(rnd.nextInt());
			
			Object n = 10;
			System.out.println((String)n);
		
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("배열 오류");
		}catch(NullPointerException e) {
			System.out.println("널 참조");
		}catch(ClassCastException e) {
			System.out.println("형변환 오류");
		}catch(Exception e) { //항상 순서를 마지막에
			System.out.println("예외 처리");
		}
		
		
	}

	private static void m2() {
		
		
		//배열 > index 처리
		int[] nums = {100, 200, 300};
		
		try {
			nums[1] = 400;
			System.out.println(nums[1]);
		} catch(Exception e) {
			System.out.println("배열 첨자 오류");
		}
		
		Random rnd = null;
		
		try {
			//rnd = new Random();
			System.out.println(rnd.nextInt());
		} catch(Exception e) {
			System.out.println("객체 없음");
		}
		
		
		Object n = 10;
		
		try {
			System.out.println((String)n);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("코드");
		}
		System.out.println("코드");
		
		
		
		
	}

	private static void m1() {
		//사용자 숫자입력 > 업무 진행
		Scanner scan = new Scanner(System.in);
		
		
		System.out.print("숫자 입력 : ");
		int num = scan.nextInt();
		
		
		if(num != 0) {
			//업무 코드 > 비즈니스 코드
			System.out.printf("100 / %d = %d\n", num, 100 / num);
		}else {
			//예외 처리 코드
			System.out.println("0은 입력 불가능합니다.");
		}
	
		
		//비권장(가독성 낮음)
		if(num == 0) {
			System.out.println("0은 입력 불가능합니다.");
		}else {
			System.out.printf("100 / %d = %d\n", num, 100 / num);
		}
		
		
		
		//try catch 동작 방식
		// - if문 : 유효 조건을 판단 후 분기 실행
		// - try catch문 : 조건 존재x, 일단 에러 발생 -> 강제로 catch절로 제어 이동
		try {
			//비즈니스 코드
			System.out.printf("100 / %d = %d\n", num, 100 / num);
			System.out.println("실행코드");
		} catch(Exception e) {
			//예외처리 코드
			System.out.println("0은 입력 불가능합니다.");
			System.out.println(e); //예외에 대한 정보를 제공하는 객체
		}
		
		
		
		
		
	}
	
	
}































