package com.test.example.io;

import java.io.File;
import java.util.Calendar;

import com.test.util.MyFile;

public class Ex78_io {
	
	//누적 변수
	private static int fileCount = 0;
	private static int dirCount = 0;
	private static int dirSize = 0;
	
	public static void main(String[] args) {
	
		
//		m1();
//		m2();
//		m3();
//		m4();
		
		//파일 이름, 이동, 삭제
//		m5();
//		m6();
		
		//------------
		//폴더조작
		//폴더 생성,이름,이동,삭제
//		m7();
//		m8();
//		m9();
//		m10();
//		m11(); // 굉장히 비효율
		m12(); //****** 굉장히 중요함
		
		
		
	}

	private static void m12() {
		
		//폴더 - 5,408개의 파일
		String path = "C:\\eclipse";
		File dir = new File(path);
		
		countFile(dir);
		
		System.out.printf("총 파일 개수 : %,d개\n", fileCount);
		System.out.printf("총 폴더 개수 : %,d개\n", dirCount);
		System.out.printf("총 폴더 크기 : %,dMB\n", dirSize/1024/1024);
		
		
		
	}//m12 가 포인트. 이것이 재귀방법
	
	private static void countFile(File dir) {
	
		try {	
			//A. 목록 가져오기
			File[] list = dir.listFiles();
			
			//B. 파일 카운트 세기
			for(File file : list) {
				if(file.isFile()) {
					fileCount++;
					//이놈이 가지는 파일크기를 누적시키면 파일의 총크기다.
					dirSize += file.length();
					//여기서 파일을 삭제한다고 시키면 자식내의 모든파일을 쓸고다닌다.
				}
			}
			//C. 자식 파일 탐색해서 동일한 행동하기
			for(File sub : list) {
				if(sub.isDirectory()) {
					dirCount++; // 자식 폴더의 개수?
					//sub를 대상으로 부모 폴더가 했던 일을 반복
					countFile(sub);
					
				}
			}
		}catch (Exception e){
			
		}
		//여기서 dir을 삭제시키면 빈폴더가 되기때문에 삭제가 된다.
		
		
	}//countFile
	
	private static void m11() {
		
		//재귀 메소드 작업
		//특정 폴더 지정 > 폴더내의 파일 총 개수?
		//특정 폴더 지정 > 폴더내의 파일 총 크기?
		//특정 폴더 지정 > 폴더내의 폴더 총 개수?
		//특정 폴더 지정 > 폴더내의 내용물이 있어도 삭제하기?
		
		//폴더 - 5,408개의 파일
		String path = "C:\\eclipse";
		
		//파일 개수 누적 변수
		int count = 0;
		
		File dir = new File(path);
		
		File[] list = dir.listFiles(); //A
		
		//자식 파일의 개수
		//B.
		for(File file : list) {
			if(file.isFile()) {//C.
				count++;
			}
		}
		
		//자식 폴더 접근(같은 행동을 하기 위해서)
		//D.
		for (File sub : list) {
			if(sub.isDirectory()) {
				
				//sub
				//손자파일의 개수를 세야함
				//A.
				File[] sublist = sub.listFiles(); // 50라인에 있는녀석과 똑같은 시작을 뜻한다. //A를 뜻하는소리다.
				//B.
				for(File subfile : sublist) {
					if(subfile.isFile()) {//C.
						count++;
					}
				}
				
				//손자 폴더를 검색
				//D.
				for(File subsub : sublist) {
					if(subsub.isDirectory()) {
						
						//A.
						File[] subsublist = subsub.listFiles();
						//B.
						for(File subsubsubfile : subsublist) {
							if(subsubsubfile.isFile()) {
								count++;
							}
						}
						
					}
				}
				
			}
		}
		
		
		
		System.out.printf("총 파일 개수 : %,d", count);
		
		
	}

	private static void m10() {
		
		//**** 특정 폴더의 내용 보기
		// - 자식 폴더 + 자식 파일
		
		String path = "C:\\eclipse";
		File dir = new File(path);
		
		if(dir.exists()) {
			
//			String[] list = dir.list();
//			
//			for (String name : list) {
//				System.out.println(name);
//				
//				
//				//*** 자식 참조 객체 생성 > 업무상 사용 가능성이 높아진다.
//				File sub = new File(path + "\\" + name);
//				
//				System.out.println(sub.isFile());
//				
//				if(sub.isFile()) {
//					
//					System.out.println(sub.length());
//					
//				}
//			}
			// 노가다를 한것
			
			
			//미리 만들어진 메소드 사용
//			File[] list = dir.listFiles();
//			
//			for (File sub : list) {
//				System.out.println(sub.getName());
//				System.out.println(sub.isFile());
//			}
			
			
			
			File[] list = dir.listFiles();
			
			//자식 폴더
			for (File sub : list) {
				
				if(sub.isDirectory()) {
					System.out.printf("[%s]\t\t%d\n", sub.getName(), sub.lastModified());
				}
				
			}
			
			for (File sub : list) {
				
				if(sub.isFile()) {
					System.out.printf("- %s\t%d\t%d\n", sub.getName(), sub.length(), sub.lastModified());
				}
			}
			
			
			
			
		}
		
		
		
	}

