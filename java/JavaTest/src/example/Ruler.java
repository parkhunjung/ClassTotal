package example;

public class Ruler {
	
	private int length;
	private String shape;
	
	
	
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		
		if((length == 30) 
				|| (length == 50) 
				|| (length == 100) ) {
			this.length = length;
		}
	
	
	}
	//길이
	
	
	
	public String getShape() {
		return shape;
	}
	public void setShape(String shape) {
		
		if(shape.equals("줄자") || shape.equals("운형자") || shape.equals("삼각자")) {
			this.shape = shape;
		}
	}
	//모양
	
	
	public String info() {
		
		return "자 길이 : " + length + "\n자 형태 : " + shape + "\n";
		
		
	}
	//반환
	
}
