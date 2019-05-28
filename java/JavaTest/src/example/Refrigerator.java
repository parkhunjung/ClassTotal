package example;

public class Refrigerator {
	
	private Item[] items = new Item[100];
	private int i = 0;
	public void add(Item item) {
		
		items[i] = item;
		System.out.printf("\'%s\'를 냉장고에 넣었습니다.\n", items[i].getName());
		i++;
	
	}
	
	public Item get(String name) throws Exception {
		
		for (int j=0; j<items.length; j++) {
			if (items[j].getName().equals(name)) {
				return items[j];
			}
		}
		
		throw new Exception();
	}
	
	public int count() {
		
		return i;
			
	}
	
	public void listItem() throws Exception {
		System.out.println("냉장고 아이템 목록");
		
		for(int i=0; i<items.length; i++) {
			if (items[i] != null) {
				System.out.printf("%s(%s) \n", items[i].getName(),items[i].getExpiration());
			}
		}
		
		//throw new Exception();
		
	}
	
}
