package com.test.example.generic;

public class Ex69_Generic {
	public static void main(String[] args) {
		
		//제네릭 클래스, Generic class
		
		
		//제네릭 클래스
		
		//Item i1 = new Item();
		Item<String> i1 = new Item<String>();  
		i1.a = 10;
		i1.b = 20;
		i1.c = "홍길동";
		i1.d = "문자열";
		
		Item<Integer> i2 = new Item<Integer>();
		i2.c = 10;
		i2.d = 20;
		
		Mouse<Double> m1 = new Mouse<Double>();
		m1.b = 3.14;
		
		Keyboard<String, Integer> k1 = new Keyboard<String, Integer>();
		k1.a = "문자열";
		k1.b = 200;
		
		Desktop<String> d1 = new Desktop<String>();
		
//		MyUtil2 util = new MyUtil2();
//		util.swap(10, 20);
		
		MyUtil2.swap(10, 20);
		MyUtil2.swap("홍길동", "아무개");
		
		Myutil3<Integer> u1 = new Myutil3<Integer>();
		u1.swap(30, 40);
		
		Myutil3<String> u2 = new Myutil3<String>();
		u2.swap("홍길동", "아무개");
		
	}
	
}


//제네릭 클래스 선언
// - T : 타입 변수(자료형 자체를 저장하는 변수)
// - int a = 10
// - T = String
class Item<T> {
	//멤버구현
	public int a;
	public int b;
	
	//타입변수를 사용해서 멤버 변수의 자료형을 정할 수 있다.
	public T c;
	public Object d;
	
}

class Mouse<T> {
	public int a;
	public T b;
	public T c;
	public T d;
	
	
	
}

class Keyboard<T, U> {
	public T a;
	public U b;
}

class Desktop<T> {
	
	public T a;
	
	public void test(T a) {
		//T b; // 지역 변수에는 타입 변수 적용을 잘 안한다.(너무 깊어서 불편)
	}
	
	public T getTest() {
		return a;
	}
	
}

class MyUtil2 {
	
//	public static void swap(int a, int b) {
//		System.out.printf("a : %s, b : %s\n", a, b);
//		
//		int temp;
//		temp = a;
//		a = b;
//		b = temp;
//		
//		System.out.printf("a : %s, b : %s\n", a, b);
//		
//	}
	
	public static void swap(Object a, Object b) {
		System.out.printf("a : %s, b : %s\n", a, b);
		
		Object temp;
		temp = a;
		a = b;
		b = temp;
		
		System.out.printf("a : %s, b : %s\n", a, b);
		
	}

	
}

class Myutil3<T> {
	
	public void swap(T a, T b) {
		System.out.printf("a : %s, b : %s\n", a, b);
		
		T temp;
		temp = a;
		a = b;
		b = temp;
		
		System.out.printf("a : %s, b : %s\n", a, b);
		
	}

	
}























