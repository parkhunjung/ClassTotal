package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex33_Array_matter {
	public static void main (String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		//matter1(reader);
		//matter2(reader);
		//matter3(reader);
		//matter4(reader);
		//matter5(reader);
		//matter6(reader);
		//matter7(reader);
		matter10(reader);
		
	}


	private static void matter10(BufferedReader reader) throws Exception {
		String n="*";
		
		System.out.print("국어 점수 : ");
		int kor = Integer.parseInt(reader.readLine());
		
		System.out.print("영어 점수 : ");
		int eng = Integer.parseInt(reader.readLine());
		
		System.out.print("수학 점수 : ");
		int math = Integer.parseInt(reader.readLine());
		
		String[][] score = new String[10][3];
		int len = score.length;
		int len2 = score[0].length;
		
		for (int i=0; i<len; i++) {
			for (int j=2; j<len2; j++) {
				
				score[i][j] = n;
				System.out.print(score[i][j]+"\t");
			}
			System.out.println();
		}
		System.out.print("국어\t영어\t수학");
		
		
		
	}


	private static void matter7(BufferedReader reader) throws Exception {
		System.out.print("테이블의 행 : ");
		int row = Integer.parseInt(reader.readLine());
		
		System.out.print("테이블의 열 : ");
		int column = Integer.parseInt(reader.readLine());
		
		int[][] nums = new int[row][column];
		int n=1;
		int rLen = nums.length;
		int cLen = nums[0].length;
		int sum = 0;
		
		for(int i=0; i<rLen-1; i++) {
			for(int j=0; j<cLen-1; j++) {
//				if() {
//					
//				}
				nums[i][j] = n;
				n++;
				
				
			}
		}
		
		
		
		
		print(nums);
		
	}//matter7


	private static void matter6(BufferedReader reader) throws Exception {
		System.out.print("테이블의 행 : ");
		int row = Integer.parseInt(reader.readLine());
		
		System.out.print("테이블의 열 : ");
		int column = Integer.parseInt(reader.readLine());
		
		int[][] nums = new int[row][column];
		int n=0;
		
		for (int i=0; i<(row+column)-1; i++) { // 대각선
			for (int j=0; j<nums.length; j++) { // 행
				
				int d = i-j; //열
				if(d >= 0 && d < nums.length) {
					n++;
					nums[j][d] = n;
				}
			}
		}
		
		
		print(nums);
		
		
		
	}//matter6


	private static void matter5(BufferedReader reader) throws Exception {
		System.out.print("테이블의 행 : ");
		int row = Integer.parseInt(reader.readLine());
		
		System.out.print("테이블의 열 : ");
		int column = Integer.parseInt(reader.readLine());
		
		int[][] nums = new int[row][column];
		int n = 1;
		int rLen = nums.length;
		int cLen = nums[0].length;
		
		for (int i=0; i<rLen; i++) {
			if (i % 2 == 1) {
				for(int j=1; j<cLen-1; j++) {
					nums[i][j] = n;
					n++;
				}
			}else if (i % 4 == 0){
				for(int j=2; j<cLen-2; j++) {
					nums[i][j] = n;
					n++;
				}
			}else {
				for(int j=0; j<cLen; j++) {
					nums[i][j] = n;
					n++;
				}
			}
		}
		
		print(nums);
		
	}//matter5


	private static void matter4(BufferedReader reader) throws Exception {
		System.out.print("테이블의 행 : ");
		int row = Integer.parseInt(reader.readLine());
		
		System.out.print("테이블의 열 : ");
		int column = Integer.parseInt(reader.readLine());
		
		
		int[][] nums = new int[row][column];
		int n = 1;
		int len = nums[0].length;
		
		for (int i=0; i<nums.length; i++) {
			for (int j=0; j<len; j++) {
				nums[i][j] = n;
				n++;
				
			}
			len = len-1;
			
		}
		
		print(nums);
		
	}//matter4


	private static void matter3(BufferedReader reader) throws Exception {
		System.out.print("테이블의 행 : ");
		int row = Integer.parseInt(reader.readLine());
		
		System.out.print("테이블의 열 : ");
		int column = Integer.parseInt(reader.readLine());
		
		int[][] nums = new int[row][column];
		int n = 1;
		
		for (int i=0; i<nums[0].length; i++) {
			for (int j=0; j<nums.length; j++) {
				nums[j][i] = n;
				n++;
			}
			
		}
		
		print(nums);
		
	}//matter3


	private static void matter2(BufferedReader reader) throws Exception {
		System.out.print("테이블의 행 : ");
		int row = Integer.parseInt(reader.readLine());
		
		System.out.print("테이블의 열 : ");
		int column = Integer.parseInt(reader.readLine());
		
		int[][] nums = new int[row][column];
		int n = 1;
		
		
		for (int i=nums.length-1; i>=0; i--) {
			for (int j=nums[0].length-1; j>=0; j--) {
				nums[i][j] = n;
				n++;
			}
			
		}
	
		
		print(nums);	
		
	}//matter2
	
	private static void matter1(BufferedReader reader) throws Exception {
		System.out.print("테이블의 행 : ");
		int row = Integer.parseInt(reader.readLine());
		
		System.out.print("테이블의 열 : ");
		int column = Integer.parseInt(reader.readLine());
		
		int[][] nums = new int[row][column];
		int n=1;
		
		for (int i=0; i<nums.length; i++) {
			if (i % 2 == 1) {
				for(int j=nums[0].length-1; j>=0; j--) {
					nums[i][j] = n;
					n++;
				}
			}else {
				for(int j=0; j<nums[0].length; j++) {
					nums[i][j] = n;
					n++;
				}
			}
			
		}
		
		print(nums);
		
		
		
	}//matter1

	private static void print(int[][] nums) {
		// TODO Auto-generated method stub
		for (int i=0; i<nums.length; i++) { 
			for (int j=0; j<nums[0].length; j++) { 
				System.out.printf("%5d", nums[i][j]);
			}
			System.out.println();
		}
	
	
	}//op
}
