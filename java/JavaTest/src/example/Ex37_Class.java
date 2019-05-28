package example;

public class Ex37_Class {
	public static void main(String[] args) {
		
		Person p0 = new Person();
		p0.setName("유사장");
		
		Person p1 = new Person();
		p1.setName("김부장");
		
		Person p2 = new Person();
		p2.setName("홍과장");
		
		Person p3 = new Person();
		p3.setName("박과장");
		
		Person p4 = new Person();
		p4.setName("이대리");
		
		Person p5 = new Person();
		p5.setName("최대리");
		
		Person p6 = new Person();
		p6.setName("정대리");
		
		Person p7 = new Person();
		p7.setName("하사원");
		
		Person[] temp = new Person[10];
		
		temp[0] = p1;
		p0.setSubPerson(temp);
		
		p1.setSuperPerson(p0);
		
		//김부장의 부하직원들
		temp[0] = p2;
		temp[1] = p3;
		
		
		p1.setSubPerson(temp);
		
		//박과장의 상사
		p3.setSuperPerson(p1);
		
		
		//홍과장의 부하직원들
		temp = new Person[10];
		temp[0] = p4;
		temp[1] = p5;
		temp[2] = p6;
		
		p2.setSubPerson(temp);
		
		//홍과장의 상사
		p2.setSuperPerson(p1);
		
		//각 대리들의 상사
		p4.setSuperPerson(p2);
		p5.setSuperPerson(p2);
		p6.setSuperPerson(p2);
		
		temp = new Person[10];
		temp[0] = p7;
		
		p5.setSubPerson(temp);
		
		p7.setSuperPerson(p5);
		
		
		//질문?
		//1. 홍과장의 부하직원들??
		sublist(p2);
		sublist(p1);
		sublist(p3);
		
		//2. 직속 상사?
		getSuper(p2);
		getSuper(p5);
		getSuper(p1);
		
		
		//3. 직속 상사들?
		getSuperList(p5);
		getSuperList(p1);
		getSuperList(p7);
	}

	private static void getSuperList(Person p) {
		System.out.printf("==%s의 상사들==\n", p.getName());
		
//		Person sp = p.getSuperPerson(); //직속상사
//		System.out.println(sp.getName());
//		
//		Person ssp = sp.getSuperPerson();
//		System.out.println(ssp.getName());
//		
//		Person sssp = ssp.getSuperPerson();
//		System.out.println(sssp.getName());
		
//		getSuperPerson(p);
		
	}
	
//	private static Person getSuperPerson(Person p) {
//		
//		Person sp = p.getSuperPerson(); //직속상사
//		
//		if (sp != null) {
//		System.out.println(sp.getName());
//		//getSuperPerson
//		}
//		
//	}

	private static void sublist(Person p2) {
		System.out.printf("==%s의 부하직원==\n", p2.getName());
		
		if (p2.getSubPerson() != null) {
			for (Person p : p2.getSubPerson()) {
				if (p != null) {
				System.out.println(p.getName());
				}
			}
		}else {
			System.out.println("부하직원 없음");
		}
		System.out.println();
	}



	private static void getSuper(Person p) {
		
		System.out.printf("==%s의 상사==\n", p.getName());
		
		if (p.getSuperPerson() != null) {
			System.out.println(p.getSuperPerson().getName());
		}else {
			System.out.println("상사 없음");
		}
		System.out.println();
	}


}

















