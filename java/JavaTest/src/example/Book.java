package example;

public class Book {
	
		
		private String title;
		private int price;
		private String author;
		private String publisher;
		private int pubYear = 2018;
		private long isbn;
		private int page = 350;
		
		
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			if (title.length() <= 50) { //if 문 (50자이내 한글,영어,숫자 체크)s
				boolean isValid = true;
				for (int i=0; i<title.length(); i++) {
					char ch = title.charAt(i);
					
					if ( (ch < 'a' || ch > 'z') 
							&& (ch < 'A' || ch > 'Z') 
							&& (ch < '가' || ch > '힣') 
							&& (ch < '0' || ch > '9') ) {
						this.title = "잘못 입력된 제목입니다. 다시 입력해 주세요.";
						isValid = false;
						break;
					}
					
				}
				
				if (isValid) {
					this.title = title;
	//				this.title = title; //제대로 출력시 출력
				}
			
			}else {
				this.title = "책의 제목이 너무 깁니다. 다시 입력해주세요.";
				
			}
			//if/else 문 끝
			
			
		}
		//title
		
		
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			if (price < 0 || price > 100000) {
				System.out.println("올바른 가격이 아닙니다.");
			}else {
				this.price = price;
			}
			
		}
		//price
		
		
		public String getAuthor() {
			return author;
		}
		public void setAuthor(String author) {
			this.author = author;
		}
		//author
		
		
//		public String getPublisher() {
//			return publisher;
//		}
		public void setPublisher(String publisher) {
			this.publisher = publisher;
		}
		//publisher
		
		
		public int getPubYear() {
			return pubYear;
		}
//		public void setPubYear(int pubYear) {
//			this.pubYear = pubYear;
//		}
		//year
		
		
		public long getIsbn() {
			return isbn;
		}
		public void setIsbn(long isbn) {
			this.isbn = isbn;
		}
		//isbn
		
		
		public int getPage() {
			return page;
		}
//		public void setPage(int page) {
//			this.page = page;
//		}
		//page
		
		public String info() {
			
			return "제목 : " + title +"\n가격 : " + price +"원\n저자 : " + author +"\n출판사 : " + publisher 
					+ "\n발행년도 : " + pubYear + "년\nISBN : " + isbn + "\n페이지수 : " + page; 
			
		}
		
		
}