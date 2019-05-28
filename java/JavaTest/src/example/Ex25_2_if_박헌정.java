package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex25_2_if_박헌정 {
	
	public static void main(String[] args) throws IOException {
	
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("점수 : ");
		
		int score = Integer.parseInt(reader.readLine());
		
		grade(score);
	
	
	}

	private static void grade(int score) {
		
		if (score >= 90 && score <= 100) {
			System.out.printf("입력한 %d점은 성적 A입니다.\n", score);
		}else if (score >= 80 && score <= 89) {
			System.out.printf("입력한 %d점은 성적 B입니다.\n", score);
		}else if (score >= 70 && score <= 79) {
			System.out.printf("입력한 %d점은 성적 C입니다.\n", score);
		}else if (score >= 60 && score <= 69) {
			System.out.printf("입력한 %d점은 성적 D입니다.\n", score);
		}else if (score >= 0 && score <= 59) {
			System.out.printf("입력한 %d점은 성적 F입니다.\n", score);
		}else {
			System.out.printf("입력한 %d점은 유효한 점수가 아닙니다.\n", score);
		}
	}
	


}
