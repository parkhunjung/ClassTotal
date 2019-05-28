package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_2_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
	
		inputNum(reader);
	}

	private static void inputNum(BufferedReader reader) throws Exception {
		System.out.print("시작 숫자 : ");
		int sNum = Integer.parseInt(reader.readLine());
		
		System.out.print("종료 숫자 : ");
		int fNum = Integer.parseInt(reader.readLine());
		
		System.out.print("증가치 : ");
		int pNum = Integer.parseInt(reader.readLine());
		
		int i;
		for (i=sNum; i<=fNum; i+=pNum) {
			System.out.println(i);
		}
		
	}
	
	
}
