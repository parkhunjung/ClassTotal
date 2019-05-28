package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_1_if_박헌정 {

	public static void main(String[] args) throws IOException {
		
	BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
	
	System.out.print("첫번째 숫자 : ");
	int numOne = Integer.parseInt(reader.readLine());
	
	System.out.print("두번째 숫자 : ");
	int numTwo = Integer.parseInt(reader.readLine());
	
	num(numOne, numTwo);
	
	} //main

	private static void num (int numOne, int numTwo) {
		
		if (numOne > numTwo) {
			System.out.printf("큰수는 %d 이고, 작은 수는 %d 이며, 두수의 차이는 %d이다.\n", numOne, numTwo, 								numOne - numTwo);
		}else {
			System.out.printf("큰수는 %d 이고, 작은 수는 %d 이며, 두수의 차이는 %d이다.\n", numTwo, numOne, 								numTwo - numOne);
		}
		
	}
	
	
	
	
	
}


