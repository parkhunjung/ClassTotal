package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_5_if_박헌정 {
	
	
	
	public static void main(String[] args) throws IOException {
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("문자 : ");
		String str = reader.readLine();
		char smallBig = str.charAt(0);
		
		
		casting(smallBig);
		
	
	
	
	}

	private static void casting(char smallBig) {
		
		if (smallBig >= 97 && smallBig <= 122) {
			System.out.printf("소문자 \'%c\'의 대문자는 \'%c\' 입니다.", smallBig, (smallBig -32));
		}else if (smallBig >= 65 && smallBig <= 90) {
			System.out.printf("대문자 \'%c\'의 소문자는 \'%c\' 입니다.", smallBig, (smallBig +32));
		}
		
	}
}
