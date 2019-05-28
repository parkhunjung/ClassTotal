package com.test.example.collection;

import java.util.ArrayList;

public class Ex71_ArrayList {
	public static void main(String[] args) {
		
		
		//컬렉션, Collection
		// - 배열 버전업
		// - 길이 가변(방의 개수를 늘이거나 줄이는게 가능)
		// - 배열을 사용목적에 따라 사용법이나 구조를 특화시켜 미리 구조를 만들어서 제공함( = 자료구조)
		
		//ArrayList 클래스
		// - 사용 빈도 높음
		// - 순수 배열과 모습이 가장 유사하다.
		// - 첨자(index)를 사용해서 요소(Element)를 접근( = 순수 배열)
		
//		m1();
		m2();
		
	}//main

	private static void m2() {
		
		//ArrayList 기본 동작
		//ArrayList list = new ArrayList(); // Object 버전
		ArrayList<String> list = new ArrayList<String>();
		
		//1. 데이터 추가하기
		list.add("빨강");
		list.add("노랑");
		list.add("파랑");
		
		//2. 개수 확인하기
		System.out.println(list.size());
		
		//3. 가져오기
		for (String color : list) {
			System.out.println(color);
		}
		
		//4. 추가하기
		// - 이어서 추가하기(append)
		// - 중간에 추가하기(insert) : 인덱스 변화 발생
		list.add("주황");
		
		for (String color : list) {
			System.out.println(color);
		}
		
		list.add(1, "검정");
		
		for (String color : list) {
			System.out.println(color);
		}
		System.out.println();
		
		//5. 삭제하기 : 인덱스 변화 발생
		System.out.println(list.get(1));
		
		list.remove(1);//1번째 방을 없애라
		
		for (String color : list) {
			System.out.println(color);
		}
		
		//6. 수정하기
		list.set(1, "yellow");
		System.out.println(list.get(1));
		
		//CRUD(Creat, Read, Update, Delete)
		
		//7.
		list.clear();
		System.out.println(list.size());
		if(list.size() > 0) {
			System.out.println(list.get(1));
		}
		
		list.add("빨강");
		list.add("노랑");
		list.add("파랑");
		
		//8. 
		//문자열.contains("자") => 있는지 없는지?
		System.out.println(list.contains("노랑"));
		System.out.println(list.contains("검정"));
		
		//9.
		System.out.println(list.indexOf("노랑")); //발견된 방번호
		System.out.println(list.indexOf("검정")); 
		
		//10.
		System.out.println(list.isEmpty());
		
		
		
		
		
		
	}

	private static void m1() {
		
		//배열 생성
		// - 요소의 타입(int)
		// - 배열의 길이(3)
		int[] nums1 = new int[3];
		
		//ArrayList 생성(Object)
		// - 요소의 타입(?)
		// - 길이가 없다(?)
		ArrayList nums2 = new ArrayList();
		
		
		//배열
		// - 첨자 사용
		// - 대입 연산자 사용(=)
		nums1[0] = 100;
		nums1[1] = 200;
		nums1[2] = 300;
		
		//ArrayList
		// - [index] : indexer 지원 안함
		// - 첨자 사용 안함
		//nums2[0] = 100; (x)
		nums2.add(100); //[0]
		nums2.add(200); //[1]
		nums2.add(300); //[2]
		
		
		//배열의 길이 확인
		System.out.println(nums1.length);
		
		//ArrayList
		System.out.println(nums2.size()); //길이 확인법
		
		
		
		//배열
		// - 첨자 사용
		System.out.println(nums1[0]);
		
		//ArrayList
		System.out.println(nums2.get(0)); //방의번호를 지정해서 가져오는 방법
		
		for (int i=0; i<nums1.length; i++) {
			System.out.println(nums1[i]);
		}
		
		for (int i=0; i<nums2.size(); i++) {
			System.out.println(nums2.get(i));
		}
		
		
		for (int n : nums1) {
			System.out.println(n);
		}
		
		for (Object n : nums2) {
			System.out.println(n);
		}
		
		
		
		
		
	}
	
	
}





























