package com.test.example.collection;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Vector;

public class Ex81_Collection {
	public static void main(String[] args) {
		
		
//		m1();
//		m2();
		m3();
		
	}

	private static void m3() {
		
		//순수 배열 정렬
		// - 숫자 : 크기 비교
		// - 문자 : 크기 비교(문자 코드값)
		// - 날짜 : 과거-미래(크기)
		
		//1. 오름 차순
		//2. 내림 차순
		
		/*
		
		정렬 : 버블 정렬 + 스왑
		
		원본 : 		{5, 4, 3, 2, 1}
		
		step1 : 	{5, 4, 3, 2, 1}
		step1 : 	{4, 5, 3, 2, 1}
		step1 : 	{4, 3, 5, 2, 1}
		step1 : 	{4, 3, 2, 5, 1}
		step1 : 	{4, 3, 2, 1, 5} //가장  큰 숫자가 마지막 방에
		
		step2 : 	{4, 3, 2, 1, 5}
		step2 : 	{3, 4, 2, 1, 5}
		step2 : 	{3, 2, 4, 1, 5}
		step2 : 	{3, 2, 1, 4, 5} //두번째 큰 숫자가 마지막 두번째 방에
		
		step3 : 	{3, 2, 1, 4, 5}
		step3 : 	{2, 3, 1, 4, 5}
		step3 : 	{2, 1, 3, 4, 5}
		
		step4 : 	{2, 1, 3, 4, 5}
		step4 : 	{1, 2, 3, 4, 5}
		
		step5 : 	{1, 2, 3, 4, 5}
		
		
		*/
		
		
		int[] nums = {3, 5, 4, 1, 2};
		
		for(int i=0; i<nums.length; i++) {
			//step
			System.out.println("step : " + (i+1));
			
			for(int j=0; j<nums.length-1-i; j++) {
				System.out.println("sub : " + (j+1));
				
				//스왑 비교
				if(nums[j] < nums[j+1]) {
					int temp = nums[j];
					nums[j] = nums[j+1];
					nums[j+1] = temp;
				}
				System.out.println(Arrays.toString(nums));
				
			}
		}//for
		
		System.out.println(Arrays.toString(nums));
		
		
		//상품 목록
		Product[] list = new Product[5];
		
		list[0] = new Product("마우스", 10000, "컴퓨터");
		list[1] = new Product("키보드", 30000, "컴퓨터");
		list[2] = new Product("모니터", 100000, "컴퓨터");
		list[3] = new Product("데스크탑", 1000000, "컴퓨터");
		list[4] = new Product("노트북", 600000, "컴퓨터");
		
		System.out.println(Arrays.toString(list));
		
		//가격이 비싼 순서대로 정렬
		for(int i=0; i<list.length-1; i++) {
			for(int j=0; j<list.length-1-i; j++) {
				
				//비교 > 스왑
				if(list[j].getPrice() < list[j+1].getPrice()) {
					Product temp = list[j];
					list[j] = list[j+1];
					list[j+1] = temp;
				}
			}
		}
		
		System.out.println(Arrays.toString(list));
		
		
		
		
	}

