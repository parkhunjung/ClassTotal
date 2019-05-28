package example;

public class Ex30_question {
	
	public static void main(String[] args) {
		
		q8();
		//q9();
		//q9_1();
		
	}

	
	
	
	private static void q9_1() {
		
		String jumin = "700101-1010104";
		
		int sum = 0;
		
		for (int i=0; i<jumin.length()-1; i++) {			
			sum += Integer.parseInt(jumin.substring(i, i+1)) * (i % 8 + 2);
		}
		
		if (Integer.parseInt(jumin.substring(12)) == (11 - (sum % 11)) % 10) {
			System.out.println("올바른 번호");
		} else {
			System.out.println("올바르지 않은 번호");
		}
		
	}
	
	
	

	private static void q9() {
		
		String jumin = "700101-1010104";
		
		//1. '-' 처리
		jumin = jumin.replace("-", "");
		System.out.println(jumin);
		
		//2. 각자리에 2 ~ 9 곱하기
		//	- 9
		//	- charAt(index) : '9' -> 9 : (int)'9' -> 57
		//	- substring(index, index+1) : "9" -> 9 : Integer.parseInt("9") -> 9
		//3. 2의 값을 모두 더하기(누적)
		int sum = 0;
		
		for (int i=0; i<jumin.length()-1; i++) {
			
			int n = Integer.parseInt(jumin.substring(i, i+1));
			//System.out.println(n);
			
			//0(2), 1(3), 2(4), 3(5), 4(6), 5(7), 6(8), 7(9)
			//System.out.printf("i : %d, x : %d\n", i, i + 2);
			//System.out.printf("i : %d, x : %d\n", i, i % 8);
			//System.out.printf("i : %d, x : %d\n", i, i % 8 + 2);
			
			sum += n * (i % 8 + 2);
		}
		
		//4. 위의 결과를 11 나눈 나머지
		//5. 위의 나머지를 11에서 뺀다
		//6. 5의 결과가 10자리가 나오면 1자리만 취한다.
		int valid = (11 - (sum % 11)) % 10; //마지막 자리 번호(유효성 번호)
		
		//7. 유효 번호 검사
		if (Integer.parseInt(jumin.substring(12)) == valid) {
			System.out.println("올바른 번호");
		} else {
			System.out.println("올바르지 않은 번호");
		}
		
		
		
	}

	private static void q8() {
		
		String content = "상품수지는 1천118억7천만달러 흑자를 냈다. 흑자 규모는 2014년(861억5천만달러) 이후 최소였다. 상품 수출이 7.8% 증가하며 역대 1위(6천254억4천만달러) 기록을 세웠으나 상품 수입(5천135억7천만달러)이 10.0% 증가했다. 유가 상승으로 원유, 가스, 석유제품 수입 가격이 두드러지게 올랐다.서비스수지는 297억4천만달러 적자를 냈다. 이는 2017년(-367억3천만달러) 다음으로 큰 역대 2위 적자 기록이다. 이 가운데 여행수지가 166억5천만달러 적자로 역시 전년에 이어 사상 두 번째로 많았다.한은 관계자는 \"2017년 사드 영향으로 중국인 입국자가 감소했다가 작년에는 회복하는 모습이지만 과거 수준으로 돌아가지 못했다\"고 설명했다. 서비스수지 가운데 운송수지(-43억7천만달러)도 사상 두 번째로 많은 적자를 냈다. 본원소득수지는 27억8천만달러 흑자였다. 자본 유출입을 나타내는 금융계정 순자산(자산-부채)은 704억9천만달러 늘었다. 직접투자에선 내국인 해외투자가 사상 최대인 389억2천만달러, 외국인 국내투자가 역대 2위인 144억8천만달러 각각 증가했다. 증권투자에선 내국인 해외투자 649억9천만달러, 외국인 국내투자 211억1천만달러씩 늘었다. 외국인 국내증권투자에선 미중 무역분쟁 등에 따른 투자 심리 약화로 주식투자는 감소했다. 국내 채권투자는 높은 국가신용등급 등에 힘입어 확대했다.파생금융상품은 13억1천만달러 줄었다. 외환보유액에서 환율 등 비거래 요인을 제거한 준비자산은 174억9천만달러 증가했다.";
		
		String word = "적자";
		
		//집합에 원하는 것이 존재 유무? indexOf(), contains()
		
		//System.out.println(content.contains(word)); //**************
		//System.out.println(content.indexOf(word) > -1); //*******************

		
		//집합에 원하는 것이 몇개가 있는지? indexOf(), replace()
		
//		int index = content.indexOf(word);
//		System.out.println(index);
//		
//		index = content.indexOf(word, index + word.length());
//		System.out.println(index);
		
		int index = 0;
		
		while (true) {
		
			index = content.indexOf(word, index);
//			System.out.printf("position : %d, word : %s\n"
//								, index
//								, content.substring(index -5, index + 5));
			
			if (index == -1) {
				break;
			}
			
			index += word.length();
			
		}
		
		
		
	}

}




















