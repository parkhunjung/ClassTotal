package com.test.example.constructor;

public class Time {
	
	/**
	 * 멤버 변수
	 * 시, 분, 초
	 */
	private int hour;
	private int minute;
	private int second;
	
	
	

	
	/**
	 * 기본 생성자
	 * 시, 분, 초
	 */
	public Time() {
		this(0, 0, 0);
		
		
	}
	
	
	/**
	 * 생성자 오버로딩
	 * @param hour 시
	 * @param minute 분
	 * @param second 초
	 */
	public Time(int hour, int minute, int second) {
		this.hour = (hour + (minute/60) + (second/3600));
		this.minute = (minute%60 + (second/60))%60;
		this.second = second%60;
			
	}
	
	
	/**
	 * 생성자 오버로딩
	 * @param minute 분
	 * @param second 초
	 */
	public Time(int minute, int second) {

		this.hour = 0;
		//분이 시간을 넘어서는경우
		if(minute >= 60) {
			this.hour = minute/60;
			this.minute = (minute + (second/60))%60;
		}else {
			this.minute = minute;
		}
		this.second = second%60;
	}
	
	/**
	 * 생성자 오버로딩
	 * @param second 초
 	 */
	public Time(int second) {
		this(0, 0);
		//초가 시간을 넘어서는경우
		if (second >= 3600) { 
			
			this.hour = (second/3600);
			this.minute = (second/60)%60;
			this.second = second%60;
		
		//초가 분을 넘어서는경우
		}else if (second >= 60 && second < 3600){
			
			this.minute = (second/60);
			this.second = second%60;
		
		}else {
			
			this.second = second;
		}
		
		
	}
	
	
	public String info () {
		
		
		return hour + ":" + minute + ":" + second;
		
	}
	//출력물

	
}//class






















