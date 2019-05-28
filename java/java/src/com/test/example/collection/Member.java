package com.test.example.collection;

//회원 정보 클래스 : 회원 1명 > 객체 : 단위 정보 담는 상자 > VO, DTO
public class Member {
	
	private String name;
	private String age;
	private String address;
	private String tel;
	private String gender;
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	//toString() 오버라이드 : 개발자 디버깅용
	//객체 > 소유 데이터 > 문자열 > 덤프(dump)
	@Override
	public String toString() {
		return "Member [name=" + name + ", age=" + age +  ", tel=" + tel + "gender =" + gender + ", address=" + address + "]";
	}
	
	
	
	
	
	
	
	
}


















