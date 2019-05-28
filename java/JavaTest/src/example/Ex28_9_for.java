package example;

public class Ex28_9_for {
	public static void main(String[] args) {
		
		
		outputNum();
	
	}//main

	private static void outputNum() {
		
		int sum = 0;
		
		int i=1;
		
		for(int j=0; j<20; j++) {
			i += j;
			if(i<100) {
				
				System.out.printf(" + %d", i);
				sum += i;
				}
			}
		System.out.printf(" = %d", sum);
		
	
	
	}//outputNum


}
