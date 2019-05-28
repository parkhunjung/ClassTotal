package com.test.example.question;

import java.util.ArrayList;

public class ArrayListTest {
	public static void main(String[] args) {
		
		//배열 생성
		ArrayList<String> list1 = new ArrayList<String>();
		MyArrayList list2 = new MyArrayList();
		
		//add
		list1.add("빨강");
		list2.add("빨강");
		
		list1.add("파랑");
		list2.add("파랑");
		
		System.out.println(list2);
		
		list2.add("노랑");
		list2.add("검정");
		
		System.out.println(list2);
		
		list2.add("주황");
		
		System.out.println(list2);
		
		
		//get
		System.out.println(list1.get(0));
		System.out.println(list2.get(0));
		
//		System.out.println(list1.get(-2));
//		System.out.println(list2.get(4));
		
		System.out.println(list1.size());
		System.out.println(list2.size());
		
		list1.set(0,  "Red");
		list2.set(0,  "Red");
		list2.set(4, "하하하");
//		list2.set(6, "white");
		
		System.out.println(list2);
		System.out.println();
		
		list1.remove(0);
		list2.remove(1);
		
		System.out.println(list2);
		System.out.println();
		
		list2.add("녹색");
		
		System.out.println(list2);
		System.out.println();
		
		list2.add(4, "보라");
		list2.add(4, "보라");
		list2.add(4, "보라");
		
		System.out.println(list2);
		System.out.println();
		
		list2.add(4, "회색");
		
		System.out.println(list2);
		System.out.println();
		
		System.out.println(list2.indexOf("보라", 5));
		System.out.println(list2.indexOf("보라"));
		
		
		System.out.println(list2.lastIndexOf("보라"));
		System.out.println(list2.lastIndexOf("보라", 5));
		
		
		
		
//		list2.clear();
//		System.out.println(list2.size()); //0
//		System.out.println(list2);
//		
//		
//		list2.add("검정");
//		System.out.println(list2);
//		
//		
//		list2.trimToSize();
//		System.out.println(list2);
//		
//		
//		MyArrayList list3 = new MyArrayList(100);
//		
//		for(int i=0; i<100; i++) {
//			list3.add(i+ "");
//			System.out.println(list3);
//			System.out.println();
//		}
//		
//		list3.add("aaa");
//		System.out.println(list3);
//		
//		list3.trimToSize();
//		System.out.println(list3);
		
	}
}














