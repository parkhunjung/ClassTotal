package com.test.example.inheritance;

import java.util.Calendar;

public class Ex57_Final {
	public static void main(String[] args) {
		
		
		//final 키워드
		// - 3가지 용도로 사용한다.
		// - 한번 정하면 수정이 불가능하다.
		// 1. 변수에 적용
		//	- 지역변수(final 0, static, private X)
		//	- 멤버변수(final, static, private O)
		// 2. 메소드에 적용
		//	- 메소드 재정의 불가능(오버라이드)
		// 3. 클래스에 적용
		//	- 클래스 재정의 불가능(상속 불가능)
		
		//final 변수
		// - 상수(constant) - 변하지 않는 수
		// - 값을 한번 할당하면 다시는 변경할 수 없는 변수
		
		final int a = 10; //권장
		final int b = 20; //권장
		final int c; //비권장
		final double PI = 3.14;
		
		System.out.println(a * 2);
		System.out.println(b * 2);
		
		//a = 20;
		// b = 40;
		c = 30; //비권장
		//c = 40;
		
//		FinalItem item = new FinalItem();
//		System.out.println(2 * item.NUM);
//		
//		FinalItem item2 = new FinalItem();
//		System.out.println(3 * item.NUM);
		
		System.out.println(4 * FinalItem.NUM);
		
		System.out.println(Calendar.YEAR);
		
		
		
		
	}//main
}

class FinalItem {
	//final 멤버 변수는 public으로 한다.
	public final static int NUM = 100;
	
	
}


final class FinalParent { //상속을 못하게 막는 파이널 클래스
	
	public final void test() { //오버라이드를 막는 파이널 메소드
		System.out.println("부모 메소드");
	}
	
	
}


//상속
//class FinalChild extends FinalParent {
//	
//	public void test() {
//		System.out.println("자식 메소드");
//	}
//	
//}


































