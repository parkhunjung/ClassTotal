package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_8_if_박헌정 {
	public static void main(String[] args) throws IOException {
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("년도 입력 : ");
		int year = Integer.parseInt(reader.readLine());
		
		
		calcYear(year);
	
	
	}//main

	private static void calcYear(int year) {
		if (year > 0) {
			

			if (year % 4 != 0) {
				
				System.out.printf("%d년은 평년입니다.\n ", year); //4로 나눈 나머지가 0이 아닐때 평년으로 출력
			}
			else if (year % 100 != 0) {
				
				System.out.printf("%d년은 윤년입니다.\n ", year); //100으로 나눈 나머지가 0이 아닐때 윤년으로 출력
			}else if (year % 400 != 0) {
			
				System.out.printf("%d년은 평년입니다.\n ", year); //400으로 나눈 나머지가 0이 아닐때 평년으로 출력
			}else {
				
				System.out.printf("%d년은 윤년입니다.\n ", year); //3가지 모두 적용이되지않앗을때 윤년으로 출력
			}
		}else {
			System.out.println("잘못된 값입니다.");
		}
	}//calcYear
}