	private static void m9() {
		
		//폴더 삭제하기
		// - 빈 폴더만 가능
		// - 자식 폴더와 자식 파일을 개발자가 직접 삭제를 해서 빈 폴더를 만든 후에 삭제
		String path = "D:\\Class\\Java\\File\\BBB";
		File dir = new File(path);
		
		if(dir.exists()) {
			//자식파일이나 자식폴더가 있을시 삭제 불가능
			System.out.println(dir.delete());
		}
		
		
		
	}//m9

	private static void m8() {
		
		//폴더명 바꾸기 + 이동하기
		//AAA -> BBB > AAA
		
		String path = "D:\\Class\\Java\\File\\AAA";
		File dir = new File(path);
		
		String path2 = "D:\\Class\\Java\\File\\BBB\\AAA";
		File dir2 = new File(path2);
		
		if(dir.exists()) {
			//폴더 이동 => 내용물도 같이 이동
			boolean result = dir.renameTo(dir2);
			System.out.println(result);
		}
		
		String path3 = "D:\\Class\\Java\\File\\CCC";
		File dir3 = new File(path3);
		
		String path4 = "D:\\Class\\Java\\File\\DDD";
		File dir4 = new File(path4);
		
		if(dir3.exists()) {
			dir3.renameTo(dir4);
			
		}
	}//m8

	private static void m7() {
		
		//폴더 생성하기
		String path = "D:\\Class\\Java\\File\\CCC";
		File dir = new File(path);
		
		if(!dir.exists()) {
			//없을때
			dir.mkdir();
			System.out.println("생성 완료");
		}else {
			//있을때
			System.out.println("같은 폴더의 이름이 있습니다.");
		}
		
		//회원의 자료를 각자 폴더를 만들어서 관리
		String[] member = {"홍길동", "아무개", "호호호", "하하하", "후후후"};
		
		for (String name : member) {
			path = String.format("D:\\Class\\Java\\File\\[개인폴더] %s님", name);
			File temp = new File(path);
			
			temp.mkdir();
			
			System.out.println(name + " 개인폴더 생성 완료");
			
		}
		
		//요구사항] 2019-01-01 ~ 2019-12-31 : 날짜별 폴더 365개 만들어주세요.
		//"D:\\Class\\Java\\File\\2019-01-01";
		//"D:\\Class\\Java\\File\\2019-01-02";
		//"D:\\Class\\Java\\File\\2019-01-03";
		//...
		//"D:\\Class\\Java\\File\\2019-12-31";
		
		Calendar c = Calendar.getInstance();
		
		c.set(2019, 0, 1);
		
		while(c.get(Calendar.YEAR) == 2019) {
			System.out.println(String.format("%tF", c));
			
			path = "D:\\Class\\Java\\File\\" + String.format("%tF", c);
			dir = new File(path);
			dir.mkdir();
			
			c.add(Calendar.DATE, 1);
			
		}
		
		
	}//m7

