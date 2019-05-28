package example;

public class Ex28_6_for {
	public static void main(String[] args) {
		
		
		gugudan();
		//test();
		
	}//main

	private static void test() {
		for (int i=0; i<5; i++) {
			for (int j=0; j<5; j++) {
				System.out.print("*");
			}
		}
	}

	private static void gugudan() {
		
		//int dan = 2;
		
		for (int i=1; i<10; i++) {
			System.out.println();
			for(int j=2; j<6; j++) {
				System.out.printf("%d x %d = %2d   ",j, i, j*i );	
			}
			
		}
		System.out.println();
		for (int i=1; i<10; i++) {
			System.out.println();
			for(int j=6; j<10; j++) {
				System.out.printf("%d x %d = %2d   ",j, i, j*i );	
			}
			
		}
		
		
	}
}
