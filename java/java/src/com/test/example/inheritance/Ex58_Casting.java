package com.test.example.inheritance;

public class Ex58_Casting {
	public static void main(String[] args) {
		
		
		
		// - 상속
		// - 추상 클래스(메소드)
		// - 메소드 오버라이드
		// - final 키워드
		// - 형변환
		
		//** 값형과 참조형간의 형변환이 불가능하다.
		//값형 형변환
		// - 값형끼리 변환(숫자끼리)
		// - 큰형 -> 작은형 : 명시적
		// - 작은형 -> 큰형 : 암시적
		// - 개발자 편의성 or 코드 유연성
		
		//참조형 형변환
		// - 클래스끼리 변환
		// - 상속 관계에 있는 클래스끼리만 가능(부모-자식 클래스간에 가능)
		// - *** 개발자측에서는 객체의 타입이 중요한게 아니라 참조 변수의 타입이 중요하다. 
		//			>>> 참조 변수의 모든 멤버가 실존해야 하고 정상 동작해야 한다.
		
		// - 부모 클래스 -> 자식 클래스 : 다운캐스팅 -Down Casting = 명시적 형변환
		// - 자식 클래스 -> 부모 클래스 : 업캐스팅 -Up Casting = 암시적 형변환
		
		
		//업캐스팅(100% 안전)
		CastParent p1;
		CastChild c1;
		
		c1 = new CastChild(); //원본
		
		//형변환
		//Parent = Child
		//Parent = (Parent)Child
		p1 = c1;
		//p1 = (CastParent)c1;
		
		//복사본이 올바르게 동작하는지 확인(형변환이 성공유무)
		System.out.println(p1.a);
		System.out.println(p1.b);
		
		//형변환
		//다운 캐스팅은 100% 불가능하다.
		//Child = Parent
		CastParent p2 = new CastParent();
		CastChild c2;
		
		c2 = (CastChild)p2;
		
		//확인
		System.out.println(c1.a);
		System.out.println(c1.b);
		System.out.println(c1.c);
		System.out.println(c1.d);
		
		
		
	}//main
	
}


class CastParent {
	
	public int a;
	public int b;
	
}

class CastChild extends CastParent {
	
	public int c;
	public int d;
	
}

































