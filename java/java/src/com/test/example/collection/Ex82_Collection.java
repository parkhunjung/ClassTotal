package com.test.example.collection;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Random;

import com.test.example.constructor.Student;



public class Ex82_Collection {
	public static void main(String[] args) {
		
//		m1();
		m2();
		
	}

	private static void m2() {
		
		//배열 or 컬렉션 > 컬렉션
		ArrayList<Integer> ns = new ArrayList<Integer>();
		Random rnd = new Random();
		
		for(int i=0; i<10; i++) {
			ns.add(rnd.nextInt(30) + 1); //1~30
		}
		
		System.out.println("원본");
		System.out.println(ns);
		
		//JDK 에서 정렬 지원
		//Arrays - 배열 도움
		//Collections - List,Set 도움
		//Quick Sort => 빠르고 좋은 정렬
		//오름차순
		Collections.sort(ns); //List<T> <- (업캐스팅) ArrayList<T>
		
		System.out.println("정렬");
		System.out.println(ns);
		
		//내림차순(x) => 순서를 뒤집기 => 오름차순을 실행한 후에 내림차순으로 만들어줘야한다.
		Collections.reverse(ns);
		
		System.out.println("정렬");
		System.out.println(ns);
		
		
		ArrayList<String> ss = new ArrayList<String>();
		
		ss.add("가가가");
		ss.add("마마마");
		ss.add("다다다");
		ss.add("나나나");
		ss.add("라라라");
		
		System.out.println(ss);
		
		Collections.sort(ss);
		System.out.println();
		System.out.println(ss);
		
		ArrayList<Calendar> cs = new ArrayList<Calendar>();
		
		Calendar c1 = Calendar.getInstance(); c1.set(Calendar.DATE, 1);
		
		Calendar c2 = Calendar.getInstance(); c2.set(Calendar.DATE, 25);
		
		Calendar c3 = Calendar.getInstance(); c3.set(Calendar.DATE, 10);
		
		Calendar c4 = Calendar.getInstance(); c4.set(Calendar.DATE, 16);
		
		Calendar c5 = Calendar.getInstance(); c5.set(Calendar.DATE, 5);
		
		cs.add(c1);
		cs.add(c2);
		cs.add(c3);
		cs.add(c4);
		cs.add(c5);
		
		Collections.sort(cs);
		
		for(Calendar c : cs) {
			System.out.printf("%tF\n", c);
		}
		
		ArrayList<Employee> ms = new ArrayList<Employee>();
		
		ms.add(new Employee("홍길동", 3000000));
		ms.add(new Employee("하하하", 4200000));
		ms.add(new Employee("호호호", 1400000));
		ms.add(new Employee("후후후", 2300000));
		ms.add(new Employee("바바바", 5000000));
		
		System.out.println(ms);
		
		//왜 안되는지??? -> 첫번째 직원 값 > 두번째 직원 값 
		Collections.sort(ms, new Comparator<Employee>() {
			
			public int compare(Employee o1, Employee o2) {
				
				//우리가 직접 구현했을때 두 요소를 우위 비교하는 if문 역할의 메소드
				//System.out.printf("%s - %s\n", o1, o2);
				
				//*** 스왑 유무를 판단하는 값
				//ms[j].getPrice() > ms[j+1].getPrice()
				//return 1;
				
//				if(o1.getSalary() > o2.getSalary()) {
//					return 1;
//				}else if(o1.getSalary() < o2.getSalary()) {
//					return -1;
//				}else {
//					return 0;
//				}
				
				return o2.getSalary() - o1.getSalary();
				
			}
			
		});
		
		System.out.println(ms);
		
		ArrayList<MStudent> ts = new ArrayList<MStudent>();
		
		ts.add(new MStudent("홍길동", 100, 90, 80));
		ts.add(new MStudent("아무개", 80, 90, 66));
		ts.add(new MStudent("하하하", 50, 70, 54));
		ts.add(new MStudent("호호호", 770, 60, 77));
		ts.add(new MStudent("후후후", 23, 40, 50));
		
		//특정값으로 정렬
		Collections.sort(ts, new Comparator<MStudent>() {

			@Override
			public int compare(MStudent o1, MStudent o2) {
				
//				return o1.getKor() - o2.getKor();//국어 점수로 정렬 + 오름차순
//				return o2.getEng() - o1.getEng();//영어 점수로 정렬 + 내림차순
//				return o1.getMath() - o2.getMath();//수학 점수로 정렬 + 오름차순
//				return o1.getTotal() - o2.getTotal(); // 총점으로 오름차순
//				return o2.getName().compareTo(o1.getName()); // 이름으로 내림차순
				return o1.getName().compareTo(o2.getName()); // 이름으로 오름차순
				
			}
	
		});
		
		System.out.println(ts);
		
		String s1 = "홍길동";
		String s2 = "홍길돈";
		
//		System.out.println(s1.compareTo(s2));
		//글자 크기를 비교해서 양수와 음수, 0을 반환해준다 즉 이름으로 정렬이가능
		
		
		
	}

