package example;

import java.util.Random;

public class Ex36_class {
	public static void main(String[] args) throws Exception {
		
		//실행 코드 용
		
//		Book book = new Book();
//		
//		book.setTitle("안녕하세요486abcABC책입니다");
//		book.setPrice(90000);
//		book.setAuthor("박헌정");
//		book.setPublisher("박헌정책출판사");
//		book.setIsbn(488291074);
//		System.out.println(book.info());
		
//		Note note = new Note();
//		
//		note.setSize("A3");
//		note.setColor("노란색");
//		note.setPage("150");
//		note.setOwnerName("박헌정박헌");
//		System.out.println(note.info());
		
		Bugles snack = new Bugles();
		
		snack.setVolume(500);
		snack.setProductDay(2019, 02, 15);
		System.out.println("가격 : " + snack.getPrice() + "원");
		System.out.println("유통 기한이 " + snack.getShelfLife() + "일 남았습니다.");
		System.out.println(snack.eat());
		
		

		Bugles snack2 = new Bugles();
		snack2.setVolume(300);
		snack2.setProductDay(2018, 07, 01);
		System.out.println("가격 : " + snack2.getPrice() + "원");
		System.out.println("유통 기한이 " + snack2.getShelfLife() + "일 남았습니다.");
		System.out.println(snack2.eat());
		
//		Shirts s1 = new Shirts();
//		
//		s1.setSize(100);
//		s1.setPrice(25000);
//		s1.setType("반팔");
//		
//		System.out.println(s1.getSize());
//		System.out.println(s1.getColor());
//		System.out.println(s1.getType());
//		System.out.println(s1.getRecommend());
//		
//		s1.info();
		
		//셔츠 x 100벌
		//참조형 배열
		int n;
		int[] ns = new int[5]; //값형 배열
		
		String s;
		String[] ss = new String[5]; //참조형 배열
		
		Shirts s1;
		
		//질문] 현재 list안에는 셔츠가 총 몇벌이 있습니까? 0벌
		//질문] 현재 list 배열안에는 셔츠 객체가 몇개 있습니까? 0벌
		Shirts[] list = new Shirts[100];
		
		Random rnd = new Random();
		//사이즈, 가격, 타입
		int[] data1 = {90, 95, 100, 105, 110};
		int[] data2 = {10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000};
		String[] data3 = {"반팔", "긴팔"};
		
		for (int i=0; i<list.length; i++) {
			list[i] = new Shirts();	
			list[i].setSize(data1[rnd.nextInt(data1.length)]);
			list[i].setPrice(data2[rnd.nextInt(data2.length)]);
			list[i].setType(data3[rnd.nextInt(data3.length)]);
			
		}
		
		for (Shirts item : list) {
			item.info();
			System.out.println();
		}
		
		
	}
}



























