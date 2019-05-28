package Admin;

import java.util.ArrayList;
import java.util.Scanner;

import DTO_admin.DTO;
import DTO_admin.DTO2;


/**
 * 
 * 관리자 > 교사 계정 관리에 관한 출력문 클래스
 *
 */
public class View {

	/**
	 * 관리자 > 교사 계정 관리를 나타내는 출력문 메소드
	 */
	public void begin() {
		System.out.println("=======================================================================================================================================");
		System.out.println("\t\t\t\t\t\t1. 관리자 – 1. 교사 계정 관리 ");
		System.out.println("=======================================================================================================================================");
	}
	
	/**
	 * 관리자 > 교사 계정관리 > 교사 정보 수정을 나타내는 출력문 메소드
	 */
	public void edit() {
		System.out.println("=======================================================================================================================================");
		System.out.println("\t\t\t\t\t\t1. 관리자 – 1. 교사 계정 관리 - b. 교사 정보 수정");
		System.out.println("=======================================================================================================================================");
		
	}
	
	/**
	 * 관리자 > 교사 계정 관리 > 교사 정보 삭제를 나타내는 출력문 메소드
	 */
	public void delete() {
		System.out.println("=======================================================================================================================================");
		System.out.println("\t\t\t\t\t\t1. 관리자 – 1. 교사 계정 관리 – c. 교사 정보 삭제");
		System.out.println("=======================================================================================================================================");
		
	}
	
	/**
	 * 관리자 > 교사 계정 관리에서 교사들에 관한 정보를 출력해주는 메소드
	 * @param list DB에서 뽑아온 교사 정보를 담고있는 리스트
	 */
	public void list(ArrayList<DTO> list) {
		System.out.println("\t\t\t\t번호\t교사명\t\t주민번호(뒷자리)\t\t전화번호");
		for (DTO dto : list) {
			System.out.printf("\t\t\t\t%s\t%s\t%s\t\t\t%s\t\n"
								, dto.getTeacher_seq()
								, dto.getName()
								, dto.getPw()
								, dto.getTel()
								);
								
								
		}
		
	}

	/**
	 * 교사 계정 관리에서 선택할 수 있는 메뉴를 출력해주는 메소드
	 */
	public void menu() {
		System.out.println();
		System.out.println();
		System.out.println("\t\t\t\ta.교사정보등록");
		System.out.println("\t\t\t\tb.교사정보수정");
		System.out.println("\t\t\t\tc.교사정보삭제");
		System.out.println("\t\t\t\tz.뒤로가기");
		System.out.println("---------------------------------------------------------------------------------------------------------------------------------------");
		System.out.println("\t\t\t\t- 상세보기를 원하시면 해당번호를 선택해주세요.");

		
	}
	
	/**
	 * 관리자 > 교사 계정 관리 > 상세보기를 출력해주는 메소드
	 * @param list 해당 교사가 맡고 있는 과정에 대한 정보를 담고있는 list
	 */
	public void vTeacherDetails(ArrayList<DTO2> list) {
		System.out.println("=======================================================================================================================================");
		System.out.println("\t\t\t\t\t\t1. 관리자 – 1. 교사 계정 관리 -1. (상세보기)");
		System.out.println("=======================================================================================================================================");
		System.out.println("\t\t\t\t\t\t" + list.get(0).getTeachername()+"님의 정보입니다.");
		System.out.println("\t\t\t\t\t\t과정명 : " + list.get(0).getCoursename());
		System.out.println("\t\t\t\t\t\t과정기간 : " + list.get(0).getCourseperiod());
		System.out.println("\t\t\t\t\t\t과목명 및 기간 :");
		for (DTO2 dto2 : list) {
			System.out.println("\t\t\t\t\t\t" + dto2.getJungbo());
		}
			System.out.println("\t\t\t\t\t\t강의실 : "+ list.get(0).getRoomname());
		
			System.out.println();
			System.out.print("\t\t");
			pause();
	}

	public void add() {
		System.out.println();
		
		
	}

	/**
	 * 다음 기능으로 가기전에 잠시 멈추기 위한 메소드
	 */
	public void pause() { // 프로그램 넘어가기 전에 출력

	      System.out.println("\t\t\t\t계속하려면 엔터를 입력하세요.");
	      Scanner scan = new Scanner(System.in);
	      scan.nextLine();

	      clearScreen();
	      System.out.println("\t\t\t\t\tLOADING.....");
	      try {
	      Thread.sleep(700);
	      }catch(Exception e) {
	    	  e.printStackTrace();
	      }
	      clearScreen();

	   }

	/**
	 * 콘솔창에서 깔끔하게 나타내기 위한 메소드
	 */
	   private void clearScreen() { // 화면지우기

	      for (int i = 0; i < 50; i++) {
	         System.out.println("");
	      }

	   }


}
