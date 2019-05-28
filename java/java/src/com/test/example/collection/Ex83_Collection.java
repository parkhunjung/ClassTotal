package com.test.example.collection;

import java.util.ArrayList;
import java.util.LinkedList;

public class Ex83_Collection {
	public static void main(String[] args) {
		/*
	
		LinkedList 클래스
		- List 계열(ArrayList, LinkedList)
		- 사용법은 거의 같음. 내부 물리 구조 다름(둘 중에 선택하는 기준)
		
		LinkedList 종류
		1. LinkedList
		2. Double LinkedList
		3. Double Circuler LinkedList => 자바의 사용법 대부분의 링크드리스트는 3번만 쓴다.
		
		
		ArrayList + LinkedList
		- 사용 용도는 거의 유사하다.
		- 길이가 가변인 스칼라 배열이 필요할 때 사용한다.(순차적인 방번호를 가지는 집합이 필요할때)
		
		ArrayList
		- 장점 : 모든 컬렉션 중 요소에 대한 접근 속도가 가장 빠르다.(읽기 장점)
		- 단점 : 요소의 추가와 삭제 작업에 비용 발생(느리다.)
		
		LinkedList
		- 장점 : 요소의 추가와 삭제 작업에 비용 저렴(빠르다.)
		- 단점 : 접근 속도가 굉장히 느리다.(읽기 성능이 떨어진다.)
		
		
		 */
		
		
		ArrayList<Integer> aList = new ArrayList<Integer>();
		LinkedList<Integer> lList = new LinkedList<Integer>();
		
		aList.add(100);
		aList.add(200);
		aList.add(300);//append
		
		lList.add(100);
		lList.add(200);
		lList.add(300);//append
		
		System.out.println(aList.size());
		System.out.println(lList.size());
		
		for (int n : aList) {
			System.out.println(n);
		}
		for (int n : lList) {
			System.out.println(n);
		}
		
		System.out.println(aList.get(0));
		System.out.println(lList.get(0));
		
		aList.remove(0);
		lList.remove(0);
		
		System.out.println(aList);
		System.out.println(lList);

		//1. 순차적으로 데이터 추가하기. Append
		System.out.println("순차적으로 데이터 추가하기");
		
		long begin = 0,end = 0;
		begin = System.currentTimeMillis();
		
		//작업
		for (int i=0; i<1000000; i++) {
			aList.add(i);
		}
		
		
		end = System.currentTimeMillis();
		System.out.printf("작업 소요 시간 : %,dms\n", end - begin);
		
		//링크드리스트
		begin = System.currentTimeMillis();
		
		//작업
		for (int i=0; i<1000000; i++) {
			lList.add(i);
		}
		
		
		end = System.currentTimeMillis();
		System.out.printf("작업 소요 시간 : %,dms\n", end - begin);
		
		
		//중간삽입
		System.out.println("중간에 데이터 추가하기. Insert > shift 발생");

		begin = System.currentTimeMillis();
		
		//작업
		for (int i=0; i<10000; i++) {
			aList.add(0,i);
		}
		
		
		end = System.currentTimeMillis();
		System.out.printf("작업 소요 시간 : %,dms\n", end - begin);
		
		//링크드리스트
		begin = System.currentTimeMillis();
		
		//작업
		for (int i=0; i<10000; i++) {
			lList.add(0,i);
		}
		
		
		end = System.currentTimeMillis();
		System.out.printf("작업 소요 시간 : %,dms\n", end - begin);
		
		
		//데이터 중간 삭제
		System.out.println("중간에 있는 데이터 삭제. Delete > shift");
		
		begin = System.currentTimeMillis();
		
		//작업
		for (int i=0; i<10000; i++) {
			aList.remove(0);
		}
		
		
		end = System.currentTimeMillis();
		System.out.printf("작업 소요 시간 : %,dms\n", end - begin);
		
		//링크드리스트
		begin = System.currentTimeMillis();
		
		//작업
		for (int i=0; i<10000; i++) {
			lList.remove(0);
		}
		
		
		end = System.currentTimeMillis();
		System.out.printf("작업 소요 시간 : %,dms\n", end - begin);
		
		//데이터 순차 삭제
		System.out.println("순차적 데이터 삭제(끝 -> 처음). Delete > shift 없음");
		
		begin = System.currentTimeMillis();
		
		//작업
		for (int i=aList.size()-1; i>=0; i--) {
			aList.remove(i);
		}
		
		
		end = System.currentTimeMillis();
		System.out.printf("작업 소요 시간 : %,dms\n", end - begin);
		
		//링크드리스트
		begin = System.currentTimeMillis();
		
		//작업
		for (int i=lList.size()-1; i>=0; i--) {
			lList.remove(i);
		}
		
		
		end = System.currentTimeMillis();
		System.out.printf("작업 소요 시간 : %,dms\n", end - begin);
		
		
	}
	
	
}


















