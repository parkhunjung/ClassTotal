package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_3_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		inputNum(reader);
	}

	private static void inputNum(BufferedReader reader) throws Exception {
		
		System.out.print("숫자 : ");
		int num = Integer.parseInt(reader.readLine());
		
		int i;
		int sum = 0;
		
		for (i=0; i<=num; i++) {
			
			sum += i;
		}
		System.out.printf("1 ~ %,d = %,d\n", num, sum);
		
	}
}
