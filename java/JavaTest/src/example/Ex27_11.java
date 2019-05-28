package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_11 {
	public static void main (String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		//for (int i=1; i<=100; i++) {
			
			//131
			// -전체숫자 -> 3의 배수(x)
			// -각 자리수의 한자리 숫자 -> 3의 배수(o)
			
			//연산자(/, %)
			
			//1의 자리
//			System.out.printf("%d, %d\n", i, i % 10);
//			System.out.println((i%10)%3 == 0); //1의자리 -> 짝
			
			//10의자리
			//123 -> 2
			//123 / 10 -> 12 % 10 -> 2
			//System.out.printf("%d, %d\n", i, ((i / 10) % 10)%3 == 0);
			
			//100의 자리
			//123 -> 1
			//123 / 100 -> 1
			//System.out.printf("%d, %d\n", i, (i / 100) % 3 == 0);
		//}
		
	inputNum(reader);
	
	}//main

	private static void inputNum(BufferedReader reader) throws Exception {
		System.out.print("최대 숫자 : ");
		int maxNum = Integer.parseInt(reader.readLine());
		String clap = "";
		
			for(int i=1; i<maxNum; i++) {
				
				if( ((i % 10) == 3 || (i % 10) == 6 || (i % 10) == 9) && ((i / 10) == 3 || (i / 10) == 6 || (i / 10) == 9 )) {
					clap = clap + " 짝짝 ";
				}else if ((i / 10) == 3 || (i / 10) == 6 || (i / 10) == 9) {
					clap = clap + " 짝 ";
				}else if ((i % 10) == 3 || (i % 10) == 6 || (i % 10) == 9) {
					clap = clap + " 짝 ";
				}else {
					clap = clap +" "+i+" ";
				}
			}
		System.out.println(clap);
		
	}//inputNum


	
}
