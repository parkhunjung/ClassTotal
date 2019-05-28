package com.test.example.constructor;

public class Ex46_Constructor {
	public static void main(String[] args) {
		
		
		//생성자, Constructor
		// - 특수한 목적을 가진 메소드
		// - 객체의 상태를 초기화하는 목적으로만 사용되는 전용 메소드
		
		Person p1 = new Person();
		p1.setName("홍길동");	//객체를 초기화
		p1.setAge(20);			//객체를 초기화
		
//		p1.setName("아무개");	//객체의 상태를 변경
//		p1.setAge(25);			//객체의 상태를 변경
		
		System.out.println(p1.getName());
		System.out.println(p1.getAge());
		
		Person p2 = new Person();
		System.out.println(p2.getName());
		System.out.println(p2.getAge());
		
		Person p3 = new Person("하하하");
		System.out.println(p3.getName());
		System.out.println(p3.getAge());
		
		Person p4 = new Person("호호호", 25);
		System.out.println(p4.getName());
		System.out.println(p4.getAge());
		
		
		Mouse m1  = new Mouse("삼성마우스", 3);
		
		System.out.println(m1.getModel());
		System.out.println(m1.getButtons());
		
		System.out.println(Mouse.getCount());
		
	}//main
	
	
	
	
}


class Person {
	
	//멤버 변수
	private String name;
	private int age;
	
	//생성자 선언
	//1. 반환형 존재x(void x)
	//2. 메소드명이 반드시 클래스명이다.
	
	//생성자의 구현 내용
	// **** 반드시 객체를 초기화하는 작업만 구현
	// **** 멤버 변수의 값을 넣는 작업
	public Person() {
		//System.out.println("생성자 호출");
		//this.name = "익명";
		//this.age = 1;
		this("익명", 1);
		
	}
	
	public Person(String name) {
//		this.name = name;
//		this.age = 0;
		this(name, 0);
	}
	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	
	
	}
	
	public void aaa() {
		this.age = 0;	
		aaa(0);
	
	}
	
	
	public void aaa(int a) {
		this.age = a;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	
	
	
	
}


class Mouse {
	
	private String model;
	private int buttons;
	private static int count;

	public Mouse() {
		this("", 0);
	}
	
	public Mouse(String model, int buttons) {	
		this.model = model;
		this.buttons = buttons;
		Mouse.count++; //마우스생성할때마다 +1이됨
		
	}
	
	
	public String getModel(){
		return model;
	}
	
	public int getButtons() {
		return buttons;
	}

	public static int getCount() {
		return count;
	}

	public static void setCount(int count) {
		Mouse.count = count;
	}
}



















