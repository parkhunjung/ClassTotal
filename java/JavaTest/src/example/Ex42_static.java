package example;

public class Ex42_static {
	public static void main(String[] args) {
		
		
		//멤버(객체,정적) 변수의 생명주기
		System.out.println(StaticItem.b);
		
		
		StaticItem item = new StaticItem();
		System.out.println(item.a);
		
		item.aaa();
		
		StaticItem.bbb();
		
		test();
	}//main

	private	static void test() {
		
		
	}
}


class StaticItem { 
	
	//1. 객체 메소드
	// a. 객체 변수 접근 O > 객체명.변수
	// b. 정적 변수 접근 O > 클래스명.변수
	// c. 객체 메소드 접근 O > 객체명.메소드()
	// d. 정적 메소드 접근 O > 클래스명.메소드()
	
	//2. 정적 메소드
	// a. 객체 변수 접근 X 
	// b. 정적 변수 접근 O > 클래스명.변수
	// c. 객체 메소드 접근 X 
	// d. 정적 메소드 접근 O > 클래스명.메소드()
	
	
	
	public int a = 10;			//객체변수
	public static int b = 20; 	// 정적변수
	
	public void aaa() { 		//객체 메소드
		
		System.out.println("객체 메소드");
//		System.out.println(a);
//		System.out.println(b);
		
		System.out.println(this.a); // static이 안붙은 애들 ,즉 객체변수만 this 가 붙는다.
		System.out.println(StaticItem.b); // static 이 붙은애들은 무조건 클래스이름을 붙인다.
		
		test();
		
	}
	
	private void test() {
		// TODO Auto-generated method stub
		
	}

	public static void bbb() { 	// 정적 메소드
		
		System.out.println("정적 메소드");
//		System.out.println(a);
//		System.out.println(b);
		
//		System.out.println(this.a); // 정적 메소드에서는 정적멤버만 접근할수 있다.
		System.out.println(StaticItem.b);
		
	
	}
	
	
	//객체 메소드
	public void ccc() {
		ddd();
		this.ddd();
		eee();
		StaticItem.eee();
	}
	
	
	public void ddd() {
		
		
	}
	
	//정적 메소드
	public static void eee() {
//		this.ccc(); // this 자체를 못쓰기에 부를수가없다
		fff();
		StaticItem.fff();
	}
	
	
	public static void fff() {
		
		
		
	}
}



















