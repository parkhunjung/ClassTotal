package Teacher;

import java.util.Scanner;

public class TeacherView {

	public final static int menu = 0;
	public final static int schedule = 1;
	public final static int studentInfo = 2;
	public final static int gradeInputOutput = 3;
	public final static int gradeInput = 4;
	public final static int gradeOutput = 5;
	public final static int attendanceMGMT = 6;
	public final static int attendanceOutput = 7;
	public final static int attendanceInput = 8;
	public final static int evaluation = 9;
	public final static int consult = 10;
	public final static int login = 11;
	
	public static TeacherView view = new TeacherView();

	public void teacherMenu() { // 프로그램 시작, 교사메뉴
		System.out.println("\t\t\t――――――――――――――――――――――――――");
		System.out.println("\t\t\t[1] 강의스케줄 조회");
		System.out.println("\t\t\t[2] 성적 입출력");
		System.out.println("\t\t\t[3] 출결관리 및 조회");
		System.out.println("\t\t\t[4] 교사평가 조회");
		System.out.println("\t\t\t[5] 상담일지 조회");
		System.out.println("\t\t\t[0] 초기화면");
		System.out.println("\t\t\t――――――――――――――――――――――――――");
		System.out.print("\t\t\t선택 : ");
	}

	public void end() { // 프로그램 종료
		System.out.println("\t\t\t프로그램을 종료합니다.");
	}

	public void title(int n) { // 타이틀 출력
		
		if (n == TeacherView.menu) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t교사 메뉴\t\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.schedule) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t강의스케줄 조회\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.studentInfo) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t학생정보 조회\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.gradeInputOutput) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t성적입력 및 조회\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.gradeInput) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t성적입력\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.gradeOutput) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t성적조회\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.attendanceMGMT) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t출결관리 및 조회\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.attendanceOutput) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t출결조회\t\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.attendanceInput) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t출결입력\t\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		} else if (n == TeacherView.evaluation) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t교사평가 조회\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		
		} else if (n == TeacherView.consult) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t상담일지 조회\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");		
		} else if (n == TeacherView.login) {
			System.out.println();
			System.out.println("\t\t\t――――――――――――――――――――――――――");
			System.out.println("\t\t\t◆\t교사 계정 로그인\t◆");		
			System.out.println("\t\t\t――――――――――――――――――――――――――");
		}

		
	}

	public void pause() throws InterruptedException { // 프로그램 넘어가기 전에 출력
		
		System.out.println("\t\t\t――――――――――――――――――――――――――");
		System.out.println("\t\t\t계속하려면 엔터를 입력하세요.");
		Scanner scan = new Scanner(System.in);
		scan.nextLine();

		clearScreen();
		System.out.println("\t\t\t\t\tLOADING.....");
		Thread.sleep(700);
		clearScreen();

	}

	private void clearScreen() { // 화면지우기

		for (int i = 0; i < 50; i++) {
			System.out.println("");
		}

	}

	public void select() { // 사용자 입력 선택
		
		System.out.println("\t\t\t[  ] 안의 번호를 입력해주세요.");
		System.out.println();
		
		// 강의스케줄 조회
		System.out.println("\t\t\t[1] 과목보기");
		System.out.println("\t\t\t[2] 학생정보 보기");
		System.out.println("\t\t\t[3] 교사 메뉴로 돌아가기");
		System.out.println("\t\t\t――――――――――――――――――――――――――");
		System.out.print("\t\t\t번호 : ");
		
	}

	public void login_T() { // 로그인 화면
		
		System.out.println("\n\n");
		System.out.println("\t\t┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐");
		System.out.println();
		System.out.println(""
				+ "\t      _____ __________  __  _______________   __________________ \r\n" + 
				"\t     / ___// ____/ __ \\/ / / / ____/ ____/ | / /_  __/ ____/ __ \\\r\n" + 
				"\t     \\__ \\/ __/ / / / / / / / /   / __/ /  |/ / / / / __/ / /_/ /\r\n" + 
				"\t    ___/ / /___/ /_/ / /_/ / /___/ /___/ /|  / / / / /___/ _, _/ \r\n" + 
				"\t   /____/_____/_____/\\____/\\____/_____/_/ |_/ /_/ /_____/_/ |_| "); // 2칸 띄어쓰기
		System.out.println();
		System.out.println("\t\t\t\t\tSince 2019.04.17. | 디비 2조");
		System.out.println("\t\t┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┚");
		
			
		view.title(TeacherView.login);

	}

}


//System.out.println(" "
//+"████████╗███████╗ █████╗  ██████╗██╗  ██╗███████╗██████╗  \r\n"
//+"╚══██╔══╝██╔════╝██╔══██╗██╔════╝██║  ██║██╔════╝██╔══██╗ \r\n"
//+"   ██║   █████╗  ███████║██║     ███████║█████╗  ██████╔╝ \r\n"
//+"   ██║   ██╔══╝  ██╔══██║██║     ██╔══██║██╔══╝  ██╔══██╗ \r\n"
//+"   ██║   ███████╗██║  ██║╚██████╗██║  ██║███████╗██║  ██║ \r\n"
//+"   ╚═╝   ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ \r\n");


//System.out.println(""
//+"   __                  __               \r\n"
//+"   / /____  ____ ______/ /_  ___  _____ \r\n"
//+"  / __/ _ \\/ __ `/ ___/ __ \\/ _ \\/ ___/ \r\n"
//+" / /_/  __/ /_/ / /__/ / / /  __/ /     \r\n" 
//+" \\__/\\___/\__,_/\\___/_/ /_/\\___/_/      \r\n");
//

//System.out.println("
//		"  (c).-.(c)      \r\n" + 
//		"   / ._. \\      \r\n" + 
//		" __\\( Y )/__    \r\n" + 
//		"(_.-/'-'\\-._)   \r\n" + 
//		"   ||   ||       \r\n" + 
//		" _.' `-' '._     \r\n" + 
//		"(.-./`-'\\.-.)   \r\n");


//System.out.println(""
//		+ "\t ___  __           __   ___      ___  ___  __  \r\n" + 
//		"\t|__  |  \\ |  |    /  ` |__  |\\ |  |  |__  |__) \r\n" + 
//		"\t|___ |__/ \\__/    \\__, |___ | \\|  |  |___ |  \\ \r\n" + 
//		"                                               "
//		+ "");
//
