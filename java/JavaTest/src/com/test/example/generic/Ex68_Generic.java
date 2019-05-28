package com.test.example.generic;

public class Ex68_Generic {
	public static void main(String[] args) {
		
		
		//제네릭, Generic
		//1. 제네릭 클래스(v)
		//2. 제네릭 메소드
		
		WrapperInt n1 = new WrapperInt(10);
		System.out.println(n1.getData() * 2);
		System.out.println(n1);
		
		WrapperObject n2 = new WrapperObject(20);
		System.out.println((int)n2.getData() * 2);
		System.out.println(n2);
		
		Wrapper<Integer> n3 = new Wrapper<Integer>(30);
		System.out.println(n3.getData()* 2);
		System.out.println(n3);
		
		
		WrapperString s1 = new WrapperString("홍길동");
		System.out.println(s1.getData().substring(0,1));
		System.out.println(s1);
		
		WrapperObject s2 = new WrapperObject("아무개");
		System.out.println(((String)s2.getData()).substring(0,1));
		System.out.println(s2);
		
		Wrapper<String> s3 = new Wrapper<String>("하하하");
		System.out.println(s3.getData());
		System.out.println(s3);
		
		
		WrapperBoolean b1 = new WrapperBoolean(true);
		System.out.println(b1.getData() ? "참" : "거짓");
		System.out.println(b1);
		
		WrapperObject b2 = new WrapperObject(false);
		System.out.println((boolean)b2.getData() ? "참" : "거짓");
		System.out.println(b2);
		
		
		
		
		
		
	}//main
	
}//Ex

//요구사항] 
// - int - Integer Class
//1. int 값 1개를 중심으로 그 값을 조작(제어)하는 클래스
//2. String 값 1개를 중심으로 그 값을 조작(제어)하는 클래스
//3. Boolean 값 1개를 중심으로 그 값을 조작(제어)하는 클래스 
//4. 


class WrapperInt {
	
	private int data; // 중심데이터
	
	public WrapperInt(int data) {
		this.data = data;
	}

	public int getData() {
		return data;
	}

	public void setData(int data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		//숫자 -> 문자열
		//return String.valueOf(this.data); // 10 -> "10"
		return this.data + "" ;
	}
	
}

class WrapperString {
	
	private String data; 
	
	public WrapperString(String data) {
		this.data = data;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		
		return this.data + "" ;
	}
	
}


class WrapperBoolean {
	
	private Boolean data; 
	
	public WrapperBoolean(Boolean data) {
		this.data = data;
	}

	public Boolean getData() {
		return data;
	}

	public void setData(Boolean data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		
		return this.data + "" ;
	}
	
}



class WrapperObject {
	
	private Object data; //모든 타입을 대입할 수 있는 변수 
	
	public WrapperObject(Object data) {
		this.data = data;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		
		return this.data + "" ;
	}
	
}

class Wrapper<T> {
	
	private T data;

	
	public Wrapper(T data) {
		this.data = data;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		
		return this.data + "" ;
	}
	
	
	
	
}















