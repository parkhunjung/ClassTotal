package example;

public class BallPointPen {
	
	private double thickness;
	private String color;
	
	
	
	public double getThickness() {
		return thickness;
	}
	public void setThickness(double thickness) {
		
		if( (thickness == 0.3) 
				|| (thickness == 0.5) 
				|| (thickness == 0.7) 
				|| (thickness == 1) 
				|| (thickness == 1.5) ) {
			this.thickness = thickness;
		}
		
		
	}
	//두께
	
	
	
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		
		if(color.equals("red") 
				|| color.equals("blue") 
				|| color.equals("green") 
				|| color.equals("balck") ) {
			this.color = color;
		}
		
		
	}
	//색상
	
	public String info() {
		
		return "볼펜의 두께 : " + thickness + "\n색상 : " + color + "\n";
		
	}
	//반환
}
