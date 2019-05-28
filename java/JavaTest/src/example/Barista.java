package example;

public class Barista {
	
	
	
	public Espresso makeEspresso(int bean) {
		Espresso e1 = new Espresso();
		e1.setBean(bean);
		
		Coffee.setEspresso(Coffee.getEspresso()+ 1);
		Coffee.setBean(Coffee.getBean()+bean);
		Coffee.setBeanTotalPrice(Coffee.getBeanTotalPrice() + (bean * Coffee.getBeanUnitPrice()) );
		
		return e1;
		
		
	}
	
	
	
	public Espresso[] makeEspressoes(int bean, int count) {
		Espresso[] e2 = new Espresso[count];
		
		for(int i=0; i<count; i++) {
			e2[i] = new Espresso();
			e2[i].setBean(bean);
			Coffee.setEspresso(Coffee.getEspresso()+ 1);
			Coffee.setBean(Coffee.getBean()+bean);
			Coffee.setBeanTotalPrice(Coffee.getBeanTotalPrice() + (bean * Coffee.getBeanUnitPrice()) );
		}
		
		return e2;
		
		
	}
	
	
	
	public Latte makeLatte(int bean, int milk) {
		Latte l1 = new Latte();
		l1.setBean(bean);
		l1.setMilk(milk);
		Coffee.setLatte(Coffee.getLatte()+1);
		Coffee.setBean(Coffee.getBean()+bean);
		Coffee.setMilk(Coffee.getMilk()+milk);
		Coffee.setBeanTotalPrice(Coffee.getBeanTotalPrice() + (bean * Coffee.getBeanUnitPrice()) );
		Coffee.setMilkTotalPrice(Coffee.getMilkTotalPrice() + (milk * Coffee.getMilkUnitPrice()) );
		return l1;
		
	}
	
	
	
	public Latte[] makeLattes(int bean, int milk, int count) {
		Latte[] l2 = new Latte[count];
		for (int i=0; i<count; i++) {
			l2[i] = new Latte();
			l2[i].setBean(bean);
			l2[i].setMilk(milk);
			Coffee.setLatte(Coffee.getLatte()+1);
			Coffee.setBean(Coffee.getBean()+bean);
			Coffee.setMilk(Coffee.getMilk()+milk);
			Coffee.setBeanTotalPrice(Coffee.getBeanTotalPrice() + (bean * Coffee.getBeanUnitPrice()) );
			Coffee.setMilkTotalPrice(Coffee.getMilkTotalPrice() + (milk * Coffee.getMilkUnitPrice()) );
		}
		
		return l2;
		
		
	}
	
	
	
	public Americano makeAmericano(int bean, int water, int ice) {
		Americano a1 = new Americano();
		a1.setBean(bean);
		a1.setIce(ice);
		a1.setWater(water);
		Coffee.setAmericano(Coffee.getAmericano()+1);
		Coffee.setBean(Coffee.getBean()+bean);
		Coffee.setWater(Coffee.getWater() + water);
		Coffee.setIce(Coffee.getIce() + ice);
		Coffee.setBeanTotalPrice(Coffee.getBeanTotalPrice() + (bean * Coffee.getBeanUnitPrice()) );
		Coffee.setWaterTotalPrice(Coffee.getWaterTotalPrice() + (water * Coffee.getWaterUnitPrice()) );
		Coffee.setIceTotalPrice(Coffee.getIceTotalPrice() + (ice * Coffee.getIceUnitPrice()));
		
		return a1;
		
		
	}
	
	
	
	public Americano[] makeAmericanos(int bean, int water, int ice, int count) {
		Americano[] a2 = new Americano[count];
		for(int i=0; i<count; i++) {
			a2[i] = new Americano();
			a2[i].setBean(bean);
			a2[i].setIce(ice);
			a2[i].setWater(water);
			Coffee.setAmericano(Coffee.getAmericano()+1);
			Coffee.setBean(Coffee.getBean()+bean);
			Coffee.setWater(Coffee.getWater() + water);
			Coffee.setIce(Coffee.getIce() + ice);
			Coffee.setBeanTotalPrice(Coffee.getBeanTotalPrice() + (bean * Coffee.getBeanUnitPrice()) );
			Coffee.setWaterTotalPrice(Coffee.getWaterTotalPrice() + (water * Coffee.getWaterUnitPrice()) );
			Coffee.setIceTotalPrice(Coffee.getIceTotalPrice() + (ice * Coffee.getIceUnitPrice()));
			
		}
		
		return a2;
		
		
	}
	
	
	public void result() {
		System.out.println("==================================");
		System.out.println("판매 결과");
		System.out.println("==================================");
		System.out.println();
		
		System.out.println("----------------------------------");
		System.out.println("음료 판매량");
		System.out.println("----------------------------------");
		
		System.out.printf("에스프레소 : %d잔\n", Coffee.getEspresso());
		System.out.printf("아메리카노 : %d잔\n", Coffee.getAmericano());
		System.out.printf("라테 : %d잔\n", Coffee.getLatte() );
		
		System.out.println();
		System.out.println("----------------------------------");
		System.out.println("음료 판매량");
		System.out.println("----------------------------------");
		
		System.out.printf("원두 : %dg\n", Coffee.getBean());
		System.out.printf("물 : %dml\n", Coffee.getWater());
		System.out.printf("얼음 : %d개\n", Coffee.getIce());
		System.out.printf("우유 : %dml\n", Coffee.getMilk());
		
		System.out.println();
		System.out.println("----------------------------------");
		System.out.println("매출액");
		System.out.println("----------------------------------");
		
		System.out.printf("원두 : %d원\n", Coffee.getBeanTotalPrice());
		System.out.printf("물 : %.0f원\n", Coffee.getWaterTotalPrice());
		System.out.printf("얼음 : %d원\n", Coffee.getIceTotalPrice());
		System.out.printf("우유 : %d원\n", Coffee.getMilkTotalPrice());
		
		
	}
	
	
}
















