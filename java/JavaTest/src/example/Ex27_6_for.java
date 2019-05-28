package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_6_for {
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
		int j;
		int sum = 0;
		boolean flag = true;
		for (i=sNum; i<=fNum; i++) {
			if (flag) {
				sum += i;
				flag = false;
			} else {
				sum -= i;	
				flag = true;
			}
		}
		//System.out.printf("%d", sum);
		
		for(j=sNum; j<fNum; j++) {
			if(flag) {
				System.out.printf("%d - ", j); // 첫번째 불리언 true - 값 부여
				flag = false;
			}else {
				System.out.printf("%d + ", j); // 두번째 불리언 falst + 값 부여
				flag = true;
			}
		
		}
		System.out.printf("%d = %d", fNum, sum);
	}


}
