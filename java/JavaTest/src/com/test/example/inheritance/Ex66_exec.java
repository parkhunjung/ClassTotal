package com.test.example.inheritance;

public class Ex66_exec {
	public static void main(String[] args) throws Exception {
		
		
		//자바에서 외부 프로그램 호출하기
		// - 예외처리 필수(try)
		// - 실행 파일의 전체 경로
		// - 환경 변수 path 등록 > 실행 파일명 호출
		
		
		//메모장 실행
		// - C:\Windows\System32\notepad.exe
		// - notepad.exe
		
//		Process notepad = new ProcessBuilder("notepad.exe").start();
//		Process notepad = new ProcessBuilder("mspaint.exe").start();
//		Process notepad = new ProcessBuilder("explorer.exe").start();
//		Process notepad = new ProcessBuilder("calc.exe").start();
//		Process notepad = new ProcessBuilder("C:\\Program Files\\EditPlus\\editplus.exe").start();
		
//		Process notepad = new ProcessBuilder("notepad.exe", "D:\\Class\\Java\\JavaTest\\src\\com\\test\\example\\inheritance\\Ex65_Scanner.java").start();
		
		
		//영화관 > 미리보기
		
		Process notepad = new ProcessBuilder("C:\\\\Program Files (x86)\\\\Google\\\\Chrome\\\\Application\\\\Chrome.exe", "").start();
		
		
		
		System.out.println("실행 완료");
		
		
		
		
		
	}
	
	
}











