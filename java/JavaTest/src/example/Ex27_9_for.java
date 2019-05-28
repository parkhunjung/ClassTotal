package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_9_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		//whatDay();
		test();
	}

	private static void test() {
		int year = 2019;
		int month = 2;
		int date = 13;
		
		int sum = 0;
		//1.큰덩어리
		for( int i=1; i<year; i++) {
			sum += 365;
			
			if(isLeaf(i)) {
				sum++;
			}
		}
		//2.중간덩어리
		for(int i=1; i<month; i++) {
			switch(i) {
				case 1: case 3: case 5: case 7: case 8: case 10: case 12:
					sum += 31;
					break;
				case 4: case 6: case 9: case 11:
					sum += 30;
					break;
				case 2:
					if(isLeaf(year)) {
						sum += 29;
					}else {
						sum += 28;
					}
			}
		}
		
		//3.작은덩어리
		sum += date;
		
		//확인
		System.out.printf("%d\n", sum);
		
		System.out.println(sum % 7);
	
	}//test
	
	//메소드 이름 패턴
	//1. setXXX() : 쓰기
	//2. getXXX() : 읽기
	//3. isXXX() : 확인(반환값 boolean)
	
	public static boolean isLeaf(int year) {
		if((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)) {
			return true;
		}else {
			return false;
		}
		
	}// 윤년 + 2월달 날수 계산식 메소드

	private static void whatDay() {
		
		int year = 2019;
		int month = 2;
		int day = 13;
		int sum = 0;
		
		
		
		for(int i=1; i<year; i++) {
			sum += 365;
		}
		
		for(int i=1; i<year; i++) {
			if (isLeaf(i)) {
				sum++;
			}
		}System.out.println(sum);
		
		for(int j=1; j<month; j++) {
			switch (j) {
				case 1:
				case 3:
				case 5:
				case 7:
				case 8:
				case 10:
				case 12:
					sum += 31;
					break;
				case 4:
				case 6:
				case 9:
				case 11:
					sum += 30;
					break;
				case 2:
					if (isLeaf(year)) {
						sum += 29;
					}else {
						sum += 28;
					}
						
			}
		}
		System.out.println(sum);
		int uYear =sum + day; //구할값
		
		System.out.printf("%d년 %d월 %d일은 %d일째 되는 날입니다.\n", year, month, day, uYear);
		
		System.out.println("===========================================");
		
		String day_now = "";
		
		 if (uYear % 7 == 1) {
			 day_now = "월";
	      } else if (uYear % 7 == 2) {
	    	 day_now = "화";
	      } else if (uYear % 7 == 3) {
	    	 day_now = "수";
	      } else if (uYear % 7 == 4) {
	    	 day_now = "목";
	      } else if (uYear % 7 == 5) {
	         day_now = "금";
	      } else if (uYear % 7 == 6) {
	         day_now = "토";
	      } else if (uYear % 7 == 0) {
	         day_now = "일";
	      } 
		
		System.out.printf("오늘은 %s요일 입니다.\n", day_now);
	}	
	
	
}
