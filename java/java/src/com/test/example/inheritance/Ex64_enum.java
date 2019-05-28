package com.test.example.inheritance;

public class Ex64_enum {
	public static void main(String[] args) {
		
		
		//열거형, Enumeration
		// - 클래스의 일종(= 자료형)
		// - 열거값을 가지는 자료형(제시된 값 중에 하나를 선택해야 하는 자료형)
		
		//상황] 의류 쇼핑몰 > 고객 > 옷 선택 > 색상
		//색상 : red, yellow, blue
		
		//선택 입력
		
		//이 방식은 피할 것 : 주관식 > 유효성 검사
		//String color = "red"; BufferedReader
		//System.out.println(color);
		
		//권장하는 방식 : 객관식 > 유효성 검사
		//1. red, 2. blue, 3. yellow
		String color = "1";
		
		Color c1 = Color.RED;
		//Color c2 = Color.BLACK;
		
		직급 hong = 직급.부장;
		성별 gender = 성별.남자;
		
		if (hong == 직급.부장) {
			
		}
		
		
		
	}//main
	
}//Ex


//열거형 선언
//enum Color {
//	//멤버 (변수만 - 자료형 없다 + 값을 대입 불가능)
//	red,
//	blue,
//	yellow
//	
//	
//	
//	
//}

//enum Color { red, blue, yellow }
enum Color { RED, BLUE, YELLOW }

enum 직급 { 부장, 과장, 대리, 사원 }

enum 성별 { 남자, 여자 }























