package example;

public class Ex28_7_for {
	public static void main(String[] args) {
		
		
		outputNum();
	}//main

	private static void outputNum() {
		
		int sum = 0;
		int n = 0;
		
		
		for(int j=1; j<=100; j++) {
			if(j % 10 == 0) {
				for (int i=1; i<=j; i++) {
					sum += i;
					
				}
				System.out.printf("1 ~ %3d : %5d\n",j,sum);
				sum -= sum;
			}
		}
		
	
	}// outputNUm
}
