package example;

public class Ex33_Array {
	public static void main(String[] args) {
		
		//다차원 배열
//		m1();
//		m2();
		m3();
	}//main

	private static void m3() {
		
		int[][] nums = new int[5][5];
		int n=1;
		
		//배열의 특정 방들을 원하는 순서대로 접근해서 데이터 넣기 + i, j 통제
		for (int i=0; i<nums.length; i++) { 
			for (int j=0; j<=i; j++) { 
				nums[j][i] = n;
				n++;
			}
			
		}
		
		
		print(nums);
		
		
		
		
		
	}//m3

	private static void print(int[][] nums) {
		
		//출력만
		for (int i=0; i<nums.length; i++) { 
			for (int j=0; j<nums[0].length; j++) { 
				System.out.printf("%5d", nums[i][j]);
			}
			System.out.println();
		}
		
		
		
	}

	private static void m2() {
		
		//배열 초기화 리스트
		int[] ns1 = new int[] { 10, 20, 30 };
		int[] ns2 = { 10, 20, 30 };
		
		int[][] ns3 = new int[][] {{10, 20, 30}, {10, 20, 30}}; //2차원 배열의 초기화 리스트
		int[][] ns4 = {{10, 20, 30}, {10, 20, 30}};
		
		int[][][]ns5 = {{{10, 20, 30}, {40, 50, 60}}, {{70, 80, 90}, {100, 110, 120}}};
		int[][][]ns6 = 
			{
				{
					{10, 20, 30}, 
					{40, 50, 60}
				}, 
				{
					{70, 80, 90}, 
					{100, 110, 120}
				}
			};
		
		
		
		
	}//m2

	private static void m1() {
		
		//다차원 배열
		//2차원 배열
		
		int[] nums1 = new int[3];				// 1차원 배열
		int[][] nums2 = new int[2][3]; 			// 2차원 배열 풀어보자면 2층에 3호실 같은거라고 본다.
		
		nums2[0][0] = 100;
		nums2[0][1] = 200;
		nums2[0][2] = 300;
		
		nums2[1][0] = 400;
		nums2[1][1] = 500;
		nums2[1][2] = 600;
		
		//System.out.println(nums2.length);
		
		for (int i=0; i<nums2.length; i++) { //층수
			for (int j=0; j<nums2[0].length; j++) { //호수
				System.out.printf("nums2[%d][%d] = %d\n", i, j, nums2[i][j]);
			}
		}
	
		//자료형???
		//1. nums2 -> int[][] (int 2차원 배열입니다.)
		//2. nums2[0] -> int[] (int 1차원 배열입니다.)
		//3. nums2[0][0] -> int
		
		
		
		
	
	}//m1
}
