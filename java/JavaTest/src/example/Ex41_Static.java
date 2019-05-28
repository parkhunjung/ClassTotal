package example;

public class Ex41_Static {
	public static void main(String[] args) {
		
		
		//static 키워드
		// - 클래스 멤버에 붙이는 키워드
		//1. 멤버 변수
		//2. 멤버 메소드
		
		//int a; //지역
		
		//변수의 종류
		//1. 멤버 변수
		// - 객체 멤버 변수 (여지껏 선언한 변수(static이 붙지 않은))
		// - 정적 멤버 변수 (static 키워드가 붙은 변수들), static 변수, 클래스 변수
		
		
		//2. 지역 변수
		// - 메소드 내에서 선언
		// - 제어문 내에서 선언
		// - 매개변수
		
		Student2.setSchool("역삼 중학교"); // 정적 변수는 먼저 만든다.
		
		Student2 s1 = new Student2();
		
		s1.setName("홍길동");
		s1.setAge(15);
		//s1.setSchool("역삼 중학교");
		//Student2.setSchool("역삼 중학교");
		
		
		Student2 s2 = new Student2();
		
		s2.setName("아무개");
		s2.setAge(14);
		//s2.setSchool("역삼 중학교");
		//Student2.setSchool("역삼 중학교");
		
		
		Student2 s3 = new Student2();
		
		s3.setName("하하하");
		s3.setAge(15);
		//s3.setSchool("역삼 중학교");
		//Student2.setSchool("역삼 중학교");
		
		
		System.out.println(s1.getName());
		System.out.println(s1.getAge());
		//System.out.println(s1.getSchool());
		System.out.println(Student2.getSchool());
		
		
		//객체 멤버의 행동 vs 정적 멤버의 행동
		s1.hello();
		s2.hello();
		s3.hello();
		
		Student2.hi();
		
		
	}//main



}

//학생 클래스
// - 역삼 중학교(****) <이학교 학생만 넣을꺼임>
class Student2 {
	
	private String name;
	private int age;
	//private String school;
	private static String school; // heap 영역이 아닌 static 영역에 따로 생긴다.
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	
	public static String getSchool() {
		return school;
	}
	public static void setSchool(String school) {
		Student2.school = school;
	}
	
	
	
//	public String getSchool() {
//		return school;
//	}
//	public void setSchool(String school) {
//		this.school = school;
//	}
	
	//객체 메소드
	public void hello() {
		
		System.out.printf("안녕하세요. 저는 %s 입니다.\n", this.name);
//		System.out.println("안녕하세요.");
	}
	//정적 메소드
	public static void hi() {
		
//		System.out.printf("안녕하세요. 저는 %s 입니다.\n", s.name);
		System.out.println("안녕하세요.");
		
		
	}
	
}


























