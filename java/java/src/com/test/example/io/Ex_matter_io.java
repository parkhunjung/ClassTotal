package com.test.example.io;

import java.io.File;

import java.util.Scanner;

public class Ex_matter_io {
	
	private static Scanner scan;
	private static int count = 0;
	
	static {
		scan = new Scanner(System.in);
	}
	
	public static void main(String[] args) {
		
	
//		m1();
		m2();
//		m3();
//		m4();
//		m5();
//		m6();
//		m7();
//		m8();
//		m9();
//		m10();
		
	}
	
	private static void m10() {
		// TODO Auto-generated method stub
		
	}

	private static void m9() {
		// TODO Auto-generated method stub
		
	}

	private static void m8() {
		// TODO Auto-generated method stub
		
	}

	private static void m7() {
		String aFileName = "";
		String bFileName = "";
		String sameName = "";
		
		
		String path = "D:\\Class\\Java\\동일 파일\\MusicA";
		File aFile = new File(path);
		
		String path2 = "D:\\Class\\Java\\동일 파일\\MusicB";
		File bFile = new File(path2);
		
		
		if(aFile.exists()) {
			if(bFile.exists()) {
				File[] list = aFile.listFiles();
				File[] list2 = bFile.listFiles();
				
				
				for(File aSub : list) {
					for(File bSub : list2) {
						if(aSub.isFile()){
							if(aSub.getName().equals(bSub.getName())) {
								
								break;
							}
							
						}
					}
					System.out.println(aSub.getName());
				}
			}
		}
		
	
	}//m7
	
	
	private static void m6() {
		
		String path = "D:\\Class\\Java\\파일 제거";
		File file = new File(path);
		
		if (file.exists()) {
			
			File[] list = file.listFiles();
			
			for(File sub : list) {
				
				if(sub.isFile()) {
					if(sub.length() == 0) {
						sub.delete();
						count++;
					}
				}
			}
			
		}//if끝
		
		System.out.printf("총 %d개의 파일을 삭제했습니다.", count);
		
		
		
	}//m6

	private static void m5() {
		
		String path = "D:\\Class\\Java\\확장자별 카운트";
		File file = new File(path);
		int gif = 0;
		int jpg = 0;
		int png = 0;
		
		if(file.exists()) {
			
			File[] list = file.listFiles();
			
			for(File sub : list) {
				
				if(sub.isFile()) {
					int index = sub.getName().lastIndexOf(".");
					String temp = sub.getName().substring(index+1);
					
					if(temp.equals("gif")) {
						gif += 1;
					}else if(temp.equals("jpg")) {
						jpg += 1;
					}else if(temp.equals("png")) {
						png += 1;
					}
					
				}
				
				
				
			}
			
			System.out.printf("*.gif = %d개\n*.jpg = %d개\n*.png = %d개\n", gif, jpg, png);
			
			
		}
		
		//HashMap으로 적용해서 풀어보기
		
		
	}//m5

	private static void m4() {
		
		String path = "D:\\Class\\Java\\음악 파일";
		File file = new File(path);
		int musicCount = 0;
		
		
		if(file.exists()) {
			
			File[] list = file.listFiles();
			
			for(File music : list) {
				
				musicCount++;
				
				if(musicCount > 0) {
					System.out.printf("[%03d]%s", musicCount, music.getName());
				}
				
				System.out.println(music.getName());
				
			}
			
			
		}
		
		
		
		
		
		
	}//m4

	private static void m3() {
		System.out.println("파일 이동을 실행합니다.");
		System.out.print("같은 이름을 가지는 파일이 이미 존재합니다. 덮어쓸까요?(y/n) : ");
		String cover = scan.nextLine();
		
		String path = "D:\\Class\\Java\\File\\AA\\test.txt";
		File file = new File(path);
		
		if(file.exists()) {
			
			String path2 = "D:\\Class\\Java\\File\\BB\\test.txt";
			File file2 = new File(path2);
			
			if(cover.equals("y")) {
				file2.delete();
				file.renameTo(file2);
				System.out.println("y. 파일을 덮어썼습니다.");
			}else if(cover.equals("n")) {
				System.out.println("n. 작업을 취소합니다.");
			}else {
				System.out.println("잘못 입력 하셨습니다.");
			}
		}
		
		
		
	}//m3

	//D:\Class\Java\editplus
	
	private static void m2() {
		
		System.out.print("폴더 선택 : ");
		String path = scan.nextLine();
		
		System.out.print("확장자 : ");
		String extension = scan.nextLine();
		
		File dir = new File(path);
		
		
		
		if(dir.exists()) {
			
			
			
			
			File[] list = dir.listFiles();
			
			for (File sub : list) {
				
				if(sub.isFile()) {
					
					int index = sub.getName().lastIndexOf(".");
					String temp = sub.getName().substring(index+1);
					
					if(temp.equals(extension)) {
						System.out.println(sub.getName());
					}
				}
				
			}
		}
		
		
		
	}//m2

	//D:\Class\Java\File\test.txt
	
	private static void m1() {
		
		int b = 1;
		int kb = b*1024;
		int mb = kb*1024;
		int gb = mb*1024;
		int tb = gb*1024;
		
		
		System.out.print("파일 경로 : ");
		String path = scan.nextLine();
		
		File file = new File(path);
		
		if(file.exists()) {
			int index = path.lastIndexOf(".");
			String temp = path.substring(index+1);
			
			
			System.out.printf("파일명 : %s\n종류 : %s 파일\n"
					, file.getName()
					, temp);
			if(file.length() > 0 && file.length() < kb) {
				System.out.printf("파일 크기 : %sB", file.length());
			}else if(file.length() >= kb && file.length() < mb) {
				System.out.printf("파일 크기 : %sKB", file.length()/1024);
			}else if(file.length() >= mb && file.length() < gb) {
				System.out.printf("파일 크기 : %sMB", file.length()/1024/1024);
			}else if(file.length() >= gb && file.length() < tb) {
				System.out.printf("파일 크기 : %sGB", file.length()/1024/1024/1024);
			}else {
				System.out.printf("파일 크기 : %sTB", file.length()/1024/1024/1024/1024);
			}
			
			
		}
		
		
		
	}//m1
	
	private static String getExtension(String name) {
		
		int index = name.lastIndexOf(".");
		
		return name.substring(index);
		
		
	}
	
}











