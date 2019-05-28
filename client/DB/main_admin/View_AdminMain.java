package main_admin;

public class View_AdminMain {

	/**
	 * 번호 선택지 출력 메소드
	 */
	public void vNumSelect() {
		System.out.print("번호 : ");
	}
	
	/**
	 * 아이디 입력지 출력 메소드
	 */
	public void vIdSelect() {
		System.out.print("ID(이름) : ");
	}
	
	/**
	 * 비밀번호 입력지 출력 메소드
	 */
	public void vPwSelect() {
		System.out.print("PW(주민번호 뒷자리) : ");
	}
	
	/**
	 * 관리자 로그인 전 메뉴출력 메소드
	 */
	public void vInitialMenu() {
		
		System.out.println("========================================");
		System.out.println("\t1. 관리자");
		System.out.println("========================================");
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println("1. 로그인");
		System.out.println("0. 뒤로가기");
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		
	}
	
	/**
	 * 로그인 메뉴 출력 메소드
	 */
	public void loginMenu() {
		
		System.out.println();
		System.out.println("-----------------------------------------");
		System.out.println("\t- 로그인 -");
		
		
		
	}
	
	/**
	 * 로그인 실패 멘트 출력 메소드
	 */
	public void vWrong() {
		System.out.println("잘못 입력하셨습니다. 다시입력해주세요.");
	}
	
	/**
	 * 관리자 메뉴 출력 메소드
	 */
	public void vAdminMainMenu() {
		
		System.out.println("========================================");
		System.out.println("\t1. 관리자");
		System.out.println("========================================");
		System.out.println();
		System.out.println("1. 교사 계정 관리");
		System.out.println("2. 개설 과정 및 과목 관리");
		System.out.println("3. 학생 관리");
		System.out.println("4. 시험 관리 및 성적 조회");
		System.out.println("5. 출결 관리 및 출결 조회");
		System.out.println("6. 교사 평가 관리 및 결과 조회");
		System.out.println("7. 상담일지 관리 및 조회");
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println("0. 로그아웃");
		
		System.out.print("번호 선택 : ");
		
	}
	
}
