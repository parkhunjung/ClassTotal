package example;

public class Ex28_11_for {
	public static void main (String[] args) {
		
		
		primeNum();
	}//main

	private static void primeNum() {
		boolean flag;
		
		for (int i=2; i<=100; i++) {
				flag = true;
			for (int j=2; j<i; j++) {
				if(i%j == 0 ) {
					flag = false;
				}
				
			}
			if (flag == true) {
				System.out.printf("%d, ", i);
			}
		}
		
		
		
	}//primeNum
	
	
}
