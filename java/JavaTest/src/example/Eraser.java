package example;

public class Eraser {
	
	private String size;

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		if (size.equals("Large") 
				|| size.equals("Medium") 
				|| size.equals("Small")) {
			this.size = size;
		}
		
		
	}
	//크기
	
	public String info() {
		
		return size;
		
	}
	//반환
}
