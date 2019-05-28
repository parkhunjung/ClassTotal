package example;

public class Ex28_12_for {
	public static void main(String[] args) {
		
		
		perfectNum();
	}//main

	private static void perfectNum() {
		
		int i,j,sum;
		String txt="";
		
		for (i=1; i<100; i++) {
			sum = 0;
			txt="";
			for(j=1; j<i; j++) {
				if(i % j == 0){
					sum += j;
					txt = txt+j+" ";
				}
			}
			if(i == sum) System.out.printf("%d = [%s]\n", i, txt);	
			
		}//for
	
	}//perfectNum
	
	
	
}
