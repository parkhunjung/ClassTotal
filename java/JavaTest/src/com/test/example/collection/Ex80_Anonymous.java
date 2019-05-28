package com.test.example.collection;

public class Ex80_Anonymous {
	public static void main(String[] args) {
		
		//익명 객체, Anonymous Object
		// - 익명 클래스, Anonymous Class
		// - 이름없는 클래스
		
		//익명 객체 만드는 방법 + 사용하는 용도
		// - 부모 타입을 통해서 자식 익명 객체를 생성한다.
		// 1. 부모 클래스 > 익명 객체 생성
		// 2. 부모 인터페이스 > 익명 객체 생성
		
		
		//인터페이스 구현 클래스의 객체는 반드시(?) 인터페이스 변수를 만들어서 참조한다.
		//클래스 변수 참조 : 비권장..
		//BBB obj = new BBB();
		AAA obj = new BBB();// 안정성 높은 코드 + 협업 도움
		
		obj.test(); // 최종목적
		
		//사용 횟수가 적은 객체를 만들기 위해 클래스를 제작한 상황 > 클래스 생성 비용이 더 높다. + 클래스 개수도 증가
		//결론 : 클래스 선언 없이 객체 만드는 방법
		AAA obj2 = new AAA() {

			@Override
			public void test() {
				System.out.println("인터페이스를 구현한 익명 객체 입니다.");
			}
		};
		
		obj2.test();
		
		
		AAA obj3 = new BBB();
		obj3.test();
		
		AAA obj4 = new AAA() {
			@Override
			public void test() {
				System.out.println("인터페이스를 구현한 익명 객체 입니다.");				
			}
		};
		
		
	}
}



interface AAA {
	void test();
}


//AAA를 구현 객체가 필요하다.
class BBB implements AAA {
	
	@Override
	public void test() {
		System.out.println("인터페이스를 구현한 실명 객체(BBB) 입니다.");
	}
	
}
