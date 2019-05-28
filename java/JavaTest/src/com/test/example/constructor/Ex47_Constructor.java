package com.test.example.constructor;

public class Ex47_Constructor {
	public static void main(String[] args) {
		
		
		int[] ns = new int[3]; // 모든방이 0으로...> 참조형 > 생성자 때문에
		
		Member m1 = new Member();
		m1.check();
	
//		Member m2 = new Member(name, id, level, info);
		
		Member m2 = new Member("아무개", "aaa", "1등급", "반갑습니다.");
		
		StaticTest s1 = new StaticTest();
		System.out.println(s1.getA());
		System.out.println(StaticTest.getB()); //공용데이터의 초기화를 왜 s1에게 맡겨?
		
		
		
	}//main
	
	
	
}


//****** 프로젝트 반드시 할것 -> 산출물 -> 제출
//****** 팀작업
/**
 * 
 * @author 박헌정
 *
 * 회원 클래스입니다.
 */
class Member {
	
	/**
	 * name : 회원의 이름
	 * 
	 */
	private String name;	//이름
	/**
	 * id : 회원의 아이디
	 */
	private String id;		//계정명
	private String level;	//등급
	private String info;	//자기소개
	
	/**
	 * 기본 생성자
	 */
	public Member() {
		
		this.name = "미정";
		this.id = "미정";
		this.level = "0";
		this.info = "미작성";
		
	}
	
	/**
	 * 추가 생성자
	 * @param name 		회원명
	 * @param id 		아이디
	 * @param level		등급
	 * @param info 		자기소개
	 */
	public Member(String name, String id, String level, String info) {
		this.name = name;
		this.id = id;
		this.level = level;
		this.info = info;
		
		
	}
	
	public Member(String name, String id) {
		this.name = name;
		this.id = id;
		this.level = "0";
		this.info = "미작성";
		
		
	}
	
	
	
	
	public void check() {
		
		System.out.printf("이름 : %s, 아이디 : %s, 등급 : %s, 자기소개 : %s\n"
							, this.name
							, this.id
							, this.level
							, this.info);
				
	}//check
	
	
}//member



class StaticTest {
	
	//멤버 변수 선언시 초기화는 안함 > 생성자에게 맡김.
	private int a;
	private static int b;
	
	//객체 생성자 > 각자 멤버만 초기화
	public StaticTest() {
		
		this.a = 100;
//		StaticTest.b = 200;
	}
	
	//정적 생성자 > 정적 멤버만 초기화
	static {
		StaticTest.b = 200;
	}
	
	
	
	public int getA() {
		return a;
	}

	public void setA(int a) {
		this.a = a;
	}

	public static int getB() {
		return b;
	}

	public static void setB(int b) {
		StaticTest.b = b;
	}
	
	
	
	
}

















