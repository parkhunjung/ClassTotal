package example;

public class Ex28_8_for {
	public static void main(String[] args) {
		
		
		outputNum();
	}//main

	private static void outputNum() {
		
		int sum = 0;
			
			for (int i=0; i<=10; i++) {
				sum += i;
			}
			System.out.printf("1 ~ 10 : %6d\n", sum);
			sum -= sum;
			//1~10까지의 합
			
			for (int i=1; i<100; i++) {
				if(i%10 == 0) {
					for(int j=i+1; j<=i+10; j++) {
						sum += j;
					}
					System.out.printf("%d ~ %3d : %4d\n", i+1, i+10, sum);
					sum -= sum;
				
				}//if
			
			
			}// for => 11~100 까지 10단위의합
		
	}//outputNum
}
