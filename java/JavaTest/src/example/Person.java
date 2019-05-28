package example;

public class Person {
	
	//멤버 변수
	private String name;		//이름
	private int age;			//나이
	private String address;		//주소
	
	
	//조직
	//상사
	private Person superPerson;	//직속상사
	
	
	//부하직원
	private Person[] subPerson;	//부하직원들


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public Person getSuperPerson() {
		return superPerson;
	}


	public void setSuperPerson(Person superPerson) {
		this.superPerson = superPerson;
	}


	public Person[] getSubPerson() {
		return subPerson;
	}


	public void setSubPerson(Person[] subPerson) {
		this.subPerson = subPerson;
	}
	
	
	
	
	
	
	
	
	
}
