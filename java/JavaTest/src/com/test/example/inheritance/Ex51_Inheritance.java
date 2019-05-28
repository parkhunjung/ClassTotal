package com.test.example.inheritance;

import java.util.Random;

public class Ex51_Inheritance {
	public static void main(String[] args) {
		
		
		
		//상황] 난수 발생 잦음 > Random 클래스 의존도 높음
		//1. nextInt(); -21억 ~ 21억
		//2. 1 ~ 10 사이
		//3. 색상 난수 : red, yellow, blue, black, white
		//4. nextDouble()
		//5. nextBoolean()
		
		
//		m1();
//		m2();
		m3();
		
		
	}

	private static void m3() {
		
		MyRandom rnd = new MyRandom();
		
		//1.
		System.out.println(rnd.nextInt());
		
		//2.
		System.out.println(rnd.nextSmallInt());
		
		//3.
		System.out.println(rnd.nextColor());
		
		//4.
		System.out.println(rnd.nextBoolean());
		
		//5.
		System.out.println(rnd.nextDouble());
		
		
	}

	private static void m2() {
		
//		Random rnd = new Random();
		MyUtil util = new MyUtil();
		
		
		//1. 
		//System.out.println(rnd.nextInt());
		System.out.println(util.nextInt());
		System.out.println(util.nextInt());
		
		System.out.println(util.nextSmallInt());
		System.out.println(util.nextSmallInt());
		
		System.out.println(util.nextColor());
		System.out.println(util.nextColor());
	}

	private static void m1() {
		
		//직접 구현
		Random rnd = new Random();
		
		//1.
		System.out.println(rnd.nextInt());
		System.out.println(rnd.nextInt());
		System.out.println(rnd.nextInt());
		
		
		//2. 
		System.out.println(rnd.nextInt(10) + 1);
		System.out.println(rnd.nextInt(10) + 1);
		System.out.println(rnd.nextInt(10) + 1);
		
		//3.
		String[] color = {"red", "yellow", "blue", "black", "white"};
		
		System.out.println(color[rnd.nextInt(color.length)]);
		System.out.println(color[rnd.nextInt(color.length)]);
		System.out.println(color[rnd.nextInt(color.length)]);
		
		
		
		
		
	}
	
	
	
	
}
