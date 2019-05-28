package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex28_4_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		inputRow(reader);
	
	}//main

	private static void inputRow(BufferedReader reader) throws Exception {
		System.out.print("행의 갯수 : ");
		int rowNum = Integer.parseInt(reader.readLine());
		
		for (int i=0; i<rowNum; i++) {
			for (int j=0; j<=i; j++) {
				System.out.print(" ");
			}
			for (int j=i; j<=i; j++) {
				System.out.print("*");
			
			}
			System.out.println();
		}	
		
		
	}//inputRow
}
