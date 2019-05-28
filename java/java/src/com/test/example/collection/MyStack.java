package com.test.example.collection;

public class MyStack {
	
	private String[] list;
	private int index = 0;
	private int capacity = 0;
	
	public MyStack() {
		this(4);
	}
	public MyStack(int initialCapacity) {
		this.capacity = initialCapacity;
	}
	
	
	
	public void push(String s) {
		
		
		if (this.index == 0) {
			this.list = new String[this.capacity];			
		}
		
		doubling();
		
		this.list[index] = s;
		index++;
		
		
		
	}//push
	
	private void doubling() {
		if(this.index == this.list.length) {
			String[] addList = new String[this.list.length * 2];
			for(int i=0; i<this.list.length; i++) {
				addList[i] = this.list[i];				
			}
			this.list = addList;
		}
	}//doubling
	
	@Override
	public String toString() {
		
		String temp = "";
		
		for (String s : this.list) {
			
			temp += s + ", ";
			
		}
		
		temp += "\r\nindex : " + this.index;
		temp += "\r\nlength : " + this.list.length;
		
		return temp;
	
	}
	
	public String pop() {
		
		this.index--;
		return this.list[index];
		
	}
	
	public int size() {
		
		return this.index;
		
		
	}
	
	public String peek() {
		
		String temp = this.list[index-1];
		
		return temp;
		
	}
	
	public void trimToSize() {
		
		String[] temp = new String[this.index];
		
		for(int i=0; i<this.index; i++) {
			temp[i] = this.list[i];
		}
		
		list = temp;
		
	}
	
	public void clear() {
		
		this.index = 0;
	}
	
	
}













