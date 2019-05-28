package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex27_1_for {
	public static void main(String[] args) throws Exception{
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		hello(reader);
	}//main

	private static void hello(BufferedReader reader) throws Exception {
		
		System.out.print("이름 : ");
		String name = reader.readLine();
		System.out.print("횟수 : ");
		int num = Integer.parseInt(reader.readLine());
		
		int i;
		
		if (num >= 0) {
			for (i=0; i<num; i++) {
				System.out.printf("%s님 안녕하세요.\n", name);
			} 
			
		}else {
			System.out.println("잘못 입력하셨습니다. 다시 실행해주세요.");
			
		}
		
		
	}// hello


}
