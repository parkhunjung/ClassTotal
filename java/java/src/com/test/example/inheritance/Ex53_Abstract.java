package com.test.example.inheritance;

public class Ex53_Abstract {
	public static void main(String[] args) {
	
		
		//추상 클래스, Abstract Class
		//추상 메소드, Abstract Method
		
		//추상 클래스
		// - 클래스 일종
		// - 상속 관계의 구성원이 된다. > 상속 관계 없이 독립적으로 사용 안함.
		// - 객체의 원형(베이스)을 만드는 역할
		// - 객체의 행동(사용법)을 표준화하는 역할
		
		//어느 회사에서 모니터 > Monitor(추상 + 상속) > 규칙 준수 > 사용법 동일(통일) > 유저가 행복해진다.
		LG100 lg = new LG100();
		
//		lg.on();
//		lg.off();
		
		lg.start(); //객체행동을 표준화 한것이다.
		lg.stop();
		lg.info();
		
		Dell200 dell = new Dell200();
		
//		dell.powerOn();
//		dell.powerOff();
		
		dell.start(); //객체행동을 표준화 한것이다.
		dell.stop();
		dell.info();
		
		//추상 클래스는 인스턴스를 만들 수 없다.
//		Monitor m = new Monitor();
//		m.model; //0
//		m.size; //0
//		m.info(); //0
//		m.start(); //X
//		m.stop(); //X
		
		//추상 클래스는 변수는 만들 수 있다. > 형 변환
		Monitor m;
		
		
		
		
	}//main
	
	
}//Ex

//추상 클래스 선언
//1. 일반 구현 멤버
//2. 추상 멤버
// - 추상 메소드 - 구현부를 가지지 않는 메소드. 머리통만 있는 메소드

abstract class Monitor {
	
	//구현
	private String model;
	private int size;
	
	public void info() {
		
		System.out.println(String.format("모델명 : %s, 크기 : %d", model, size));
		
	}
	
	//추상 메소드(전원 켜기)
	public abstract void start(); //호출 불가능
	
	//추상 메소드(전원 끄기)
	public abstract void stop(); //호출 불가능
	
	
}



//모니터 클래스
//LG100 모니터
class LG100 extends Monitor {
	
//	public String model;
//	public int size;
//	
//	public void info() {
//		
//		System.out.println(String.format("모델명 : %s, 크기 : %d", model, size));
//		
//	}
	
//	//전원 켜기
//	public void on() {
//		System.out.println("전원을 켭니다.");
//	}
//	
//	//전원 끄기
//	public void off() {
//		System.out.println("전원을 끕니다.");
//	}
//	
	
	//추상 메소드를 구현했다.
	public void start() {
		System.out.println("전원을 켭니다.");
	}
	
	public void stop() {
		System.out.println("전원을 끕니다.");
	}
	
	
}//Lg

class Dell200 extends Monitor {
	
//	public String model;
//	public int size;
//	
//	public void info() {
//		
//		System.out.println(String.format("모델명 : %s, 크기 : %d", model, size));
//		
//	}
	
//	//전원 켜기
//	public void powerOn() {
//		System.out.println("power on");
//	}
//	
//	//전원끄기
//	public void powerOff() {
//		System.out.println("power off");
//	}

	@Override
	public void start() {
		System.out.println("power on");
		
	}

	@Override
	public void stop() {
		System.out.println("power off");
		
	}
	
	
	
}



































