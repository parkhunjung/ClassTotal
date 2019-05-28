package com.test.example.collection;

public class MyQueue {
	
	private String[] list;
	private int index = 0;
	private int capacity = 0;
	
	public MyQueue() {
		this(4);
	}
	
	public MyQueue(int initialCapacity) {
		this.capacity = initialCapacity;
	}
	
	public void add(String s) {
		
		//a. 배열이 없음 (첫 add 할때만)
		//b. 몇번째 방에 데이터 추가?
		//c. 배열을 두배로
		
		if(this.index == 0) {
			this.list = new String[this.capacity]; //첫번째 배열생성
		}
		
		doubling(); //배열두배로
		
		
		this.list[index] = s;
		this.index++; 
		
	}//add

	
	
	private void doubling() {
		if(this.index == this.list.length) {
			String[] addList = new String[this.list.length * 2];
			for (int i=0; i<this.list.length; i++) {
				addList[i] = this.list[i];
			}
			this.list = addList;
		}
	}//double
	
	
	
	@Override
	public String toString() {
		String temp = ""; //빈공간생성
		
		for (String s : this.list) {
			temp += s + ", "; //빈공간에 한번들어갈때마다 s 주입
		}
		
		temp += "\r\nindex : " + this.index;
		temp += "\r\nlength : " + this.list.length;
		
		return temp;
	}//toString
	
	
	
	public String poll() {
		String temp = this.list[0];
		
		for (int i=0; i<this.index-1; i++) {
			this.list[i] = this.list[i+1];  // 하나를 빼갈때마다 그다음배열의 값을 집어넣어줌 ex) 0에 1값을 계속해서 넣어줌
		}
		
		this.index--;
		return temp;
		
	}//poll
	
	public int size() {
		
		return this.index;
		
	}
	
	
	public String peek() {
		String temp = this.list[0];
		
		return temp;
		
	}
	
	public void clear() {
		
		this.index = 0;
		
	}
	
	public void trimToSize() {
		
		String[] temp = new String[this.index];
		
		for(int i=0; i<this.index; i++) {
			temp[i] = this.list[i];
		}
		
		this.list = temp;
		
	}
	
	
	
	
	
}

















