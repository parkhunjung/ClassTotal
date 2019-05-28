package example;

public class Packer {
	
	private static int pencilCount;
	private static int eraserCount;
	private static int ballPointPenCount;
	private static int rulerCount;
	
	
	public void packing (Pencil pencil) {
		
		System.out.printf("포장 전 검수 : %s 진하기 연필입니다.\n", pencil.getHardness());
		System.out.println("포장을 완료했습니다. ");
		
		Packer.setPencilCount(Packer.getPencilCount()+1);
	}
	
	public void packing (Eraser eraser) {
		System.out.printf("포장 전 검수 : %s 사이즈 지우개입니다.\n", eraser.getSize());
		System.out.println("포장을 완료했습니다.");
		
		Packer.setEraserCount(Packer.getEraserCount()+1);
	}
	
	
	public void packing (BallPointPen ballPointpen) {
		System.out.printf("포장 전 검수 : %s 색상 %.1fmm 볼펜 입니다.\n", ballPointpen.getColor(), ballPointpen.getThickness());	
		System.out.println("포장을 완료했습니다.");
		
		Packer.setBallPointPenCount(Packer.getBallPointPenCount()+1);
	}
	
	
	public void packing (Ruler ruler) {
		System.out.printf("포장 전 검수 : %dcm  %s입니다.\n", ruler.getLength(), ruler.getShape());	
		System.out.println("포장을 완료했습니다.");
		
		Packer.setRulerCount(Packer.getRulerCount()+1);
	}
	
	public void countPacking(int type) {
		System.out.println("\n=======================");
		System.out.println("포장 결과");
		System.out.println("=======================");
		
		if(type == 0) {
			System.out.printf("연필  : %d회 \n", Packer.getPencilCount());
			System.out.printf("지우개  : %d회 \n", Packer.getEraserCount());
			System.out.printf("볼펜  : %d회 \n", Packer.getBallPointPenCount());
			System.out.printf("자  : %d회 \n", Packer.getRulerCount());
		}else if(type == 1) {
			System.out.printf("연필 : %d회 \n", Packer.getPencilCount());
		}else if(type == 2) {
			System.out.printf("지우개  : %d회 \n", Packer.getEraserCount());
		}else if(type == 3) {
			System.out.printf("볼펜  : %d회 \n", Packer.getBallPointPenCount());
		}else if(type == 4) {
			System.out.printf("자  : %d회 \n",  Packer.getRulerCount());
		}
		
	}
	//포장검수 및 결과
	
	
	
	public static int getPencilCount() {
		return pencilCount;
	}
	
	public static void setPencilCount(int pencilCount) {
		Packer.pencilCount = pencilCount;
	}
	//연필
	
	
	
	public static int getEraserCount() {
		return eraserCount;
	}

	public static void setEraserCount(int eraserCount) {
		Packer.eraserCount = eraserCount;
	}
	//지우개
	
	
	public static int getBallPointPenCount() {
		return ballPointPenCount;
	}

	public static void setBallPointPenCount(int ballPointPenCount) {
		Packer.ballPointPenCount = ballPointPenCount;
	}
	//볼펜
	
	
	public static int getRulerCount() {
		return rulerCount;
	}

	public static void setRulerCount(int rulerCount) {
		Packer.rulerCount = rulerCount;
	}
	//자
	
	
	

	
	
}
