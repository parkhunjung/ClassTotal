package com.test.example.memo;

import java.util.Scanner;

public class UI {
	
	public final static int ADD = 1;
	public final static int LIST = 2;
	
	public void begin() {
		System.out.println("[메모장]");
	}
	
	public void end() {
		System.out.println("종료.");
	}
	
	public void menu() {
		System.out.println("------------");
		System.out.println("1. 메모 쓰기");
		System.out.println("2. 메모 읽기");
		System.out.println("0. 종료");
		System.out.println("------------");
		System.out.print("선택(번호) : ");
	}

	public void title(int n) {
		
		if (n == UI.ADD) {
			System.out.println("[메모 쓰기]");
		} else if (n == UI.LIST) {
			System.out.println("[메모 읽기]");
		}
		
	}

	public void pause(int n) {
		
		Scanner scan = new Scanner(System.in);
		
		if (n == UI.ADD) {
			System.out.println("메모 쓰기 완료.\n계속하시려면 엔터를 입력하세요.");
		} else if (n == UI.LIST) {
			System.out.println("메모 읽기 완료.\n계속하시려면 엔터를 입력하세요.");
		}
		
		scan.nextLine();
	}

}










