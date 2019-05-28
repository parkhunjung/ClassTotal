package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_7_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		inputNum(reader);
		
	}

	private static void inputNum(BufferedReader reader) throws Exception {
		
		System.out.print("시작 숫자 : ");
		int sNum = Integer.parseInt(reader.readLine());
		
		System.out.print("종료 숫자 : ");
		int fNum = Integer.parseInt(reader.readLine());
		
		int i;
		int sum = 0;
		
		
		
		for(i=sNum; ; i++) {
			sum += i;
			
			if(sum < fNum) {
			System.out.printf("%d + ", i);
				
			}else {
			System.out.printf("%d = %d \n", i, sum);
			System.out.print("시스템을 종료합니다.");
			break;
			}
		}	
			
			//System.out.printf("%d = %d", sum);
		
		
		//System.out.printf("%d = %d", fNum, sum);
	
	
	}//inputNum
}
