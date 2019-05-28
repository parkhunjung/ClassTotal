package com.test.example.memo;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Calendar;
import java.util.Scanner;

public class Main {
	
	private static UI ui;
	private static Scanner scan;
	
	static {
		ui = new UI();
		scan = new Scanner(System.in);
	}
	
	public static void main(String[] args) {
		
		boolean loop = true;
		
		ui.begin();
		
		while (loop) {
			
			//메뉴 > 선택 > 실행
			ui.menu();
			
			switch(scan.nextLine()) {
				case "1":
					add();
					break;
				case "2":
					list();
					break;
				default:
					loop = false;
					break;
			}
			
			
		}
		
		ui.end();
		
	}

	private static void add() {
		
		//ui.title("메모 쓰기");
		//ui.title(1);
		ui.title(UI.ADD);
		
		System.out.print("이름 : ");
		String name = scan.nextLine();
		
		System.out.print("제목 : ");
		String title = scan.nextLine();
		
		System.out.print("내용 : ");
		String content = scan.nextLine();
		
		Calendar now = Calendar.getInstance();
		String date = String.format("%tF", now);
		
		
		//홍길동|2019-03-06|메모입니다.|메모장을 만들고 있습니다.
		
		try {
			
			BufferedWriter writer = new BufferedWriter(new FileWriter(Resource.MEMO, true));
			
			writer.write(String.format("%s|%s|%s|%s\r\n", name, date, title, content));
			
			writer.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		ui.pause(UI.ADD);		
		
	}

	private static void list() {
		
		//ui.title("메모 읽기");
		//ui.title(2);
		ui.title(UI.LIST);
		
		
		try {
			
			BufferedReader reader = new BufferedReader(new FileReader(Resource.MEMO));
			
			System.out.println("[이름]\t[날짜]\t\t[제목]\t[내용]");
			
			String line = null;
			
			while((line = reader.readLine()) != null) {
				
				String[] temp = line.split("\\|");
				
				System.out.printf("%s\t%s\t%s\t%s\n", temp[0], temp[1], temp[2], temp[3]);
				
			}
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	}
	

	

}













