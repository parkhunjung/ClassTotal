package com.test.example.question;

public class MyArrayList {
	
	private String[] list; //데이터 저장소
	private int index = 0; //현재 접근할 방의 번호
	private int capacity = 0;
	
	
	public MyArrayList() {
		this(4);
	}
	
	public MyArrayList(int initialCapacity) {
		this.capacity = initialCapacity;
	}
	
	public void add(String s) {
		
		//a. 배열이 없음 (첫 add 할때만)
		//b. 몇번째 방에 데이터 추가?
		//c. 배열을 두배로
		
		//a.
		if (this.index == 0) { //첫 add
			this.list = new String[this.capacity];
		}
		
		//c.
		doubling();
		
		//b.
		this.list[index] = s;
		this.index++;
		
		
	}//add

	private void doubling() {
		if(this.index == this.list.length) { //방이 꽉찻다면 > 2배로 늘려라
			
			String[] addList = new String[this.list.length * 2];
			
			for(int i=0; i<this.list.length; i++) { //원본 배열 기준으로 loop
				addList[i] = this.list[i]; //Deep copy
			}
			this.list = addList; //배열이 2배로 늘어남 (내부적으론 교체)
			
		}
	}
	
	//toString() 오버라이드 : 개발자 디버깅용
	@Override
	public String toString() {
		
		String temp = "";
		
		for (String s : this.list) {
			temp += s + ", ";
		}
		
		temp += "\r\nindex : " + this.index;
		temp += "\r\nlength : " + this.list.length;
		
		return temp;
		
	} //toString
	
	//2. String get(int index)
	public String get(int index) {
		
		//유효한 index 검사
		// - 0 ~ this.index
		if (index >= 0 && index < this.index) {			
			return this.list[index];
			
		}else {
			throw new IndexOutOfBoundsException();
		}
		
			
	} // get
	
	public int size() {
		
		return this.index;
		
	}//size
	
	public void set(int index, String s) {
		
		if (index >= 0 && index < this.index) {			
			this.list[index] = s;
			
		}else {
			throw new IndexOutOfBoundsException();
		}
		
	}//set
	
	public void remove(int index) {
		
		for (int i=index; i<this.index; i++) {
			this.list[i] = this.list[i+1];
		}
		
		this.index--;
		
	}
	
	public void add(int index, String s) {
		
		doubling();
		
		for (int i=this.index-1; i>=index; i--) {
			this.list[i+1] = this.list[i];
			
		}
		
		this.list[index] = s;
		this.index++;
	}
	
	public int indexOf(String s) {
		
		for (int i=0; i<this.index; i++) {
			if(this.list[i].equals(s)) {
				return i;
			}
		}
		
		return -1;
	}
	
	public int indexOf(String s, int beginIndex) {
		
		for (int i=beginIndex; i<this.index; i++) {
			if(this.list[i].equals(s)) {
				return i;
			}
		}
		
		return -1;
	}
	
	public int lastIndexOf(String s) {
		
		for (int i=this.index-1; i>=0; i--) {
			if(this.list[i].equals(s)) {
				return i;
			}
		}
		
		return -1;
	}
	
	public int lastIndexOf(String s, int beginIndex) {
		
		for (int i=beginIndex; i>=0; i--) {
			if(this.list[i].equals(s)) {
				return i;
			}
		}
		
		return -1;
	}
	
	
	
	
	
	public void clear() {
		
		//for > i > null
		
		this.index = 0;
		
		
	}
	
	
	//10. void trimToSize()
	public void trimToSize() {
		
		//빈방 버리기
		String[] temp = new String[this.index]; // 실제 데이터 개수만큼의 배열 길이
		
		for(int i=0; i<this.index; i++) {
			temp[i] = this.list[i];
		}
		
		this.list = temp;
	}
	
	
}



























