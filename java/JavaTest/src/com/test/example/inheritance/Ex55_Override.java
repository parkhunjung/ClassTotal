package com.test.example.inheritance;

import java.util.Calendar;
import java.util.Random;

public class Ex55_Override {
	public static void main(String[] args) {
		
		//메소드 오버로딩 vs 메소드 오버라이드
		
		//메소드 오버라이드, Method Override
		// - 메소드 재정의
		// - 메소드의 구현부를 다시 만드는 기술(시그너처, 헤더 부분은 그대로 유지)
		// - 상속 관계에서 부모의 메소드를 자식 클래스에서 재정의 하는 기술
		
		
		OverrideParent p = new OverrideParent();
		
		p.hello();
		
		OverrideChild c = new OverrideChild();
		c.hello();
		//c.hi();
		
		MyRandom2 rnd = new MyRandom2();
		// 외부에선 부모 nextInt() 접근 불가능
		System.out.println(rnd.nextInt());
		
		//String Object.toString()
		// - 객체 자신이 가지는 데이터를 문자열로 반환하는 역할
		
		Object o1 = new Object();
		System.out.println(o1.toString());
		
		Calendar c1 = Calendar.getInstance();
		System.out.println(c1);
		System.out.println(c1.toString());
		
		Time t1 = new Time(2, 30);
		System.out.println(t1);
		System.out.println(t1.toString());
		
		
	}
	
	
}


class Time {
	
	private int hour;
	private int min;
	
	public Time(int hour, int min) {
		
		this.hour = hour;
		this.min = min;
		
	}
	
	@Override
	public String toString() {
		return String.format("%d:%d", this.hour, this.min);
	}
	
}








class OverrideParent {
	//부모 멤버들..
	
	public void hello() {
		System.out.println("안녕하세요.");
	}
	
}


class OverrideChild extends OverrideParent {
	
//	public void hi() {
//		System.out.println("방가 방가~");
//	}
	
	//메소드 오버라이드 발생
	// - 부모가 물려준 메소드와 동일한 시그너처를 가지는 메소드 선언만 하면 된다.
	// - 부모의 구현부 대신에 자식만의 구현부를 만드는 용도
	// - 외부에서 접근할 때 부모와 자식을 동일한 행동을 제공하기 위해서.(그 집안 사람들)
	public void hello() {
		System.out.println("방가 방가~");
	}
	
}


class MyRandom2 extends Random {
	
	@Override
	public int nextInt() {
		
		Random rnd = new Random();
		
		return rnd.nextInt(100)+1;
		
	}
	
}


abstract class Animal {
	
	//구현 멤버
	
	//추상 멤버
	public abstract void walk();
	
	
}

class Dog extends Animal {
	
	public void walk() {
		
	}
	
}






                 
























