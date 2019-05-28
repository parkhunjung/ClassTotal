package example;

public class Americano {
	
	
	private int bean;
	private int water;
	private int ice;
	
	public int getBean() {
		return bean;
	}
	public void setBean(int bean) {
		this.bean = bean;
	}
	//원두
	
	
	
	public int getWater() {
		return water;
	}
	public void setWater(int water) {
		this.water = water;
	}
	//물
	
	
	public int getIce() {
		return ice;
	}
	public void setIce(int ice) {
		this.ice = ice;
	}
	//얼음
	
	public void drink() {
		
		System.out.printf("원두 %dg, 물 %dml, 얼음 %d개로 만들어진 라테를 마십니다. \n", bean, water, ice);
		
	}
	
}
