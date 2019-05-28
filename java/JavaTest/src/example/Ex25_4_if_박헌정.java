package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_4_if_박헌정 {

	public static void main(String[] args) throws IOException {
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("문자 : ");
		String str = reader.readLine();
		char family = str.charAt(0);
		
		
	
		call(family);
	
	
	}

	private static void call(char family) {
		if (family == 'f' || family == 'F') {
			System.out.println("Father");
		}else if (family == 'm' || family == 'M') {
			System.out.println("Mother");
		}else if (family == 's' || family == 'S') {
			System.out.println("Sister");
		}else if (family == 'b' || family == 'B') {
			System.out.println("Brother");
		}
		
		
		
	}
}
