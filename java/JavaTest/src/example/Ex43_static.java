package example;

public class Ex43_static {
	public static void main(String[] args) {
		
		//업무] 마우스 생산 공장 > 현재 마우스를 몇개 만들었는지?
//		m1();
//		m2();
//		m3();
		m4();
		
	}//main

	private static void m4() {
		
		//값형 변수
		int a = 0;
		
		//참조형 변수 ( null 로 초기화가 가능하다.)
		String b = "";
		Mouse m = null;
		
		
		//지역 변수는 초기화를 하지 않으면 사용이 불가능 하다.
//		System.out.println(a);
//		System.out.println(b);
		System.out.println(m);
		
		
	}

	private static void m3() {
		
		Mouse m1 = new Mouse();
		Mouse.setTcount(Mouse.getTcount() + 1);
		
		Mouse m2 = new Mouse();
		Mouse.setTcount(Mouse.getTcount() + 1);
		
		Mouse m3 = new Mouse();
		Mouse.setTcount(Mouse.getTcount() + 1);
		
		System.out.println(Mouse.getTcount());
		
	}

	private static void m2() {
		
		
		Mouse m1 = new Mouse();
		m1.setCount(m1.getCount() + 1); // count += 1;
		
		Mouse m2 = new Mouse();
		m1.setCount(m1.getCount() + 1);
		
		Mouse m3 = new Mouse();
		m1.setCount(m1.getCount() + 1);
				
		System.out.println(m1.getCount());
		
		
	}

	private static void m1() {
		
		//최댓값
		
		//문제점
		//1. 마우스 생산 <-> (느슨한 결합)카운트
		//2. 변수의 성질이 문법적인 수준에서 보장받지 못한다.
		int count = 0; //마우스 개수 누적 변수
		
		Mouse m1 = new Mouse();
		count++;
		
		Mouse m2 = new Mouse();
		count++;
		
		Mouse m3 = new Mouse();
		count++;
		
		System.out.println("마우스 개수 : "+ count); // count 가 정말 마우스 개수가 맞나?
		
		
	}
	
	
	
}


//마우스 클래스
class Mouse {
	
	private String model;
	private int price;
	private int count; //생산 개수 누적 변수 역할
	private static int tcount; //생산 개수 누적 변수 역할(공통 데이터)
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	public static int getTcount() {
		return tcount;
	}
	public static void setTcount(int tcount) {
		Mouse.tcount = tcount;
	}
	
}



















