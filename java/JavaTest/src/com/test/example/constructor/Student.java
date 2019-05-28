package com.test.example.constructor;

public class Student {
	
	/**
	 * 이름
	 */
	private String name;
	/**
	 * 나이
	 */
	private int age;
	/**
	 * 학년
	 */
	private int grade;
	/**
	 * 반
	 */
	private int classNumber;
	/**
	 * 번호
	 */
	private int number;
	/**
	 * 학교, 모두 역삼중학교
	 */
	private static String school;
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	//이름
	
	
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	//나이
	
	
	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	//학년
	
	
	public int getClassNumber() {
		return classNumber;
	}

	public void setClassNumber(int classNumber) {
		this.classNumber = classNumber;
	}
	//반
	
	
	
	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	//번호
	
	
	
	public static String getSchool() {
		return school;
	}

	public static void setSchool(String school) {
		Student.school = school;
	}
	//학교
	
	
	
	/**
	 * 기본생성자
	 * 이름("미정"),나이,학년,반,번호
	 */
	public Student() {
		this.name = "미정";
		this.age = 0;
		this.grade = 0;
		this.classNumber = 0;
		this.number = 0;
		
	}

	/**
	 * 생성자 오버로딩
	 * @param name 		이름
	 * @param age		나이
	 * @param grade		학년
	 * @param classNumber 반
	 * @param number 	번호
	 */
	public Student(String name, int age, int grade, int classNumber, int number) {
		this.name = name;
		this.age = age;
		this.grade = grade;
		this.classNumber = classNumber;
		this.number = number;
		
	}
	/**
	 * 생성자 오버로딩
	 * @param name 	이름
	 * @param age	나이
	 */
	public Student(String name, int age) {
		this.name = name;
		this.age = age;
		this.grade = 0;
		this.classNumber = 0;
		this.number = 0;
	}
	/**
	 * 생성자 오버로딩
	 * @param grade		학년
	 * @param classNumber	반
	 * @param number	번호
	 */
	public Student(int grade, int classNumber, int number) {
		this.name = "미정";
		this.age = 0;
		this.grade = grade;
		this.classNumber = classNumber;
		this.number = number;
		
		
	}
	static {
		Student.school = "역삼 중학교";
	}
	
	
	public String info() {
		
		String ageString = "";
		String gradeString = "";
		String classString = "";
		String numString = "";
		
		if(getAge() == 0) {
			ageString = "미정";
		}else {
			ageString += this.age;
		}
		
		if(getGrade() == 0) {
			gradeString = "미정";
		}else {
			gradeString += this.grade;
		}
		
		if(getClassNumber() == 0) {
			classString = "미정";
		}else {
			classString = this.classNumber + "";
		}
		
		if(getNumber() == 0) {
			numString = "미정";
		}else {
			numString = this.number + "";
		}
		
		return getName() + "(나이 : " + ageString + "," 
				+ " 학년 : " + gradeString + ","
				+ " 반 : " + classString + ","
				+ " 번호 : " + numString + ")";
		
	}
}





























