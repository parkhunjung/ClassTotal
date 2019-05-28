package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_6_if_박헌정 {
	
	
	public static void main(String[] args) throws IOException {
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("숫자 입력 : ");
		int numOne = Integer.parseInt(reader.readLine());
		castString(numOne);
		System.out.print("숫자 입력 : ");
		int numTwo = Integer.parseInt(reader.readLine());
		castString(numTwo);
		System.out.print("숫자 입력 : ");
		int numThree = Integer.parseInt(reader.readLine());
		castString(numThree);
		System.out.print("숫자 입력 : ");
		int numFour = Integer.parseInt(reader.readLine());
		castString(numFour);
		System.out.print("숫자 입력 : ");
		int numFive = Integer.parseInt(reader.readLine());
		castString(numFive);
		
		evenOdd(numOne, numTwo, numThree, numFour, numFive);
		
	
	}// main

	private static void evenOdd(int numOne, int numTwo, int numThree, int numFour, int numFive) {
		
		if (numOne > 0 && numOne <= 10) {
			if (numTwo > 0 && numTwo <= 10) {
				if (numThree > 0 && numThree <= 10) {
					if (numFour > 0 && numFour <= 10) {
						if (numFive > 0 && numFive <= 10) {
							int a = numOne % 2 == 0 ? 1 : 0;  
							int b = numTwo % 2 == 0 ? 1 : 0;									
							int c = numThree % 2 == 0 ? 1 : 0;
							int d = numFour % 2 == 0 ? 1 : 0;																
							int e = numFive % 2 == 0 ? 1 : 0;
							
							int even = a+b+c+d+e; //짝수의 개수
							
							int a2 = numOne % 2 == 1 ? 1 : 0;
							int b2 = numTwo % 2 == 1 ? 1 : 0;									
							int c2 = numThree % 2 == 1 ? 1 : 0;
							int d2 = numFour % 2 == 1 ? 1 : 0;																
							int e2 = numFive % 2 == 1 ? 1 : 0;
							
							int odd = a2+b2+c2+d2+e2; //홀수의 개수
							 if (even > odd) {
							System.out.printf("짝수의 개수는 %d개 이고, 홀수의 개수는 %d개이며, 짝수가 홀수보다 %d개 더많다 \n", even, odd, even - odd);
							
							}else if (even < odd){
								System.out.printf("짝수의 개수는 %d개 이고, 홀수의 개수는 %d개이며, 홀수가 짝수보다 %d개 더많다 \n", even, odd, odd - even);
							}
						}
					}
				}
			}	
		}else {
			System.out.println("올바른 값을 입력하지 못했습니다."); //10을 초과했을때
		}
		
		
}// 짝수홀수
	public static void castString(int numOne) {
		
		if(numOne == 1) {
			System.out.println("1 -> 하나");
		}else if (numOne == 2){
			System.out.println("2 -> 둘");
		}
		else if (numOne == 3){
			System.out.println("3 -> 셋");
		}
		else if (numOne == 4){
			System.out.println("4 -> 넷");
		}
		else if (numOne == 5){
			System.out.println("5 -> 다섯");
		}
		else if (numOne == 6){
			System.out.println("6 -> 여섯");
		}
		else if (numOne == 7){
			System.out.println("7 -> 일곱");
		}
		else if (numOne == 8){
			System.out.println("8 -> 여덟");
		}
		else if (numOne == 9){
			System.out.println("9 -> 아홉");
		}
		else if (numOne == 10){
			System.out.println("10 -> 열");
		}
		
	}// 숫자를 한글로 변환
	
}

