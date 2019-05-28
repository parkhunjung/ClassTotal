package example;

public class Ex34_class {
	public static void main(String[] args) {
		
		
		/*
		 
		 클래스, Class
		 
		 1.절차 지향 프로그래밍
		 
		 2.객체 지향 프로그래밍
		 
		 3.함수형 프로그래밍
		 
		  
		 객체, Object(개체)
		 - 데이터 + 행동 = 집합
		 - 독자성, Identity
		 - 상태, State
		 - 행동, Behavior
		 - 캡슐화, Encapsulation
		 - 정보 은닉화
		 - 인터페이스
		 
		 
		 클래스, Class
		 - 객체를 생성하는 설계도
		 
		 객체, Object
		 - 클래스를 가지고 생성한 실체
		 
		 인스턴스, Instance
		 - 객체화된 메모리상의 객체
		 
		 
		 자바에서 클래스 만들기
		 
		 class 클래스명 {
		 
		 	//클래스 멤버
		 	1. 멤버 변수
		 	2. 멤버 메소드
		 
		 }
		 
		 
		 
		 */
		
		
		//요구사항] 지도 -> 우리집의 좌표 + 저장 + 불러오기
		
		//Case 1.
		
		//우리집
		int x = 100;
		int y = 200;
		
		//마트
		int x2 = 300;
		int y2 = 400;
		
		//Case 2.
		// - 배열은 되도록 같은 성격의 데이터만 넣는다.
		int[] a1 = new int[] {100, 200};
		int[] a2 = {300, 400};
		
		int[] kors = {100, 90, 80};
		
		System.out.println(kors[0]); //국어점수
		System.out.println(kors[1]); //국어점수
		System.out.println(kors[2]); //국어점수
		
		System.out.println(a1[0]); //x좌표
		System.out.println(a1[1]); //y좌표
		
		//Case 3.
		// - 클래스를 사용해서 좌표 저장
		
		//클래스 사용하기 -> 클래스를 통해 객체를 생성하기
		//클래스명 객체명 = new 클래스명();
		Point p1 = new Point();
		
		p1.x = 100;
		p1.y = 200;
		
		Point p2 = new Point();
		p2.x = 300;
		p2.y = 400;
		
		
		
		//모니터 크기
		//s1 : 객체,인스턴스, 변수, 객체변수, 인스턴스변수 , 참조변수, Size 변수
		Size s1 = new Size();
		s1.name = "모니터";
		s1.width = 1900;
		s1.height = 1000;
		
		System.out.println(s1.name);
		System.out.println(s1.width);
		System.out.println(s1.height);
		
		// 학생 정보
		Student hong = new Student();
		hong.name = "홍길동";
		hong.age = 20;
		hong.address = "서울시";
		hong.height = 180;
		hong.weight = 70;
		
//		MyMath m1 = new MyMath();
//		m1.add(10,  20);
//		m1.substract(100,  50);
		
		MyMath.add(30, 20);
		MyMath.substract(20, 10);
		
		SmartPhone sp1 = new SmartPhone();
		sp1.model = "아이폰";
		sp1.owner = "길동이";
		sp1.number = "010-6511-7237";
		
		sp1.call();
		sp1.info();
		
		SmartPhone sp2 = new SmartPhone();
		sp2.model = "갤럭시";
		sp2.owner = "아무개";
		sp2.number = "010-4545-5432";
		
		sp2.call();
		sp2.info();
		
		
	}// main

}//Ex


//클래스 선언하기
class Point {
	
	//클래스 멤버 변수
	public int x;
	public int y;
	
}

//클래스를 만드는 목적? > 클래스는 어떤 용도로 사용?
//1. 데이터의 집합 -> 변수의 집합// *****
//2. 행동의 집합 -> 메소드의 집합
//3. 데이터 + 행동의 집합 -> 변수 + 메소드의 집합 // ************

//크기 클래스
class Size {
	public String name;
	public int width;
	public int height;
	
}

//학생 클래스

//class Student {
//	
//	public String name;
//	public int age;
//	public String address;
//	public int height;
//	public int weight;
//	
//	
//	
//}

//2. 행동의 집합

class MyMath {
	
	//멤버 메소드
	public static void add(int a, int b) {
		System.out.println(a + b);
	}
	
	public static void substract(int a, int b) {
		System.out.println(a - b);
	}
	
}

//3. 데이터 + 행동
class SmartPhone {
	
	//멤버 변수
	public String model;
	public String owner;
	public String number;
	
	//멤버 메소드 : 항상 객체의 메소드는 자신의 정보를 바탕으로 행동한다.( ************** )
	public void call() {
		//System.out.println("전화 걸기");
		System.out.println(owner + "전화기로 전화를 겁니다.");
	
	}
	public void info() {
		System.out.println("현재 기종 : " + model);
		System.out.println("현재 번호 : " + number);
	}
	
}


























