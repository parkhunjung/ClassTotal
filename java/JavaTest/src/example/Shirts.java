package example;

//요구사항]] 클래스를 정의하시오.
//1. 데이터 정의(선택) : 사이즈, 색상, 가격, 종류
//2. 1의 사항을 구체화(자료형 선택 + 변수명 생성) : 사이즈(int size), 색상(String color), 가격(int price), 종류(String type)
//3. 2의 사항을 구체화(실제 들어갈 데이터를 나열) : 사이즈(90, 95, 100, 105, 110), 색상(white, black, red, yellow, blue), 가격(10000 ~ 50000), 종류(반팔, 긴팔)
//4. getter, setter 정의
// a. 사이즈 : 읽기, 쓰기
// b. 색깔 : 읽기
// c. 가격 : 쓰기
// d. 종류 : 읽기, 쓰기
// e. 추천 : 읽기

//5. 메소드 정의
// - void info()
public class Shirts {
	
	private int size;
	private String color = "black";
	private int price;
	private String type;
	
	
	
	public int getSize() {
		return size;
	}
	public void setSize(int size) throws Exception {
		if (size == 90 || size == 95 || size == 100 || size == 105 || size == 110) {
			this.size = size;
		}else {
			throw new Exception();
		}
	}
	
	
	public String getColor() {
		return color;
	}

	
	
	public void setPrice(int price) throws Exception {
		if (price >= 10000 && price <= 50000) {
		this.price = price;
		}else {
			throw new Exception();
			
		}
		
	}
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) throws Exception {
		if (type.equals("반팔") || type.equals("긴팔")) {
			this.type = type;			
		}else {
			throw new Exception();
		}
	}
	
	public String getRecommend() {
		
		//기존의 멤버 변수 활용 -> 가상 데이터
		if (this.color.equals("black") && (this.price >= 10000 && this.price <= 30000 ) && this.type.equals("반팔")) {
			return "강추";
		}else {
			return "비추";
		}
		
	}
	
	public void info() {
		System.out.println("사이즈 : " + size);
		System.out.println("색깔 : " + color);
		System.out.println("가격 : " + price);
		System.out.println("종류 : " + type);
		
		
	}
	
}