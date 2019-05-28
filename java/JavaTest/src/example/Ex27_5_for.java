package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_5_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		
		numSum(reader);
	
	}

	private static void numSum(BufferedReader reader) throws Exception {
		
		System.out.print("시작 숫자 : ");
		int sNum = Integer.parseInt(reader.readLine());
		
		System.out.print("종료 숫자 : ");
		int fNum = Integer.parseInt(reader.readLine());
		
		int i;
		int j;
		int sum = 0;
		for (i=sNum; i<=fNum; i++) {
			sum += i;
			//System.out.printf("%d + ", i);
		}
		for (j=sNum; j<fNum; j++) {
			System.out.printf("%d + ", j); //시작 숫자부터 종료 숫자 전까지 표시
		}
		System.out.printf("%d = %d", fNum, sum); // 종료 숫자와 합계를 표시
		
		
	}
}
