package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Ex25_9_if_박헌정 {
	public static void main(String[] args) throws IOException {
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("년 : ");
		int year = Integer.parseInt(reader.readLine());
		
		System.out.print("월 : ");
		int month = Integer.parseInt(reader.readLine());
		
		System.out.print("일 : ");
		int date = Integer.parseInt(reader.readLine());
		
		
		checkHoliday(year, month, date);
	}//main

	private static void checkHoliday(int year, int month, int date) {
		
		Calendar now = Calendar.getInstance(); //현재시간을 얻어옴
		now.set(year, month-1, date); //입력받은 시간
		
		//long nowInput = now.getTime().getTime() / 1000 / 60 / 60 / 24 ; //입력받은 시간을 초밀리단위로 바꾸고 일수로 표현
			
//		if (nowInput % 7 == 2 || nowInput % 7 == 3) { //일수로 표현된 값을 7로나눈 나머지로 판단 // 토요일 또는 일요일은 휴일로 출력 결과값 x
//			System.out.println("입력하신 날짜는 \'휴일\'입니다.\n결과가 없습니다.");
//		}else {
//			System.out.println("입력하신 날짜는 \'평일\'입니다.\n해당 주의 토요일로 이동합니다.");		
//			if (nowInput % 7 == 1) { 
//				now.add(Calendar.DATE, 1); //금요일 이동 +1
//				System.out.printf("이동한 날짜는 \'%tF\' 입니다.", now);
//			}
//			else if(nowInput % 7 == 4) { 
//				now.add(Calendar.DATE, 5); //월요일 이동 +5
//				System.out.printf("이동한 날짜는 \'%tF\' 입니다.", now);
//			}
//			else if(nowInput % 7 == 5) { 
//				now.add(Calendar.DATE, 4); //화요일 이동 +4
//				System.out.printf("이동한 날짜는 \'%tF\' 입니다.", now);
//			}
//			else if(nowInput % 7 == 6) { 
//				now.add(Calendar.DATE, 3); //수요일 이동 +3
//				System.out.printf("이동한 날짜는 \'%tF\' 입니다.", now);
//			}
//			else if(nowInput % 7 == 7) {
//				now.add(Calendar.DATE, 2); //목요일 이동 +2
//				System.out.printf("이동한 날짜는 \'%tF\' 입니다.", now);
//			}
//						
//					
//				
//			
//			
//		}
		if (now.get(Calendar.DAY_OF_WEEK) == 1 || now.get(Calendar.DAY_OF_WEEK) == 7) {
			System.out.println("입력하신 날짜는 \'휴일\'입니다.\n결과가 없습니다.");
		}else {
			now.set(Calendar.DAY_OF_WEEK, 7);
			System.out.printf("입력하신 날짜는 \'평일\'입니다.\n해당 주의 토요일로 이동합니다.\n이동한 날짜는 \'%tF\' 입니다.", now);
		}
		
	} //chekHoliday 
	
}