	private static void m1() {
		//배열 or 켈렉션
		//list[0] = list[0] + 10;
		//list.set(list.get(0) + 10);
		
		//정렬 가능 대상
		//1. 숫자(정수,실수)
		//2. 문자(코드값)
		//3. 문자열(X) -> 문자(O)
		//4. 날짜/시간
		//5. 참조형(데이터 저장 객체, X) -> 1~4(O)
		
		
		int[] ns1 = {5, 3, 4, 8, 9, 7, 2, 1, 6, 0};
		//오름차순 정렬 > 버블 정렬 > 2중 for문
		for(int i=0; i<ns1.length; i++) {
			for(int j=0; j<ns1.length-1-i; j++) {
				//상황에 맞게
				//오름차순?(>) 내림차순?(<) + 어떤값이 정렬 기준 + swap
				if(ns1[j] > ns1[j+1]) {
					int temp = ns1[j];
					ns1[j] = ns1[j+1];
					ns1[j+1] = temp; 
				}
				
			}
		}
		
		System.out.println(Arrays.toString(ns1));
		
		
		String[] names = { "홍길동", "이순신", "권율", "유관순", "유재석", "박명수", "하하", "정형돈", "노홍철", "정준하" };
		
		
		//이름 오름차순(가나다순)
		for(int i=0; i<names.length; i++) {
			for(int j=0; j<names.length-1-i; j++) {
				
				//뭘 비교할지? 오름차순? 내림차순? + swap
//				if(names[j].length() > names[j+1].length()) {
//					
//				}
				
				int length = (names[j].length() > names[j+1].length()) ? names[j+1].length() : names[j].length();
				
				for(int k=0; k<length; k++) {
					//System.out.println(names[j].charAt(k) + "," + names[j+1].charAt(k));
					if(names[j].charAt(k) > names[j+1].charAt(k)) {
						String temp = names[j];
						names[j] = names[j+1];
						names[j+1] = temp;
						break; //k loop 탈출
						
					}else if (names[j].charAt(k) < names[j+1].charAt(k)) {
						break;
					}
					
				
				}
				//System.out.println();
			}
		}//최종루프
		
		System.out.println(Arrays.toString(names));
		
		
		
		//날짜 비교
//		Calendar[] cs = new Calendar[5];
		
		Calendar c1 = Calendar.getInstance();
		c1.set(Calendar.DATE, 1);
		
		Calendar c2 = Calendar.getInstance();
		c2.set(Calendar.DATE, 25);
		
		Calendar c3 = Calendar.getInstance();
		c3.set(Calendar.DATE, 10);
		
		Calendar c4 = Calendar.getInstance();
		c4.set(Calendar.DATE, 16);
		
		Calendar c5 = Calendar.getInstance();
		c5.set(Calendar.DATE, 5);
		
		Calendar[] cs = {c1, c2, c3, c4, c5};
		
		for(Calendar c : cs) {
			System.out.printf("%tF\n", c);
		}
		
		for(int i=0; i<cs.length; i++) {
			for(int j=0; j<cs.length-1-i; j++) {
				
				//비교 > tick 값(long)
				long t1 = cs[j].getTime().getTime();
				long t2 = cs[j+1].getTime().getTime();
				
				if(t1 > t2) {
					Calendar temp = cs[j];
					cs[j] = cs[j+1];
					cs[j+1] = temp;
				}
				
			}
		}//for
		System.out.println();
		
		for(Calendar c : cs) {
			System.out.printf("%tF\n", c);
		}
		
		
		//직원 목록
		Employee[] es = {new Employee("홍길동", 3000000)
					, new Employee("하하하", 2000000)
					, new Employee("박과장", 4000000)
					, new Employee("정부장", 5000000)
					, new Employee("김사장", 7000000)};
				
		System.out.println();
		System.out.println(Arrays.toString(es));
		
		for(int i=0; i<es.length-1; i++) {
			for(int j=0; j<es.length-1-i; j++) {
			
				if(es[j].getSalary() > es[j+1].getSalary()) {
					Employee temp = es[j];
					es[j] = es[j+1];
					es[j+1] = temp;
				}
			
			}
		}
		
		System.out.println(Arrays.toString(es));
		
		
		
		
	}//m1
	
}//class


class Employee {
	
	private String name;
	private int salary;
	
	public Employee() {
		this("", 0);
	}
	
	public Employee(String name, int salary) {
		this.name = name;
		this.salary = salary;
		
		
	}

	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}
	
	@Override
	public String toString() {
		
		return this.name + "/" + this.salary;
	}
	
	
	
}//class

class MStudent {
	
	private String name;
	private int kor;
	private int eng;
	private int math;
	
	public MStudent(String name, int kor, int eng, int math) {
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	@Override
	public String toString() {
		return "Mstudent [name=" + name + ", kor=" + kor + ", eng=" + eng + ", math=" + math + "]";
	}
	
	public int getTotal() {
		
		
		return this.kor + this.eng + this.math;
		
	}
	
	
	
}//MStudent
















