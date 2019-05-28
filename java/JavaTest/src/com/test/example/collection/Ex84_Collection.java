package com.test.example.collection;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Set;

public class Ex84_Collection {
	
	public static void main(String[] args) {
		
		//Ex84_Collection.java
		
		//enum 자료형. enumeration(열거형)
		
		//Enumeration > Iterator(***) > ListIterator
		// - 탐색기, 반복자, 접근자 등..
		// - 컬렉션의 요소들을 순차 탐색해주는 도구
		
		//m1();
		//m2();
		m3();
	}

	private static void m3() {
		
		//Iterator > ListIterator
		// - Iterator : 단방향 > 전진 커서
		// - ListIterator : 양방향 > 전진 + 후진커서
		
		//잘 사용하지 않는 이유
		//1. 속도차이
		//2. Iterator(List,Set), ListIterator(List)
		
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("빨강");
		list.add("주황");
		list.add("노랑");
		list.add("초록");
		list.add("파랑");
		list.add("남색");
		list.add("보라");
		
		Iterator<String> iter = list.iterator();
		
		while(iter.hasNext()) {
			System.out.println(iter.next());
		}
		
		ListIterator<String> liter = list.listIterator();
		
		while(liter.hasNext()) {
			System.out.println(liter.next());
		}
		
		while(liter.hasPrevious()) {
			System.out.println(liter.previous());
		}
		
		
		
	}

	private static void m2() {
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		map.put("반장", "홍길동");
		map.put("부반장", "아무개");
		map.put("줄반장", "하하하");
		map.put("체육부장", "호호호");
		map.put("문화부장", "후후후");
		
		//HashMap > Loop 불가능
		Set<String> keys = map.keySet();
		
		//keys.get(0)
		Iterator<String> iter = keys.iterator();
		
		while(iter.hasNext()) {
//			System.out.println(iter.next());
//			System.out.println(map.get(iter.next()));
			String key = iter.next();
			System.out.println(key);
			System.out.println(map.get(key));
			
			
		}
		
		
		Item item = new Item();
		
		Iterator<String> iter2 = item.iterator();
		
		while (iter2.hasNext()) {
			System.out.println(iter2.next());
		}
		
		
		
		
		
		
	}

	private static void m1() {
		
		//Iterator
		// - 컬렉션 프레임워크에서 저장된 요소를 읽어오는 방법을 표준화하기 위한 역할(인터페이스)
		// - Collection 하위 컬렉션 소유 -> List, Set -> Iterator 구현 객체를 반환하는 메소드가 구현되어 있음.
		// - 읽기 전용으로 사용
		
		//Iterator 주요 멤버
		//1. boolean hasNext()
		//2. T next()
		//3. remove() //잘 사용 안함
		
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("사과");
		list.add("바나나");
		list.add("파인애플");
		list.add("포도");
		list.add("망고");
		
		//탐색
		//1. 일반 for()
		//2. 향상된 for()
		//3. Iterator
		
		Iterator<String> iter = list.iterator();
		
//		System.out.println(iter.hasNext());
//		System.out.println(iter.next());
//		
//		System.out.println(iter.hasNext());
//		System.out.println(iter.next());
//		
//		System.out.println(iter.hasNext());
//		System.out.println(iter.next());
//		
//		System.out.println(iter.hasNext());
//		System.out.println(iter.next());
//		
//		System.out.println(iter.hasNext());
//		System.out.println(iter.next());
//		
//		System.out.println(iter.hasNext());
//		System.out.println(iter.next());
		
		while (iter.hasNext()) {
			System.out.println(iter.next());
		}
		
		//다시 사과를 읽기 > 다시 Iterator를 생성(BOF)
		iter = list.iterator();
		
		while (iter.hasNext()) {
			System.out.println(iter.next());
		}
		//** Iterator를 이용한 탐색은 첫번째 요소부터 마지막 요소까지 순차적으로 접근할 때 사용(= 향상된 for문)
		
	}

}

//데이터 저장용 클래스
class Item {
	
	private String[] list = {"아이템A", "아이템B", "아이템C"};
	
	private String a = "아이템A";
	private String b = "아이템B";
	private String c = "아이템C";
	
	private int index = 0;
	
	public Iterator<String> iterator() {
		
		//Iterator 구현(Iterator 동작 원리)
		Iterator<String> iter = new Iterator<String>() {

			@Override
			public boolean hasNext() {
				if (index >= 0 && index <= 2) {
					return true;
				}else {
					return false;
				}
			
			}

			@Override
			public String next() {
				
				String temp = "";
				if(index == 0) temp = a;
				else if(index == 1) temp = b;
				else if(index == 2) temp = c;
				
				index++;
				
				return temp;
			}
				
		
		};
		
		
		return iter;
	}
	
}





































