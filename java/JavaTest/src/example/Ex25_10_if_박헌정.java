package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_10_if_박헌정 {
	public static void main(String[] args) throws IOException {
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("근무 년수 : ");
		int year = Integer.parseInt(reader.readLine());
		
		workYear(year);
		
		
	} //main

	private static void workYear(int year) {
		
		if(year > 0) {
			if (year >= 1 && year <= 4) {
				System.out.printf("당신은 %d년차 초급 개발자입니다.\n", year); //4년차 이하
			}else if(year >= 5 && year <= 9) {
				System.out.printf("%d년차 중급 개발자입니다.\n", year); //5~9년차
				System.out.printf("당신은 %d년전까지 초급 개발자였습니다.\n", year-4); //초급 최대인 4년을 빼고난값
				System.out.printf("앞으로 %d년 더 근무를 하면 고급 개발자가 됩니다.\n", 10-year); //고급이되기위한 10년에서 일한값을 뺀값
			
			}else if(year >= 10) {
				System.out.printf("당신은 %d년차 고급 개발자 입니다.\n", year); //10년이상의 n년차 고급개발자
			}
		}else {
			System.out.println("잘못된 입력입니다.");
		}
	} //workYear
	
	
	
}
