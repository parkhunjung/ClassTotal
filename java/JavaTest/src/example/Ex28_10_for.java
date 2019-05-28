package example;

public class Ex28_10_for {
	public static void main(String[] args) {
		
		outputNum();
	}//main

	private static void outputNum() {
		
		int sum = 0;
		int n1 =1; //피보나치 변수
		int n2 =1;
		int n3;
		System.out.printf("%d + %d", n1, n1);
		for (int i=1; i<=10; i++) {
			n3 = n1+n2;
			if(n3 < 100) {
				
				
				n1 = n2;
				n2 = n3;
				sum += n3;
				System.out.printf(" + %d", n2);
			}
		}
			System.out.printf(" = %d", sum+2); //버려진 숫자 n1과 n2를 더해줌
		
	}//outputNum
}
