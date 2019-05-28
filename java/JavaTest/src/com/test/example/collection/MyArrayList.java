package com.test.example.collection;

public class MyArrayList {
	
	public String[] list;
	private int index = 0; //*** 변수의 용도? // 배열의 방번호 지정
	
	
	//add > 나머지는 마음대로
	public void add(String s) {
		
		if(index == 0)
			list = new String[4];
		if(index == list.length) {
			String[] addList = new String[list.length*2];
			for(int i = 0; i<list.length; i++)
				addList[i] = list[i];
			list = addList;
		}
//		if (index < list.length) {
//			list[index] = s;
//			System.out.println(list[index]);
//		}else {
//		
//		}
		index++;
		
	}
	
	public String get (int index){
		return null;
	}
	
	public int size() {
		return (Integer)null;
	}
	
	public void set (int index, String Value) {
		
	}
}
