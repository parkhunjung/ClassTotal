package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex31_Array_matters {
	public static void main(String[] args) throws Exception {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		//matter1(reader);
		//matter2(reader);
		//matter3(reader);
		//matter4(reader);
		//matter5(reader);
		//matter6(reader);
		matter7(reader);
		
	}

	private static void matter7(BufferedReader reader) throws Exception {
		
		//배열 중간에 삭제 + Left Shift
		int[] aNum = new int[5];
		
		System.out.print("삭제 위치 : ");
		int insertNum = Integer.parseInt(reader.readLine());
		
		System.out.print("원본 : [");
		for (int i=0; i<aNum.length; i++) {
			double d = Math.random();
			aNum[i] = (int)(d*10)+1;
			System.out.printf("%d, ", aNum[i]);
		}
		System.out.print("]");
		
		System.out.println();
		System.out.println(aNum.length);
		for (int i=insertNum; i<=aNum.length-2; i++) {
			aNum[i] = aNum[i+1];
		}
		
		aNum[aNum.length-1] = 0;
		System.out.print("결과 : [");
		for(int j=0; j<aNum.length; j++) {
			System.out.printf("%d, ", aNum[j]);
			}
		System.out.print("]");
		
		
	}//matter7

	private static void matter6(BufferedReader reader) throws Exception {
		int[] aNum = new int[10];
		
		System.out.print("삽입 위치 : ");
		int insertNum = Integer.parseInt(reader.readLine());
		
		System.out.print("값 : ");
		int insertValue = Integer.parseInt(reader.readLine());
		
		System.out.print("원본 : [");
		for (int i=0; i<aNum.length; i++) {
			double d = Math.random();
			aNum[i] = (int)(d*10);
			System.out.printf("%d, ", aNum[i]);
		}
		System.out.print("]");
		
		System.out.println();
		
		for (int i=aNum.length-2; i>=insertNum; i--) {
			aNum[i]=aNum[i-1];
		} // 배열을 한칸씩 밀어내는 역할을 한다. 삽입위치부터 > 끝까지
		
		System.out.print("결과 : [");
		aNum[insertNum] = insertValue; // 삽입위치에 100을 투여
		for(int j=0; j<10; j++) {
			System.out.printf("%d, ", aNum[j]);
			}
		System.out.print("]");
		
		
	}//matter6

	private static void matter5(BufferedReader reader) throws Exception {
		System.out.print("출력하고 싶은 숫자의 개수 : ");
		int outputNum = Integer.parseInt(reader.readLine());
		System.out.print("출력하고 싶은 숫자의 범위(1~9=1, 10~19=2, 20~29=3...) : ");
		int outputRange = Integer.parseInt(reader.readLine());
		
		int[] aNum = new int[outputNum];
		int result = 0;
		
		for (int i=0; i<aNum.length; i++) {
			double d = Math.random();
			aNum[i] = (int)(d*9*outputRange)+1;
		
			//중복되는 숫자가 있다면 i를 빼고 중복이되지않을때까지 계속실행
			for (int j=0; j<i; j++) {
				if(aNum[j] == aNum[i]) {
					i--;
					break;
				}
				
			}
		}//1~9까지 난수생성
		for(int i=0; i<aNum.length; i++) {
			
			System.out.print(aNum[i] + " "); // 중복이 제거된 숫자들
		}	
		
		
	}//matter5

	private static void matter4(BufferedReader reader) throws Exception {
		System.out.print("최대 범위 : ");
		int maxRange = Integer.parseInt(reader.readLine());
		System.out.print("최소 범위 : ");
		int minRange = Integer.parseInt(reader.readLine());
		
		int result = 0;
		int[] aNum = new int[20];
		
		System.out.print("원본 : ");
		for (int i=0; i<20; i++) {
			
			double d = Math.random();
			
			int num = (int)(d*20) + 1;
			
			aNum[i] = num;
			System.out.printf("%d ", aNum[i]);
		}//1~20의 정수인 난수를 생성하여 배열에 넣음 //원본을 출력
		System.out.println(); // 원본과 결과사이에 엔터
		
		
		System.out.print("결과 : ");
		for (int i=0; i<aNum.length; i++) {
		
			if (aNum[i] < maxRange && aNum[i] > minRange) {
				result = aNum[i];
				System.out.printf("%d ", result);			
			}
		}
	
	}//matter4

	private static void matter3(BufferedReader reader) {
		int[] aNum = new int[20];
		
		for (int i=0; i<aNum.length; i++) {
		
		double d = Math.random();
		int num = (int)(d * 20) + 1; //20까지의 난수를 출력
		
		aNum[i] = num;	//배열에 집어넣기
		}
		int min = 21;
		int max = 0;
		
		print(aNum);
		
		for (int i=1; i<aNum.length; i++) {
			
			if(aNum[i] < min) {
				min = aNum[i];
			}
			if(aNum[i] > max) {
				max = aNum[i];
			}
		}
			System.out.printf("최대값 : %d \n최소값 : %d", max, min);
		
	}//matter3

	private static void matter2(BufferedReader reader) throws Exception {
		System.out.print("학생 수 : ");
		int sNum = Integer.parseInt(reader.readLine());

		String[] outputName = new String[sNum];
		
		for (int i=0; i<sNum; i++) {
			System.out.print("학생명 : ");
			String sName = reader.readLine();
			outputName[i] = sName;
		}
		
		for (int i=outputName.length-1; i>=0; i--) {
			System.out.printf("%d. %s\n", -(i-sNum), outputName[i]); //숫자는 i가 sNum의 최대숫자부터 계산하므로  i-sNum을 뺀결과값에 -를 붙여서 출력
		}
		
		
		
		
		
	}//matter2

	private static void matter1(BufferedReader reader) throws Exception {
		int num = 0;
		int[] num1 = new int[5];
		
		for(int i=0; i<5; i++) {
		System.out.print("숫자 : ");
		num = Integer.parseInt(reader.readLine());
		num1[i] = num;	
		
		}
		for(int i=num1.length-1; i>=0; i--) {
			System.out.printf("nums[%d] = %d\n",i, num1[i]);
		}
		
			
		
		
		
		
	}//matter1
	
	private static void print(int[] nums) {
		
		for (int i=0; i<nums.length; i++) {
			System.out.printf("%3d", nums[i]);
		}
		System.out.println();
	}//출력메소드
}