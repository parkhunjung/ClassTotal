package com.test.example.inheritance;

public class Ex61_Interface {
	public static void main(String[] args) {
		
		
		//인터페이스, Interface
		// - 자바의 구성요소
		// - 클래스의 일종(자료형 -> 변수 생성 가능)
		// - 추상 클래스와 유사
		//
		
		
		Boss1000 bose = new Boss1000();
		bose.on();
		bose.off();
		
		Dell2000 dell = new Dell2000();
		dell.on();
		dell.off();
		
		
		
	}//main
	
}


/*

class 일반클래스 {
	구현 멤버
}

abstract class 추상클래스 {
	구현 멤버
	추상 멤버
}

interface 인터페이스 {
	추상 멤버
	//인터페이스는 구현된 멤버를 가질 수 없다.(극단적인 추상화 개념)
}

*/


//인터페이스 설계
interface ISpeaker {
	//구현 멤버를 가질 수 없다.
	//public int a;
	//public void test() {}
	
	//인터페이스의 추상멤버 특징
	//1. 반드시 public
	//2. 반드시 abstract
//	public abstract void test(); //이렇게 쓸수도있지만
	void on(); // 무조건 이렇게 쓴다 public abstract 생략 가능
	void off();
	
	
}


class Boss1000 implements ISpeaker {

	@Override
	public void on() {
		//전원켜기 + boss 만의 기술
		System.out.println("전원 on");
	}

	@Override
	public void off() {
		System.out.println("전원 off");
	}
	
	
	
}

class Dell2000 implements ISpeaker {

	@Override
	public void on() {
		//전원켜기 + 델만의 기술
		System.out.println("power on");
	}

	@Override
	public void off() {
		System.out.println("power off");
	}
	
}




















