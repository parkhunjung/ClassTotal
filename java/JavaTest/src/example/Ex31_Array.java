package example;
import java.util.Calendar;

public class Ex31_Array {
	public static void main(String[] args) {
		
		
		//배열,Array
		// - 반복문(for) + 문자열(조작) -> 배열
		
		//배열
		// - 같은 자료형의 변수들을 여러개 모아놓은 집합
		// - 집합 자료형
		// - 참조형(Reference Type)
		
		//m1();
		//m2();
		//m3();
		//m4();
		//m5();
		//m6();
		//m8();
		m9();
		
		
		
	}//main


	private static void m9() {
		
		//배열 깊은 복사 -> 메소드로
		int[] n1 = new int[3];
		n1[0] = 100;
		n1[1] = 200;
		n1[2] = 300;
		
		int[] n2 = deepCopy(n1); // 깊은 복사할 복사본
		
		n1[0] = 500;
		System.out.println(n2[0]);
		
	}


	private static int[] deepCopy(int[] n) {
		
		int[] temp = new int[n.length]; //복사본
		
		for(int i=0; i<n.length; i++) {
			temp[i] = n[i];
		}
		
		return temp; //int[]
		
		
	}


	private static void m8() {
		
		//배열복사
		int[] n1 = new int[3];
		n1[0] = 100;
		n1[1] = 200;
		n1[2] = 300;
		
		//얕은 복사, shallow copy // 주소값 복사
		int[] n2 = n1;
		
		//깊은 복사, Deep copy // 값 복사
		int[] n3 = new int[n1.length];
		
		//n3[0] = n1[0];
		for (int i=0; i<n1.length; i++) {
			n3[i] = n1[i];
		}
		n1[0] = 1000;
		System.out.println(n3[0]); //깊은복사기에 복사할당시의 값인 100을 찍는다. 
		
		
	}// m8


	private static void m6() {
		
		//배열 복사
		int a = 10;
		int b;
		
		b = a;
		System.out.println(b);
		
		a = 20;
		
		System.out.println(b); // 그냥 복사했을때는 b의 결과값은 변화가 없었다.
		
		int[] nums1 = new int[3];
		nums1[0] = 100;
		nums1[1] = 200;
		nums1[2] = 300;
		
		int[] nums2;
		
		//int[] = int[]
		nums2 = nums1; // 배열끼리의 복사 (모든 참조형에서 일어나는 현상(단, 문자열 빼고)
		
		System.out.println(nums2[0]);
		
		nums1[0] = 500;
		
		System.out.println(nums2[0]); // 배열의 복사는 nums1을고쳤을뿐인데 nums2도 고쳐졌다. 이유는 주소값을 공유하기때문이다.
		
		
		m7(nums1);
		System.out.println(nums1[0]);
	}//m6
	
	private static void m7(int[] nums) {
		
		nums[0] = 1000;
	
	}//m7
	

	private static void m5() {
		
		//**메모리의 모든 공간은 한번 만들어지면 불변이다.(용도(형태), 길이)
		// -> 배열에도 동일하게 적용 -> 배열의 길이는 불변이다.
		
		//배열의 길이를 동적 할당이 가능하다.
		int length = 3; //키보드입력;
		
		int[] nums = new int[length];
		System.out.println(nums.length);
		
		
		
	}// m5

	private static void m4() {
		
		//배열 + 여러 자료형
		
		//정수 배열(byte, short, int, long)
		short[] list1 = new short[3];
		list1[0] = 10;
		System.out.println(list1[0]);
		
		
		//실수 배열(float, double)
		double[] list2 = new double[3];
		list2[0] = 3.14;
		System.out.println(list2[0]);
		
		//문자 배열 -> 문자열
		char[] list3 = new char[3];
		list3[0] = '가';
		System.out.println(list3[0]);
		
		//논리 배열
		boolean[] list4 = new boolean[3];
		list4[0] = true;
		System.out.println(list4[0]);
		
		// ----------------------------------
		
		//문자열 배열
		String[] list5 = new String[3];
		list5[0] = "홍길동";
		System.out.println(list5[0]);
		
		//참조형 배열
		Calendar[] list6 = new Calendar[3];
		list6[0] = Calendar.getInstance();
		
		
		
		
	}//m4

	private static void m3() {
		
		//list -> (길이가 3인)int 배열
		int[] list = new int[300];
		
		//배열의 방을 원하는 순서대로 접근 -> 배열 탐색
		for (int i=0; i<list.length; i++) {
			//*****루프 변수의 변화 -> list 방 번호의 변화
			list[i] = i;
		}
		
		for (int i=0; i<list.length; i++) {
			System.out.printf("list[%d] = %d\n", i, list[i]);		
		}
		
		//주의 (문자열 동일)
		// - ArrayIndexOutOfBoundsException : 500 => 어레이범위를 벗어난것 이에러 기억***
		//System.out.println(list[500]);
		
	} //m3

	private static void m2() {
		//요구사항] 학생 3명 -> 국어점수 -> 총점,평점
		//추가사항] 학생 300명
		
		//1. 변수 3개 만들기
		//배열 만들기
		// - 자료형[]변수명 = new 자료형[길이]
		
		int[] kors = new int[300];
		kors[0] = 100;
		kors[1] = 90;
		kors[2] = 80;
		
//		int index = 0;
//		kors[index]
		
		
		//int total = kors[0]+kors[1]+kors[2];
		int total = 0; //누적 변수
		for (int i=0; i<kors.length; i++) {
			total += kors[i];
			
		}
		
		
		double avg = (double)total / kors.length;
		
		System.out.printf("총점은 %d점이고 평균은 %.1f점 이다.\n", total, avg);
		
	} // m2

	private static void m1() {
		//요구사항] 학생 3명 -> 국어점수 -> 총점,평점
		//추가사항] 학생 300명
		
		int kor1;
		int kor2;
		int kor3;
		//1. 변수 + 297개
		
		kor1 = 100;
		kor2 = 90;
		kor3 = 80;
		// + 297
		
		int total = kor1 + kor2 + kor3; // + kor4 + kor5 .. + kor300
		double avg = total / 3.0; // 300.0
		
		System.out.printf("총점은 %d점이고 평균은 %.1f점 이다.\n", total, avg);
		
		
		
		
		
	}// m1
}
