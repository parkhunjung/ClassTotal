package example;

public class Pencil {
	
	
	private String hardness;

	
	
	public String getHardness() {
		return hardness;
	}

	public void setHardness(String hardness) {
		if(hardness.equals("4B") 
				|| hardness.equals("3B") 
				|| hardness.equals("2B") 
				|| hardness.equals("B") 
				|| hardness.equals("HB")
				|| hardness.equals("H")
				|| hardness.equals("2H")
				|| hardness.equals("3H")
				|| hardness.equals("4H")) {
			this.hardness = hardness;
		}
		
		
		
	}
	//종류
	
	public String info() {
		
		return hardness;
	}
	//반환
}
