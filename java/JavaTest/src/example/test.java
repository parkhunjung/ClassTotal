package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Random;

public class test {
	public static void main(String[] args) throws Exception {
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
//		System.out.print("숫자 입력 : ");
//		int numOne = Integer.parseInt(reader.readLine());

	
		//test1();
		//test2();
		//test3();
		//test4();
		//test5(reader);
		//test6(reader);
		//test7();
		//test8(reader);
		test9();
		
	}

	private static void test9() {
		
		
		
		
	}

	private static void test8(BufferedReader reader) throws Exception {
		//배열 중간 삭제
		int[] num = new int[5];
		Random rnd = new Random();
		
		System.out.print("삭제 위치 : ");
		int insertNum = Integer.parseInt(reader.readLine());
		
		System.out.print("원본 : [");
		
		//난수 생성
		for (int i=0; i<num.length; i++) {
			num[i] = rnd.nextInt(10)+1;
			System.out.printf("%d, ", num[i]);
		}
		System.out.print("]\n");
		//숫자 위치 왼쪽으로 옮기기
		for (int i=insertNum; i<=num.length-2; i++) {
			num[i] = num[i+1];
		}
		//마지막 위치에 0삽입
		num[num.length-1] = 0;
		
		System.out.print("결과 : [");
		for (int j=0; j<num.length; j++) {
			System.out.printf("%d, ", num[j]);
			
		}
		System.out.print("]\n");
	
	}//t8

	private static void test7() {
		//1."-" 제거
		int sum = 0;
		String jumin = "920311-1023511";
		
		jumin = jumin.replace("-","");
		
		//2. 주민번호 1자리씩 떼내기
		for (int i=0; i<jumin.length()-1; i++) {
			int n = Integer.parseInt(jumin.substring(i, i+1));
			
			
			//3. 주민번호 1자리씩 일정수를 곱해서 +2하기
			sum += n * (i%8) + 2;
			
			
		}
		
		//주민번호의 총합 sum을 11로 나눈뒤 11에서 그수를 빼고남은 수를 10으로 나눈 나머지의 값
		String valid = (11 - (sum%11))%10 + "";
		
		if(jumin.substring(12).equals(valid)) {
			System.out.println(jumin);
			System.out.println("올바른 주민번호");
			
		}else {
			System.out.println(jumin);
			System.out.println("올바르지 않은 주민번호");
		}
	}//t7

	private static void test6(BufferedReader reader) throws Exception {
		System.out.print("테이블의 행 : ");
		int row = Integer.parseInt(reader.readLine());
		
		System.out.print("테이블의 열 : ");
		int column = Integer.parseInt(reader.readLine());
		
		int[][] nums = new int[row][column];
		int n=0;
		
		
		for (int i=0; i<row+column -1 ; i++) {
			for(int j=0; j<nums.length; j++) {
				
				int d = i-j;
				if(d >=0 && d < nums.length){
					n++;
					nums[j][d] = n;
				}
			}
		}
		
		
		
	}//t6

	private static void test5(BufferedReader reader) throws IOException {
		System.out.print("행의 갯수 : ");
		int rowNum = Integer.parseInt(reader.readLine());
		
		for(int i=0; i<rowNum; i++) {
			for(int j=i; j<rowNum-1; j++) {
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
		
		
		
	}//test5

	private static void test4() {
		for(int i =0; i<5; i++) {
			for(int j=0; j<i; j++) {
				System.out.print(" ");	
			}
			for(int j=i; j<=i; j++) {
				System.out.print("87654");	
			}
			System.out.println();
		}
		
		
		
	}//t4

	private static void test3() {
		
		for(int i=0; i<5; i++) {
			for(int j=i; j<5; j++) {
				System.out.print(" ");			
			}
			for(int j=0; j<=i; j++) {
				System.out.print("*");
			}
			for(int j=0; j<i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		
		
		
	}//test3

	private static void test2() {
		for (int i=0; i<5; i++) { //행관리
			for(int j=i; j<5; j++) {
				System.out.print(" ");
			}
			for(int j=0; j<=i; j++) { //열관리
				System.out.print("*");
			}
			System.out.println();
		}
	
	
	}//test2

	private static void test1() {
		
	for (int i=0; i<5; i++) { //행관리
		for(int j=0; j<i; j++) {
			System.out.print(" ");
		}
		for(int j=i; j<5; j++) { //열관리
			System.out.print("*");
		}
		System.out.println();
	}
	
	
	}//test1
	
}
