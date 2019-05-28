package example;

public class Ex35_Access {
	public static void main(String[] args) {
		
		
		//접근 지정자(제어자) Access Modifier
		// - public, private // protected default...
		// - 멤버 메소드나 멤버 변수, 클래스 앞에 붙는다.
		// - 특정 영역에서 외부로부터 멤버들을 접근할 수 있는 권한 제어
		
		
		//1. public => 공개적인 메소드
		
		//2. private => 철저히 개인 메소드, 소유주가 아닌한에는 접근을 할 수가 없다.
		
		//Item item = new Item();
		
//		System.out.println(item.a);
//		System.out.println(item.b); //The field Item.b is not visible
		
		Item2 item = new Item2();
		item.ccc();
		
		
		Member hong = new Member();
//		hong.name = "홍길동안녕하세요하하하홍길동안녕하세요하하하홍길동안녕하세요하하하";
//		hong.id = "hong";
//		hong.age = 200000000;
//		
//		System.out.println(hong.name);
//		System.out.println(hong.id);
//		System.out.println(hong.age);
		
		hong.aaa("홍길동"); //private String name 에게 전달
		hong.setId("hong");
		hong.setAge(20);
		
		hong.bbb();
		System.out.println(hong.getId());
		System.out.println(hong.getAge());
		
		
		Keyboard keyboard = new Keyboard();
		
		//type : 읽기, 쓰기
		//setter + getter : 프로퍼티(property - 특성) + 속성(Attribute)
		keyboard.setType("기계식");
		System.out.println(keyboard.getType());
		
		//읽기 전용 프로퍼티
		System.out.println(keyboard.getKeys());
		//keyboard.setkeys(88)
		
		//쓰기 전용 프로퍼티
		keyboard.setColor("black");
		//System.out.println(getColor);
		
		//가상 프로퍼티, 계산된 프로퍼티
		System.out.println(keyboard.getGrade());
		
		Baby baby = new Baby();
		baby.setName("홍길동");
		baby.setBirthday(2018);
		System.out.println(baby.getAge());
		baby.setAge(2);
		
		
		
	}//main
}

class Baby {
	
	private String name;
	private int birthday;
//	private int age;
	public void setAge(int age) {
//		this.age = age
		this.birthday = 2019 - age;
	}
	
	public int getAge() {
		return 2019 - birthday;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBirthday() {
		return birthday;
	}
	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}
	
	
	
	
	
	
	
	
	
}



class Item2 {
	
	//접근 지정자를 생략하면 -> default
	public int a = 10;
	private int b = 20; //***
	
	public void ccc() {
		System.out.println(a);
		System.out.println(b);
	}
	
	public void aaa() {
		System.out.println("aaa()");
	}
	private void bbb() {
		System.out.println("bbb()");
	}
}

//카페 회원
class Member {
	
	//고민? public? private? 
	//****** 무조건(되도록) 멤버 변수는 private 으로 선언한다.
//	public String name;
//	public String id;
//	public int age;
	
	
	private String name;
	private String id;
	private int age;
	
	public void aaa(String aname) {
		this.name = aname;
	}
	
	//setXXX()
	// - private 멤버 접근을 대신 해주는 메소드
	// - setter
	// - 인터페이스 역할
	public void setId(String id) {
		//this : 객체 지정 연산자, 객체 접근 연산자
		this.id = id;
	}
	public void setAge(int age) {
		if (age > 0 && age <= 150) {
			this.age = age;
		}
	}
	
	
	public void bbb() {
		System.out.println(name);
	}
	
	
	//getXXX()
	// - getter
	// - private 멤버의 값을 반환하는 역할
	public String getId() {
		return this.id;
	}
	public int getAge() {
		return this.age;
	}
	
}

class Keyboard {
	
	//1. 멤버 변수는 private 선언
	private String type;
	private int keys = 108;
	private String color;
	private int weight;
	
	//2. setter & getter 선언
	public void setType(String type) {
		if (type.equals("기계식") 
			|| type.equals("멤브레인") 
			|| type.equals("펜타그래프")){
			
		}else {
			System.out.println("취급하지 않는 타입입니다.");
		}
		this.type = type; 
	}
	
	public String getType() {
		return this.type;
	}

	public int getKeys() {
		return keys;
	}

//	public void setKeys(int keys) {
//		this.keys = keys;
//	}

//	public String getColor() {
//		return color;
//	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}
	
	
	public String getGrade() {
		if (this.color.equals("black") && this.keys == 108 && this.type.equals("기계식")) {
			return "A";
		}else {
			return "D";
		}
	}
	
	
	
}




























