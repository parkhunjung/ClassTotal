package com.test.example.inheritance;

public class Ex56_Inheritance {
	public static void main(String[] args) {
		
		
		//super, this 키워드
		
		SuperClass p = new SuperClass();
		
		//p.a(X)
		//p.b(O)
		
		SubClass c = new SubClass();
		
		
		
		
	}//main
	
}


class SuperClass {
	private int a;
	public int b;
	
	public void check() {
		System.out.println(a);
		System.out.println(b);
		
	}
	
}



class SubClass extends SuperClass {
	
	private int c;
	public int d;
	
	public void check() {
		//System.out.println(a); //부모.private 이 안됨 private 자식도쓸수없다.
		System.out.println(b); //부모.public 됨
		System.out.println(c); //자신.private 됨
		System.out.println(d); //자신.public 됨
		
		//자식 클래스에서
		//1. super : 부모 객체 
		//2. this : 객체 자신
		
		super.check();
		
	}
	
	@Override
	public String toString() {
	
		return super.toString();
	}
	
}

















