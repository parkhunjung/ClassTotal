package com.test.example.inheritance;

public class Ex59_Casting {
	public static void main(String[] args) {
		
		
		//***************중요한 예제******************
		// 상속 + 참조형 형변환 + 배열 + 제어문 + 추상 클래스(메소드) 등..
		// 프로젝트 반복 패턴
		
		
		//상황]
		//1. 전자 제품 대리점 운영
		//2. 프린터 취급
		//3. LG300 x 5대, HP400 x 3대 
		
		//운영방침] ***
		//1. 한달 1번 > 모든 제품이 정상 동작인지 확인 > 출력 기능 체크
		
		//상황 변경]
		//1. 재고량 증가 > LG300(100), HP400(50)
		//2. 브랜드 증가 > Dell500, Samsung600, BenQ700
		//3. 점검 사항 > 각 제품의 본연 기능 테스트
		
//		m1();
//		m2(); //***** 2번과 3번 둘다 번갈아 사용
//		m3(); //************* 가장 많이쓰는 방식 ( 추상메소드와 업캐스팅과 배열을 이용한 방식)
//		m4();
		
		
		
		
	}//main

	private static void m4() {
		
		Printer p = new LG300(); //업캐스팅 가능
		
		//업캐스팅의 단점 (부모 클래스의 멤버만 접근 가능 + 자식 클래스가 구현한 자신의 멤버는 접근 불가능(내부에 존재)
		p.print();
//		p.call();
		
		//다운 캐스팅
		LG300 lg = (LG300)p;
		lg.call();
		
		
		
		
	}

	private static void m3() {
		
//		LG300 lg = new LG300();
//		HP400 hp = new HP400();
//		
//		//Printer < LG300
//		Printer p1 = new LG300();
//		Printer p2 = lg;
//		
//		//Printer < HP400
//		Printer p3 = new HP400();
//		Printer p4 = hp;
//		
//		
//		//Printer p = new Printer(); // 자기자신은 부를수없다.
//		Printer[] ps = new Printer[2]; //추상클래스로 껍데기, 즉 참조변수는 만들수잇다.
//		ps[0] = new LG300();
//		ps[1] = new HP400(); // 업캐스팅이라는것은 왜쓰느냐? 형제관계에 있는 클래스들을 하나의 배열안에 넣기위해서이다.
		
		//재고 확보 > 배열 사용 > 클래스 업캐스팅 + 같은 부모를 가지는 서로 다른 브랜드를 하나의 배열에서 관리가능
		
		Printer[] ps = new Printer[8];
		for (int i=0; i<ps.length; i++) {
			if(i<5) {
				ps[i] = new LG300();
			}else {
				ps[i] = new HP400();
			}
		}
		
		//** 업캐스팅(하나의 배열) + 일관된 접근성 제공(추상 메소드)
		for (int i=0; i<ps.length; i++) {
			ps[i].print();
			
			//다운캐스팅을 이용해 자신만의 특색을 이끌어냄
			// i > LG or HP ?
			//System.out.println(ps[i] instanceof HP400);
			if(ps[i] instanceof LG300) {
				//LG?
				LG300 lg = (LG300)ps[i];
				lg.call();
				//**보통 하는방식
				((LG300)ps[i]).call(); //한개의 객체만확인할때, 많은객체가 확인이 필요하다면 변수 권장
				
				
			}else if(ps[i] instanceof HP400){
				//HP?
				HP400 hp = (HP400)ps[i];
				hp.selfCheck();
			}
			
		}
		
		
		
	}

	private static void m2() {
		
		//재고확보 > 배열을 사용
		LG300[] lgs = new LG300[5];
		HP400[] hps = new HP400[3];
		
		for(int i=0; i<lgs.length; i++) {
			lgs[i] = new LG300();
		}
		
		for(int i=0; i<hps.length; i++) {
			hps[i] = new HP400();
		}
		
		//정기점검
		for (int i=0; i<lgs.length; i++) {
			lgs[i].print();
			lgs[i].call();
		}
		
		for(int i=0; i<hps.length; i++) {
			hps[i].print();
			hps[i].selfCheck();
		}
		
	}//m2

	private static void m1() {
		
		//가장 원시적인 방법
		LG300 lg1 = new LG300();
		LG300 lg2 = new LG300();
		LG300 lg3 = new LG300();
		LG300 lg4 = new LG300();
		LG300 lg5 = new LG300();
		
		HP400 hp1 = new HP400();
		HP400 hp2 = new HP400();
		HP400 hp3 = new HP400();
		
		//한달에 한번씩 정기점검
		
		lg1.print();
		lg2.print();
		lg3.print();
		lg4.print();
		lg5.print();
		
		hp1.print();
		hp2.print();
		hp3.print();
		
		
		
		
	}
	
	
}//Ex.class

//추상클래스
// - 회사나 모델에 상관없이 모든 프린터라고 불리는 기기들이 가져야할 공통 상황을 정의한 클래스
abstract class Printer {
	
	//구현멤버
	// - 회사나 모델에 상관없이 모든 프린터가 가지는 완전하게 동일한 기능
	public String model;
	public int price;
	public int ink;
	
	public void info() {
		System.out.printf("모델명 : %s, 가격 : %d원, 잉크량 : %dml\n", model, price, ink);
		
	}
	
	//추상멤버
	// - 회사나 모델에 상관없이 모든 프린터가 가지는 완전하게 동일한 기능 + 구현은 각각의 제품이 따로 구현
	// - 회사마다 구현하는 기술이 다르다.
	public abstract void print();
	
	
	
	
}



//LG 프린터 설계도
class LG300 extends Printer {

	@Override
	public void print() {
		//출력 + LG 만의 기술
		System.out.println("LG300으로 잉크젯으로 출력을 합니다.");
		
	}
	
	//LG300만이 가지는 특화된 기능
	public void call() {
		System.out.println("상담원과 연결중입니다.");
	}
	
	
}


//HP프린터 설계도
class HP400 extends Printer {

	@Override
	public void print() {
		//출력 + HP만의 독자적인 기술
		System.out.println("HP400으로 레이저 출력을 합니다.");
	}
	
	//HP만의 특화된 기술
	public void selfCheck() {
		System.out.println("자가 진행 + 수정입니다.");
	}
	
	
	
}













































