package com.test.example.inheritance;

public class Ex54_Abstract {
	public static void main(String[] args) {
		
		
		
		
		//그림판
		// - 원, 삼각형, 사각형 등
		// - 원 클래스
		// - 너비, 높이, 이름
		// - 그리기, 지우기
		// - 삼각형 클래스
		// - 너비, 높이, 이름
		// - 그리기, 지우기
		// - 사각형 클래스
		// - 너비, 높이, 이름
		// - 그리기, 지우기
		
		Circle c1 = new Circle();
		
		c1.name = "원1";
		c1.width = 200;
		c1.height = 150;
		
		c1.draw();
		
		Triangle t1 = new Triangle();
		
		t1.name = "삼각형1";
		t1.width = 200;
		t1.height = 200;
		
		t1.draw();
		
		Rectangle r1 = new Rectangle();
		
		r1.name = "사각형1";
		r1.width = 300;
		r1.height = 300;
		
		r1.draw();
		
		c1.erase();
		t1.erase();
		r1.erase();
		
	}
}



//도형 클래스
abstract class Shape {
	
	//속성, 프로퍼티 변수
	public String name;
	public int width;
	public int height;
	
	//행동
//	public void draw() {
//		System.out.printf("너비 %d, 높이 %d 삼각형을 그립니다.\n", width, height);
//	}
	
	public abstract void draw();
	
	public abstract void erase();
	
}


//원 클래스
class Circle extends Shape {
	
	public void draw() {
		System.out.printf("너비 %d, 높이 %d 원을 그립니다.\n", width, height);
	}
	
	public void erase() {
		System.out.printf("%s 원을 지웁니다.\n", name);
	}
	
}

//삼각형 클래스
class Triangle extends Shape {
	
	public void draw() {
		System.out.printf("너비 %d, 높이 %d 삼각형을 그립니다.\n", width, height);
	}
	
	public void erase() {
		System.out.printf("%s 삼각형을 지웁니다.\n", name);
	}
	
}

//사각형 클래스
class Rectangle extends Shape {
	
	public void draw() {
		System.out.printf("너비 %d, 높이 %d 사각형을 그립니다.\n", width, height);
	}
	
	public void erase() {
		System.out.printf("%s 사각형을 지웁니다.\n", name);
	}
	
}

























