package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex28_5_for {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		
		inputRow(reader);
	
	
	}//main

	private static void inputRow(BufferedReader reader) throws Exception {
		System.out.print("행의 갯수 : ");
		int rowNum = Integer.parseInt(reader.readLine());
		
		//for(int n=97; n<=97+rowNum; n++)
		
		for (int i=0; i<rowNum; i++) {
			
			for (int j=i; j<rowNum-1; j++) {
				System.out.print(" ");
			}
			for(int n=97; n<=97+i; n++) {
				System.out.printf("%c", (char)n);
			}
			for(int n=97+i; n>=97; n--) {
				System.out.printf("%c", (char)n);
			}
			System.out.println();
		}
		
		
		
	}//inputRow
	
	
	
}
