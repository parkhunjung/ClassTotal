package com.test.example.collection;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

public class Ex86_Collection {
	public static void main(String[] args) {
		
		//TreeSet
		// - 트리구조의 Set
		// - 중복값X, 순서X, 정렬X
		// - 이진트리 구조 기반에 자동 정렬이 되어 있는 Set
		// - 이진 검색 트리(이진 트리)
		
		Set<Integer> set = new TreeSet<Integer>();
		
		set.add(10);
		set.add(50);
		set.add(20);
		set.add(40);
		set.add(30);
		
		System.out.println(set);
		
		//Set -> loop -> Iterator
		
		Iterator<Integer> iter = set.iterator();
		
		while(iter.hasNext()) {
			System.out.println(iter.next());
		}
		
		Random rnd = new Random();
		HashSet<Integer> set1 = new HashSet<Integer>();
		TreeSet<Integer> set2 = new TreeSet<Integer>();
		
		while(set2.size() < 30) {
			int n = rnd.nextInt(100)+1;
			set1.add(n);
			set2.add(n);
			
			
		}
		System.out.println(set1);
		System.out.println(set2);
		
		//TreeSet 선택 이유
		//1. 정렬
		//2. 부분 검색 가능(추출) & 범위 비교
		
		System.out.println(set2.headSet(15));
		System.out.println(set2.tailSet(15));
		System.out.println(set2.subSet(10, 20));
		
		
		
	}
}

















