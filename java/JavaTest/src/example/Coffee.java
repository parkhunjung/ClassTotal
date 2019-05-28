package example;

public class Coffee {
	
	private static int bean;
	private static int water;
	private static int ice;
	private static int milk;
	private static int beanUnitPrice = 1;
	private static double waterUnitPrice = 0.2;
	private static int iceUnitPrice = 3;
	private static int milkUnitPrice = 4;
	private static int beanTotalPrice;
	private static double waterTotalPrice;
	private static int iceTotalPrice;
	private static int milkTotalPrice;
	private static int americano;
	private static int latte;
	private static int espresso;
	
	public static int getBean() {
		return bean;
	}
	public static void setBean(int bean) {
		Coffee.bean = bean;
	}
	//원두
	
	
	public static int getWater() {
		return water;
	}
	public static void setWater(int water) {
		Coffee.water = water;
	}
	//물
	
	
	public static int getIce() {
		return ice;
	}
	public static void setIce(int ice) {
		Coffee.ice = ice;
	}
	//얼음
	
	
	public static int getMilk() {
		return milk;
	}
	public static void setMilk(int milk) {
		Coffee.milk = milk;
	}
	//우유
	
	
	public static int getBeanUnitPrice() {
		return beanUnitPrice;
	}
	//원두 단가
	
	
	public static double getWaterUnitPrice() {
		return waterUnitPrice;
	}
	//물 단가
	
	
	public static int getIceUnitPrice() {
		return iceUnitPrice;
	}
	//얼음 단가
	
	
	public static int getMilkUnitPrice() {
		return milkUnitPrice;
	}
	//우유 단가
	
	
	public static int getBeanTotalPrice() {
		return beanTotalPrice;
	}
	public static void setBeanTotalPrice(int beanTotalPrice) {
		Coffee.beanTotalPrice = beanTotalPrice;
	}
	//원두 총액
	
	
	public static double getWaterTotalPrice() {
		return waterTotalPrice;
	}
	public static void setWaterTotalPrice(double waterTotalPrice) {
		Coffee.waterTotalPrice = waterTotalPrice;
	}
	//물 총액
	
	
	public static int getIceTotalPrice() {
		return iceTotalPrice;
	}
	public static void setIceTotalPrice(int iceTotalPrice) {
		Coffee.iceTotalPrice = iceTotalPrice;
	}
	//얼음 총액
	
	
	public static int getMilkTotalPrice() {
		return milkTotalPrice;
	}
	public static void setMilkTotalPrice(int milkTotalPrice) {
		Coffee.milkTotalPrice = milkTotalPrice;
	}
	//우유 총액
	
	
	public static int getAmericano() {
		return americano;
	}
	public static void setAmericano(int americano) {
		Coffee.americano = americano;
	}
	//아메리카노
	
	
	public static int getLatte() {
		return latte;
	}
	public static void setLatte(int latte) {
		Coffee.latte = latte;
	}
	//라떼
	
	
	public static int getEspresso() {
		return espresso;
	}
	public static void setEspresso(int espresso) {
		Coffee.espresso = espresso;
	}
	//에스프레소
}
