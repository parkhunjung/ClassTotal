package example;

import java.util.Random;

public class Box {
	
	Macaron[] list = new Macaron[10];
	
	public void cook() throws Exception {
		System.out.println("마카롱을 10개 만들었습니다.");
		Random rnd = new Random();
		
		
		
		int[] data = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
		String[] data2 = {"red", "blue", "yellow", "white", "pink", "purple", "green", "black"};
		int[] data3 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ,20};
	
		for (int i=0; i<list.length; i++) {
			
			list[i] = new Macaron();
			list[i].setSize(data[rnd.nextInt(data.length)]); 
			list[i].setColor(data2[rnd.nextInt(data2.length)]);
			list[i].setThick(data3[rnd.nextInt(data3.length)]);
			
		}
	}
	
	public void check() throws Exception {
		
		int success = 0;
		int fail = 0;
		
		for (int i=0; i<list.length; i++) {
			
				if((list[i].getSize() < 8 || list[i].getSize() >14) 
					|| (list[i].getColor().equals("black")) 
					|| (list[i].getThick() < 3 || list[i].getThick() > 18)) {
					
					fail += 1;
				}else {
					success += 1;
				}
		
		}
			System.out.printf("합격 개수 : %d개\n", success);
			System.out.printf("불합격 개수 : %d개\n", fail);
		
	}
	public void list() {
		
		for (int i=0; i<list.length; i++) {
			
			System.out.printf("%d번 마카롱 : ", i+1);
			if((list[i].getSize() < 8 || list[i].getSize() >14) 
					|| (list[i].getColor().equals("black")) 
					|| (list[i].getThick() < 3 || list[i].getThick() > 18)) {
				list[i].info();
				System.out.println("불합격");
			}else {
				list[i].info();
				System.out.println("합격");
			}
			
		}
	
	}
	
	
}
