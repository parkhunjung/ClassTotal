package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_8_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		inputNum(reader);
	}

	private static void inputNum(BufferedReader reader) throws Exception {
		
		System.out.print("입력받을 숫자의 개수 : ");
		int num = Integer.parseInt(reader.readLine());
		System.out.print("종료할 누적값 : ");
		int fNum = Integer.parseInt(reader.readLine());
		
		int i;
		int sum = 0;
		String answer = "";
		
		for(i=0; i<num; i++) {
			System.out.print("숫자 : ");
			int numTwo = Integer.parseInt(reader.readLine());
			
			if (numTwo % 2 == 0) {
				sum += numTwo;
				answer += " + "+numTwo;
			}else {
				sum -= numTwo;
				answer += " - "+numTwo;
			} if (sum > fNum) {
				System.out.println("시스템을 종료합니다.");
				break;
			}
		}
		
		System.out.printf("%s = %d", answer, sum);
		
		
	
	
	}



}
