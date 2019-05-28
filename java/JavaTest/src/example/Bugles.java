package example;

import java.util.Calendar;

public class Bugles {
	
	private int volume;
	private int price;
	private int productDay;
	private int shelfLife;
	
	
	public void setVolume(int volume) {
		if (volume != 300 && volume != 500 && volume != 850) {
			System.out.println("잘못된 입력입니다.");
		}
		this.volume = volume;
	}
	//용량
	
	
	
	public int getPrice() {
		if(volume == 300) {
			price = 850;
		}else if(volume == 500) {
			price = 1200;
		}else if(volume == 850) {
			price = 1950;
		}

		return price;
	}
	//가격

	
	
	public void setProductDay(int year, int month, int date) {
		Calendar productDayTime = Calendar.getInstance();
		productDayTime.set(year, month-1, date);
		int day =(int)(productDayTime.getTime().getTime() / 1000 / 60 / 60 / 24); 
		this.productDay = day;
	}
	//생산
	
	
	
	public int getShelfLife() {
		if(volume == 300) {
			shelfLife = 7;
		}else if(volume == 500) {
			shelfLife = 10;
		}else if(volume == 850) {
			shelfLife = 15;
		}
		
		return shelfLife+productDay - (int)(System.currentTimeMillis() / 1000 / 60 / 60 / 24);
		
	}
	//유통기한
	
	
	public String eat() {
		
		
		if (getShelfLife() > 0) {
			return "과자를 맛있게 먹습니다.";
		}else {
			return "유통기한이 지나 먹을 수 없습니다.";
		}
		
		
		
	}
	//과자먹기 메소드
	
	
	
	
	
	
	
	
	
	
}
