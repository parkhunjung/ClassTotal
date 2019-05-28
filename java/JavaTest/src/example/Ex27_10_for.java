package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_10_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		
		inputNum(reader);
		
	}


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
