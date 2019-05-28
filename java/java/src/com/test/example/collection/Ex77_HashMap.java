package com.test.example.collection;

import java.util.HashMap;

import com.test.example.constructor.Student;

public class Ex77_HashMap {
	public static void main(String[] args) {
		
		
		//1. Collection
		// a. list
		// b. set
		//2. Map
		
		//HashMap
		
//		m1();
//		m2();
		m3();
		
		
	}

	private static void m3() {
		
		//해시맵 사용 예
		
		//학생 시험 점수 관리
		// > 이름 + 국어 + 영어 + 수학 + 사회 + 윤리
		
		String name = "홍길동";
		int kor = 100;
		int eng = 90;
		int math = 80;
		int society = 70;
		int ethics = 60;
		
		
		//계층 -> (메시지) -> 계층
		// - 전달 데이터 양이 많으면 불편(개수, 순서 등)
		
		
		//포장도구
		//1. 클래스
		// - 사용횟수 x N회
		//2. HashMap
		// - 사용횟수 x 1회
		
		Box box = new Box();
		
		box.setName(name);
		box.setKor(kor);
		box.setEng(eng);
		box.setMath(math);
		box.setSociety(society);
		box.setEthics(ethics);
		
		addScore(box);
		
		
		HashMap<String, String> hong = new HashMap<String, String>();
		
		hong.put("name", name);
		hong.put("kor", kor + "");
		hong.put("eng", eng + "");
		hong.put("math", math + "");
		hong.put("society", society + "");
		hong.put("ethics", ethics + "");
		
		addScore(hong);
		
		
	
	}//m3
	
	private static void addScore(HashMap<String, String> map) {	
		
		System.out.println(map.get("name"));
		System.out.println(map.get("kor"));
		System.out.println(map.get("eng"));
		System.out.println(map.get("math"));
		System.out.println(map.get("society"));
		System.out.println(map.get("ethics"));
		
	}//HashMap	

	private static void addScore(Box box) {
		//업무처리
		System.out.println(box.getName());
		System.out.println(box.getKor());
		System.out.println(box.getEng());
		System.out.println(box.getMath());
		System.out.println(box.getSociety());
		System.out.println(box.getEthics());
		
		
	}//class

	private static void m2() {
		
		//성적 처리
		HashMap<String, Double> score = new HashMap<String, Double>();
		score.put("국어", 100.0);
		score.put("영어", 95.0);
		score.put("수학", 82.5);
		score.put("사회", 79.3);
		score.put("도덕", 90.0);
		
		System.out.printf("총 과목수 : %s\n", score.size());
		System.out.println(score.get("국어"));
		
		score.put("수학", 83.0); // 수정
		System.out.println(score.get("수학"));
		
		//score.clear();
		
		//윤리 과목의 성적이 있니?
		System.out.println(score.containsKey("윤리"));
		//너 시험본것중 100점이 있니?
		System.out.println(score.containsValue(100.0));
		
		score.remove("국어");
		
		//삭제 요소 확인
		//1. 
		System.out.println(score.containsKey("국어"));
		//2.
		System.out.println(score.get("국어"));
		
		
	}//m2

	private static void m1() {
		
		//ArrayList
		// - 요소(방) 접근 > 첨자(index) 사용
		// - 첨자 : 정수(0포함 양의 정수)
		// - 스칼라 배열(Scalar Array)
		// - 일괄 처리가 용이 -> Loop 처리 용이
		// - 요소간의 구분이 쉽지 않다. (방번호로 구분??)
		
		//HashMap
		// - 요소(방) 접근 > 키(key) 사용  = > 이것이 방 이름이다.
		// - 키 : 문자열(****거의 이것만 사용), 숫자, 문자 등 사용
		// - 연관 배열, 사전 구조(Dictionary ***)
		// - 일괄 처리 불편 -> 되도록 안함 -> 
		// - 요소간의 구분이 쉽다.(이름으로 구분)
		// - 키는 유일해야 한다.
		// - value는 중복 가능하다.
		
		
		//HashMap map = new HashMap(); => Object 사용안함
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		//1. 요소 추가
		map.put("one", "하나"); //키(방이름), value(요소)
		map.put("two", "둘");
		map.put("three", "셋");
		map.put("one", "하나입니다."); //데이터를 넣는거이자 수정하는것을 겸하고있다. 지금이것은 수정
		
		
		//2. 요소 개수
		System.out.println(map.size());
		
		//3. 요소 읽기
		System.out.println(map.get("one"));
		
		
		// 굉장히 비권장 > 차라리 ArrayList 를 써라
		HashMap<Integer, String> map2 = new HashMap<Integer, String>();
		
		map2.put(0, "홍길동");
		map2.put(1, "아무개");
		map2.put(2, "테스트");
		
		
		
		// 용도가 너무없다. 쓸모가없는정도
		HashMap<Boolean, String> map3 = new HashMap<Boolean, String>();
		
		map3.put(true, "참");
		map3.put(false, "거짓");
		
		
		HashMap<String, Student> map4 = new HashMap<String, Student>();
		map4.put("반장", new Student());
		map4.put("부반장", new Student());
		map4.put("줄반장", new Student());
		
		System.out.println(map4.get("반장"));
		
		
		
	}
}


class Box {
	
	private String name;	
	private int kor;
	private int eng;
	private int math;
	private int society;
	private int ethics;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getSociety() {
		return society;
	}
	public void setSociety(int society) {
		this.society = society;
	}
	public int getEthics() {
		return ethics;
	}
	public void setEthics(int ethics) {
		this.ethics = ethics;
	}
	
	
}

























