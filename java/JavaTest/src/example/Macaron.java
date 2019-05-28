package example;

public class Macaron {
	
	// - 멤버 변수들
	private int size;
	private String color;
	private int thick;
	
	
	
	
	
	public int getSize() {
		return size;
	}
	public void setSize(int size) throws Exception {
		if(size >= 5 && size <= 15) {
			this.size = size;
		}else {
			throw new Exception();
		}
	}
	//size
	
	
	public String getColor() {
		return color;
	}
	public void setColor(String color) throws Exception {
		if(color.equals("red") 
				|| color.equals("blue") 
				|| color.equals("yellow") 
				|| color.equals("white") 
				|| color.equals("pink") 
				|| color.equals("purple")
				|| color.equals("green")
				|| color.equals("black")) {
			this.color = color;
		}else {
			throw new Exception();
		}
	}
	//color
	
	
	public int getThick() {
		return thick;
	}
	public void setThick(int thick) throws Exception {
		if(thick >= 1 && thick <= 20) {
			this.thick = thick;
		}else {
			throw new Exception();
		}
	}
	//thick
	
	public void info() {
		System.out.printf("%dcm(%s, %dmm) : ", size, color, thick);
		
	}
	
	

	
	
}
