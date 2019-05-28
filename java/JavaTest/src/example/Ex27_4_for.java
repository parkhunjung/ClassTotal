package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_4_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		//evenNum();
		//oddNum();
		inputNum(reader);
	}//main


	private static void inputNum(BufferedReader reader) throws Exception {
		
		System.out.print("입력받을 숫자의개수 : ");
		int num = Integer.parseInt(reader.readLine());
		
		int i;
		int num2;
		int eSum = 0;
		int oSum = 0;
		for (i=1; i<=num; i++) {
			System.out.print("숫자 : ");			
			num2 = Integer.parseInt(reader.readLine());
			if (num2 % 2 == 0) {
				
				eSum += num2;
			}else if (num2 % 2 == 1) {
				
				oSum += num2;
				}
			}//입력받는 숫자 반복 + 입력받은 숫자가 짝수인지 홀수인지 구분
		
		System.out.printf("짝수의 합 : %,d\n홀수의 합 : %,d",eSum, oSum);
	}// inputNum 






}
