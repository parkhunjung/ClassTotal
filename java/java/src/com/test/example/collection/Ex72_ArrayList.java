package com.test.example.collection;

import java.util.ArrayList;
import java.util.Scanner;

public class Ex72_ArrayList {
	
	private static Scanner scan;
	private static ArrayList<Member> list; // Member[] list;
	
	//정적 생성자
	static {
		scan = new Scanner(System.in);
		list = new ArrayList<Member>();
	}
	
	
	public static void main(String[] args) {
		
		
		//회원 정보 관리 프로그램 > 프로젝트 가이드
		
		//요구사항]
		//1. 회원 정보 관리
		// - 회원 정보
		//		-이름
		//		-나이
		//		-주소
		//		-연락처
		//2. 기능
		// - 회원 정보 추가하기(C)
		// - 회원 정보 보기(R)
		// - 회원 정보 삭제하기(D)
		// - 회원 정보 검색하기(S)
		// - 회원 정보 수정하기(U) - 생략
		
		//3. 초기 고려 사항
		// - 회원 정보 1명 분량 -> 어떻게 관리? -> 자료형 -> 클래스 사용
		// - 회원 정보 x N명 -> 배열 vs 컬렉션 -> ArrayList 사용
		
		//4. 프로그램 -> 골격 : (메뉴 출력 -> 항목 선택 -> 기능 실행) x N회
		
		dummy();
		
		System.out.println("프로그램을 시작합니다.");
		
		//업무
		boolean loop = true;

		
		while (loop) {
			
			//메뉴 출력 / 항목 선택 / 기능 실행
			System.out.println("=====================");
			System.out.println("회원정보 관리");
			System.out.println("1. 회원 추가");
			System.out.println("2. 회원 보기");
			System.out.println("3. 회원 검색");
			System.out.println("4. 회원 삭제");
			System.out.println("5. 종료");
			System.out.println("=====================");
			
			System.out.print("선택(번호) : ");
			String input = scan.nextLine();
			
			if(input.equals("1")) {
				add();
			}else if (input.equals("2")) {
				view();
			}else if (input.equals("3")) {
				search();
			}else if (input.equals("4")) {
				del();
			}else {
				loop = false;
			}
			
			
			
		}
		
		
		
		
		System.out.println("프로그램을 종료합니다.");
		
	}//main

	private static void dummy() {
		
		//테스트용 회원을 몇명 추가하기
		
		
		for(int i=0; i<10; i++) {
			
			Member m = new Member();
			m.setName("회원" + i);
			m.setAge(i + 20 + "");
			m.setTel("010-1111-111"+i);
			m.setAddress("서울시 강남구 역삼동 22-" + i);
			
			list.add(m);
			
		}
		
		
	}

	private static void del() {
		
		System.out.println("[회원 정보 삭제]");
		
		System.out.println("[이름]\t[나이]\t[전화]\t\t[주소]");
		
		//회원 정보 > list > loop > Member > getXXX()
		for (Member m : list) {
			System.out.printf("%s\t%6s\t%s\t%s\n", m.getName(), m.getAge(), m.getTel(), m.getAddress());
		}
		
		//삭제할 회원 입력
		System.out.print("삭제할 회원명 : ");
		String name = scan.nextLine();
		
		for (int i=0; i<list.size(); i++) {
			if (list.get(i).getName().equals(name)) {
				list.remove(i);
				break;
			}
		}
		
		System.out.println("삭제 완료");
		pause();
		
		
	}

	private static void search() {
		
		System.out.println("[회원 정보 검색]");
		
		//정밀 검색 vs 부분 검색
		System.out.print("이름 : ");
		String keyword = scan.nextLine();
		
		//회원 정보 > list > loop > Member > getXXX()
		
		
		for (Member m : list) {
			
			if (m.getName().indexOf(keyword) > -1) {
				System.out.printf("%s\t%6s\t%s\t%s\n", m.getName(), m.getAge(), m.getTel(), m.getAddress());
			}			
		}
		
		System.out.println("출력 완료");
		pause();
		
		
		
	}

	private static void view() {
		
		System.out.println("[회원 정보 보기]");
		
		//테이블 헤더 출력
		System.out.println("[이름]\t[나이]\t[전화]\t\t[주소]");
		
		//회원 정보 > list > loop > Member > getXXX()
		for (Member m : list) {
			System.out.printf("%s\t%6s\t%s\t%s\n", m.getName(), m.getAge(), m.getTel(), m.getAddress());
		}
		
		System.out.println("출력 완료");
		pause();
		
	}

	private static void add() {
		
		//사용자에게 회원 정보를 입력 받는다. > Member 객체를 생성하는데 사용 > list 추가
		System.out.println("[회원 정보 추가]");
		
		System.out.print("이름 : ");
		String name = scan.nextLine();
		
		System.out.print("나이 : ");
		String age = scan.nextLine();
				
		System.out.print("전화 : ");
		String tel = scan.nextLine();
		
		System.out.print("주소 : ");
		String address = scan.nextLine();
		
		//회원 1명분 > Member 객체
		Member m = new Member();
		
		m.setName(name);
		m.setAge(age);
		m.setTel(tel);
		m.setAddress(address);
		
		//ArrayList 추가
		list.add(m);
		
		System.out.println("추가를 완료했습니다.");
		
		//일시 중지
		pause();
		
		
	}

	private static void pause() {
		
		System.out.print("계속 하시려면 엔터를 입력하세요.");
		scan.nextLine();
		
	}
}






