	private static void m2() {
		
		
		//컬렉션& 순수배열
		
		ArrayList<String> names = new ArrayList<String>();
		
		names.add("홍길동");
		names.add("아무개");
		names.add("하하하");
		
		int[] nums = {100, 200, 300, 400, 500};
		
		//내가 원하는 기능?? 
		//1. 객체.멤버 를 찾기시작한다. > 원하는걸 못찾게된다면? -> 해당 데이터를 중심으로 기능함
		//2. 클래스명. 멤버가 뭐가나오는지 확인한다. -> 타입과 관련된 공통(범용) 기능
		//3. 다른 클래스 -> 유틸 클래스 제공
		
		
		//덤프(dump)
		System.out.println(names); // 컬렉션은 toString()오버라이드가 되어 있다.
		System.out.println(Arrays.toString(nums)); //********** 
		
		//배열 채우기
		nums = new int[100];
		
		//Arrays.fill(nums, 100); //모든 방을 100으로 채워라
		Arrays.fill(nums, 5, 25, 50); //범위 지정 넘스의 방의 5~25의 방을 50으로 채워라
		
		
		System.out.println(Arrays.toString(nums));
		
		
		int[] copy = nums.clone(); //깊은복사
		
		System.out.println(nums[0]);
		System.out.println(copy[0]);
		
		copy[0] = 100;
		
		System.out.println(nums[0]);
		System.out.println(copy[0]);
		
		
		nums = new int[] {100,200,300,400,500};
		
		//원본배열 : 0~ 지정된 길이까지 복사
		copy = Arrays.copyOf(nums, nums.length);
		System.out.println(Arrays.toString(copy));
		
		copy = Arrays.copyOf(nums, 3);
		System.out.println(Arrays.toString(copy));
		
		copy = Arrays.copyOfRange(nums, 2, 4);
		System.out.println(Arrays.toString(copy));
		
		
		//비교(*******)
		// - 배열(컬렉션)의 비교
		
		int[] nums1 = {100, 200, 300};
		int[] nums2 = nums1;			//얕은복사
		int[] nums3 = nums1.clone();	//깊은복사
		
		//얕은 비교
		System.out.println();
		System.out.println(nums1 == nums2);
		System.out.println(nums1 == nums3);
		System.out.println();
		
		
		//깊은 비교
		System.out.println(Arrays.equals(nums1, nums2));
		System.out.println(Arrays.equals(nums1, nums3));
		System.out.println();
		
		
		String[][] names1 = {{"홍길동", "아무개"}, {"호호호", "후후후"}};
		String[][] names2 = {{"홍길동", "아무개"}, {"호호호", "후후후"}};
		
		//고차원 배열 - 얕은 비교
		System.out.println(names1 == names2);
		
		//고차원 배열 - 깊은 비교 > equals (1차원 배열 비교 용도)
		System.out.println(Arrays.equals(names1, names2));
		
		//고차원 배열 - 깊은 비교
		System.out.println(Arrays.deepEquals(names1, names2));
	}

	private static void m1() {
		
		/*
		
		컬렉션 이해(작업) + 면접
		
		자바의 컬렉션의 여러 인터페이스를 구현한다.
		
		1. Collection 인터페이스
		- List와 Set의 부모
		
		2. List 인터페이스
		- ArrayList, Stack, Queue, LinkedList, Vector 등..
		- 순서가 있는 데이터 집합(******)
		- 방번호가 있다.(첨자(index) 사용) -> 요소를 접근
		- 데이터 중복을 허용한다. -> 방번호는 유일하기 때문에 같은 '홍길동'을 구분 가능해서
		
		
		3. Set 인터페이스
		- HashSet, TreeSet 등
		- 순서가 없는 데이터 집합(*****)
		- 방번호가 없다.(첨자 사용 안함)
		- 데이터 중복을 허용 안한다.(*********)
		
		
		4. Map 인터페이스
		- HashMap, TreeMap, HashTable, Properties 등..
		- 순서가 없는 데이터 집합(******)
		- 방번호 없음 -> 키와 값을 사용한다.
		- 키(key) 집합 : 중복 허용 안함(Set)
		- 값(value) 집합 : 중복 허용 안함(List)
		
		** Vector, HashTable, Properties : 호환성 때문에 남긴 클래스 > 언제 사라질지 ??
		** 자바 컬렉션 JDK 1.5 만들어짐
		
		Vector -> ArrayList
		HashTable -> HashMap
		Properties -> X -> XML, JSON
		
		*/
		
		//List 계열
		//1. Vector - 동기화 지원
		//2. ArrayList - 동기화 지원 안함
		// - 동일한 컬렉션, 쓰레드 작업 시 동기화 지원 유무
		
		ArrayList<String> list = new ArrayList<String>();
		Vector<String> list2 = new Vector<String>();
		
		list.add("빨강");
		list2.add("빨강");
		
		System.out.println(list.size());
		System.out.println(list2.size());
		
		System.out.println(list.get(0));
		System.out.println(list2.get(0));
	}
}


class Product {
	
	private String name;
	private int price;
	private String category;
	
	public Product(String name, int price, String category) {
		this.name = name;
		this.price = price;
		this.category = category;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
	@Override
	public String toString() {
		return "Product [name=" + name + ", price=" + price + ", category=" + category + "]";
	}
	
	
	
}



























