package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_3_if_박헌정 {
	
	public static void main(String[] args) throws IOException {
				
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("첫번째 숫자 : ");
		int numOne = Integer.parseInt(reader.readLine());
		
		
		System.out.print("두번째 숫자 : ");
		int numTwo = Integer.parseInt(reader.readLine());
		
		System.out.print("연산자 : " );
		String str = reader.readLine();
		
		char operator = str.charAt(0);
		
		
		calc(numOne, numTwo, operator);
	}

	private static void calc(int numOne, int numTwo, char operator) {
		
		if (operator == '+') {
			System.out.printf("%d + %d = %d\n ", numOne, numTwo, numOne + numTwo);	
		
		}else if (operator == '-') {
			System.out.printf("%d - %d = %d\n ", numOne, numTwo, numOne - numTwo);	
		
		}else if (operator == '*') {
			System.out.printf("%d * %d = %d\n ", numOne, numTwo, numOne * numTwo);	
		
		}else if (operator == '/') {
			System.out.printf("%d / %d = %.1f\n ", numOne, numTwo, numOne / (float)numTwo);	
		
		}else if (operator == '%') {
			System.out.printf("%d % %d = %d\n ", numOne, numTwo, numOne % numTwo);	
		}
		
		
		
	}
}
