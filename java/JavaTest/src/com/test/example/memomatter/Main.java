package com.test.example.memomatter;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Scanner;

public class Main {
	
	private static UI ui;
	private static Scanner scan;
	private static ArrayList<Memo> list;
	
	
	static {
		ui = new UI();
		scan = new Scanner(System.in);
		list = new ArrayList<Memo>();
		
	}
	
	public static void main(String[] args) {
		
		System.out.println("test");
		
		load();
		
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
		
		save();
		
	}

	private static void save() {
		
		//list -> memo.dat 덮어쓰기
		try {
			
			BufferedWriter writer = new BufferedWriter(new FileWriter(Resource.MEMO)) ;
			
			for(Memo m : list) {
				
				writer.write(String.format("%s|%s|%s|%s\r\n"
						, m.getName()
						, m.getDate()
						, m.getTitle()
						, m.getContent()));
			}
			
			
			writer.close();
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
		}
		
		
	}

	private static void load() {
		
		//memo.dat -> list 복사하기
		
		try {
			
			BufferedReader reader = new BufferedReader(new FileReader(Resource.MEMO));
			
			String line = null;
				
			while ((line = reader.readLine()) != null)	{
				
				
				String[] temp = line.split("\\|");
				
				//line(메모 1건) -> memo 객체 1개
				Memo m = new Memo();
				
				m.setName(temp[0]);
				m.setDate(temp[1]);
				m.setTitle(temp[2]);
				m.setContent(temp[3]);
						
				list.add(m); // 메모 목록에 추가하기
				
				
			}
				
			reader.close();
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
		}
		
		
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
		
		//파일 쓰기 > list에 Memo 객체 추가
		Memo m = new Memo();
		
		m.setName(name);
		m.setDate(date);
		m.setTitle(title);
		m.setContent(content);
		
		list.add(m);
		
		ui.pause(UI.ADD);		
		
	}

	private static void list() {
		
		//ui.title("메모 읽기");
		//ui.title(2);
		ui.title(UI.LIST);
		
		System.out.println("[이름]\t[날짜]\t\t[제목]\t[내용]");
		
		for(Memo m : list) {
			
			System.out.printf("%s\t%s\t%s\t%s\n"
							, m.getName()
							, m.getDate()
							, m.getTitle()
							, m.getContent());
		}
		
		
		
		
	}
	

	

}













