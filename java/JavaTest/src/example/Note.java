package example;

public class Note {
	
	private String size;
	private String color;
	private String page;
	private String ownerName;
	private int price = 500;
	
	
	
	
	
	public void setSize(String size) {
		
		if (size.equals("A3") 
				|| size.equals("A4") 
				|| size.equals("A5") 
				|| size.equals("B3") 
				|| size.equals("B4") 
				|| size.equals("B5")) {
			this.size = size;
		}else {
			this.size = "잘못된 입력입니다.";
		}
		
		
	}
	//size
	
	
	
	public void setColor(String color) {
		if (color.equals("검정색") 
				|| color.equals("흰색") 
				|| color.equals("노란색") 
				|| color.equals("파란색")) {
			this.color = color;
		}else {
			this.color = "잘못된 입력입니다.";
		}
		
	}
	//color
	
	
	
	public void setPage(String page) {
		
		int iPage = Integer.parseInt(page);
		
		if (iPage > 10) {
			for (int i=0; i<iPage-10; i++) {
				price += 10;
			}
		}// 페이지당 10원추가
		
		if (iPage >= 10 && iPage <= 200) {
			if(iPage >= 10 && iPage <= 50) {
				page = "얉은";
			}else if(iPage >= 51 && iPage <= 100) {
				page = "보통";
			}else if(iPage >= 101 && iPage <= 200) {
				page = "두꺼운";
			}
			this.page = page;
		}else {
			this.page = "올바르지 못한 페이지 입니다.";
		}
		
	}
	//page
	
	
	
	public void setOwnerName(String ownerName) {
		if (ownerName.length() >= 2 && ownerName.length() <= 5) {
			this.ownerName = ownerName;
		}
		
	}
	//owname
	
	
	
	
	public String info() {
		
		if (size.equals("A3")) {
			price += 400;
		}else if (size.equals("A4")) {
			price += 200;
		}else if (size.equals("B3")) {
			price += 500;
		}else if (size.equals("B4")) {
			price += 300;
		}else if (size.equals("B5")) {
			price += 100;
		}
		if (color.equals("검정색")) {
			price += 100;
		}else if (color.equals("노란색")) {
			price += 200;
		}else if (color.equals("파란색")) {
			price += 200;
		}
		//종류에 따른 price 추가
		
		
		if (ownerName != null) {
			return "■■■■■ 노트 정보  ■■■■■\n소유자 : " + ownerName + "\n특성 : " + color + " " + page + " " + size 
				+ "노트 \n가격 : " + price + "\n■■■■■■■■■■■■■■■■\n";
		}else {
			return "■■■■■ 노트 정보  ■■■■■\n" + "\n주인 없는 노트\n\n" + "■■■■■■■■■■■■■■■■\n";
		}
		
		
	}
	
	
}
