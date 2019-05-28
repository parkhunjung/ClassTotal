package com.test.example.collection;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

public class Ex85_Collection {
	public static void main(String[] args) {
		
		//Set 계열
		// - 순서가 없는 배열
		// - 첨자가 없음
		// - 중복값을 가질 수 없다.
		
		//HashMap
		// - Hash 알고리즘을 사용한 Map 인터페이스 구현 배열
		
		//HashSet
		// - Hash 알고리즘을 사용한 Set 인터페이스 구현 배열
		
		
//		m1();
		m2();
		
		
	}

	private static void m2() {
		
		//단일값 집합(숫자, 문자, 문자열, 불리언)
		Set<String> set1 = new HashSet<String>();
		
		set1.add("홍길동");
		set1.add("아무개");
		set1.add("홍길동"); // 캔슬
		
		System.out.println(set1);
		
		//객체 집합
		Person[] list = new Person[10]; //같은 사람이 있어도 된다.
		Set<Person> set2 = new HashSet<Person>(); //같은 사람을 넣지않겠다.
		
		set2.add(new Person("홍길동", 20));
		set2.add(new Person("아무개", 23));
		set2.add(new Person("하하하", 25));
		set2.add(new Person("홍길동", 20)); //참조형은 막질못한다.(복합값은 중복을 막지못함) > 직접구현을 하면막을수있음
		
		System.out.println(set2);
		
		
		Person p1 = new Person("홍길동", 20);
		Person p2 = new Person("아무개", 25);
		Person p3 = new Person("홍길동", 30);
		Person p4 = new Person("하하하", 20);
		Person p5 = new Person("홍길동", 20);
		
		System.out.println(p1.equals(p2)); //전혀 다른사람
		System.out.println(p1.equals(p3)); //이름은 같은데 나이가 다른사람
		System.out.println(p1.equals(p4)); //나이는 같은데 이름이 다른사람
		System.out.println(p1.equals(p5)); //이름도같고 나이도같은사람
		
		System.out.println(p1.hashCode());
		System.out.println(p2.hashCode());
		System.out.println(p3.hashCode());
		System.out.println(p4.hashCode());
		System.out.println(p5.hashCode());
		
		
	}//m2

	private static void m1() {
		
		//** 인터페이스를 구현한 객체는 되도록 인터페이스 변수에 담아서 사용
//		ArrayList<String> list = new ArrayList<String>();
		List<String> list = new ArrayList<String>();
//		List<String> list2 = new LinkedList<String>();
//		List<String> list3 = new Stack<String>();
		
		
		
//		HashSet<String> set = new HashSet<String>();
		Set<String> set = new HashSet<String>();
		
		//요소 추가
		set.add("빨강");
		set.add("파랑");
		set.add("노랑");
		set.add("빨강"); // ??
		System.out.println(set.add("빨강"));
		System.out.println(set.add("검정"));
		
		//요소 개수
		System.out.println(set.size());
		
		System.out.println(set);
		Random rnd = new Random();
		
		Set<Integer> lotto = new HashSet<Integer>();
		
		while(lotto.size() < 6) {
			lotto.add(rnd.nextInt(45)+1);
			System.out.println("로또");
		}
		
		System.out.println(lotto);
		
		//정렬 - 방의 순서가 없어서 정렬이 불가능
		//Set -> (변화) -> List
		
		List<Integer> lotto2 = new ArrayList<Integer>(lotto);
		
		Collections.sort(lotto2);
		
		System.out.println(lotto2); //Set을 List에 넣어서 정렬을 해냈음
		
		
		
	}//m1
	
}


class Person {
	
	private String name;
	private int age;
	
	//생성자
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + "]";
	}
	
	
	//참조 변수의 비교는 주소값 비교 > 해시코드값 비교 > 재정의 가능(개발자가 의도하는 비교)
	//1. Object.HashCode() 재정의
	//2. Object.equals() 재정의
	
	@Override
	public int hashCode() {
		
		//p1 -> 홍길동20
		//p3 -> 홍길동30
		//p5 -> 홍길동20
		// p1 과 p5 는 같은해시코드를갖게된다
		
		return (this.name + this.age).hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		
		Person p = (Person)obj;
		
		return this.hashCode() == p.hashCode();
	}
	
}






