	private static void m6() {
		
		//파일 삭제
		String path = "D:\\Class\\Java\\File\\BBB\\아이언맨.mp4";
		File file = new File(path);
		
		if(file.exists()) {
			
			if(file.delete()) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
			}
			
		}
		
		
		
		
		
		
		
		
		
		
	}

	private static void m5() {
		
		//파일 이동하기
		//1. File/AAA 폴더 생성
		//2. File/BBB 폴더 생성
		//3. File/AAA/move.txt
		//AAA -> BBB 이동
		
		String path = "D:\\Class\\Java\\File\\AAA\\move.txt";
		File file = new File(path);
		
		if (file.exists()) {
			
			//이동
			String path2 = "D:\\Class\\Java\\File\\BBB\\아이언맨.mp4";
			File file2 = new File(path2);
			
			//이동시 동일한 파일이 존재하면 작업을 취소합니다.(덮어쓰기 안함)
			//덮어쓰기를 하고 싶으면?? 1. 파일 삭제 2. 이동
			file.renameTo(file2);
			
			System.out.println("이동 완료");
			
		}
		
		
		
	}

	private static void m4() {
		
		String path = "D:\\Class\\Java\\File\\test.txt";
		File file = new File(path);
		
		if(file.exists()) {
			
			//외부 프로젝트의 파일 내용 참조 > *.jar 파일 참조
			//*.jar : zip 파일(압축 파일) + class 파일들(컴파일된 실행 파일)
			//*.jar : 자바의 배포의 기본 단위
			
			MyFile my = new MyFile();
			
			if(my.rename(path, "aa.txt")) {
				System.out.println("이름 바꾸기 성공");
			}else {
				System.out.println("이름 바꾸기 실패");
			}
			
		}
		
		
		
		
	}

	private static void m3() {
		
		//파일 조작
		// - 생성(X), 복사(X), 이동(O), 파일명수정(O), 삭제(O) 등
		
		//test.txt => data.txt로
		String path = "D:\\Class\\Java\\File\\test.txt";
		
		File file = new File(path);
		
		if(file.exists()) {
			
			//이름바꾸기
			String path2 = "D:\\Class\\Java\\File\\data.txt";
			File file2 = new File(path2);
			
			file.renameTo(file2);
			System.out.println("완료");
			
		}else {
			System.out.println("파일 없음");
		}
		
		
	}

	private static void m2() {
		
		//디렉토리(폴더) 참조
		String path = "D:\\Class\\Java\\File";
		
		//디렉토리 참조 객체
		File dir = new File(path);
		
//		System.out.println(dir.exists());
		
		if(dir.exists()) {
			System.out.println(dir.getName());			//폴더명
			
			System.out.println(dir.isFile()); 			//false > 파일인지?
			
			System.out.println(dir.isDirectory());		//true > 폴더인지?
			
			System.out.println(dir.length());			//*** 폴더크기는 항상 0이다. > 직접 구현

			System.out.println(dir.getPath());			//상대경로
			
			System.out.println(dir.getAbsolutePath());	//절대경로
			
			// *** 위에는 자주쓰는것 아래는 알아만두는것
			// ====================================================================
			
			System.out.println(dir.lastModified());	//수정된 시간
			
			System.out.println(dir.canRead());		//읽기전용이니?
			
			System.out.println(dir.canWrite());		//쓰기할수있니?
			
			System.out.println(dir.isHidden());		//숨겨진 파일이니?
			
			System.out.println(dir.canExecute());	
			
		}else {
			System.out.println("폴더가 없습니다.");
		}
		
		
	}

	private static void m1() {
		
		//Input / Output -> 10
		//1. 콘솔 IO
		//2. 파일 IO
		//3. DB IO
		//4. 네트워크 IO
		//5. 메모리 IO
		
		//파일,디렉토리 접근 + 조작 > 
		
		//외부의 파일에 접근하기
		//1. 경로
		String path = "D:\\Class\\Java\\File\\test.txt"; //해당 파일의 경로, 경로 path
		
		//2. 파일 참조 (객체)
		File file = new File(path);
		
		//해당 경로의 파일
		//System.out.println(file.exists());
		
		if (file.exists()) {
			
			
			//업무 처리
			//파일 정보 읽기
			System.out.println(file.getName());			//test.txt => 파일명
			
			System.out.println(file.isFile()); 			//true > 파일인지?
			
			System.out.println(file.isDirectory());		//false > 폴더인지?
			
			System.out.println(file.length());			//13바이트 > 파일 사이즈

			System.out.println(file.getPath());			//상대경로
			
			System.out.println(file.getAbsolutePath());	//절대경로
			
			// *** 위에는 자주쓰는것 아래는 알아만두는것
			// ====================================================================
			
			System.out.println(file.lastModified());	//수정된 시간
			
			System.out.println(file.canRead());			//읽기전용이니?
			
			System.out.println(file.canWrite());		//쓰기할수있니?
			
			System.out.println(file.isHidden());		//숨겨진 파일이니?
			
			System.out.println(file.canExecute());		
			
		}else {
			System.out.println("파일이 없습니다.");
		}
		
		
		
		//
		File rt = new File("C:\\Program Files\\Java\\jdk1.8.0_201\\jre\\lib\\rt.jar");
		
		if (rt.exists()) {
			
			System.out.println((rt.getName()));
			System.out.println(rt.length());
			
		}else {
			System.out.println("파일 없음");
		}
		
		
		
		
		
		
	}
	
}

























