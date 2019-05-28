package example;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex30_for_matter {
	public static void main(String[] args) throws Exception{
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		//matter1(reader);
		//matter2(reader);
		//matter3(reader);
		//matter4(reader);
		matter5(reader);
		//matter6(reader);
		//matter7(reader);
		//matter8();
		//matter9(reader);
		//test();
		
		
	}//main


	private static void test() {
		//요약 주민
		String jumin = "700101-1010104";
		
		jumin = jumin.replace("-", "");
		
		int sum = 0;
		
		for (int i=0; i<jumin.length()-1; i++) {			
			sum += Integer.parseInt(jumin.substring(i, i+1)) * (i % 8 + 2);
		}
		
		if (Integer.parseInt(jumin.substring(12)) == (11 - (sum % 11)) % 10) {
			System.out.println(jumin);
			System.out.println("올바른 번호");
		} else {
			System.out.println(jumin);
			System.out.println("올바르지 않은 번호");
		}
		
		
		
		
	}


	private static void matter9(BufferedReader reader) throws Exception {
		
		String jumin = "700101-1010104";

		//1. '-' 처리
		jumin = jumin.replace("-", "");

		//2.각 자리에 2 ~ 9 곱하기
		// - 9
		// - charAt(index) : '9' -> 9 : int'9' -> 57
		
		//3. 2의 값을 모두 더하기(누적)
		int sum = 0;
		
		for (int i=0; i<jumin.length()-1; i++){
			int n = Integer.parseInt(jumin.substring(i, i+1));
			
			//System.out.printf(" i : %d, x : %d\n", i, i+2);
			//System.out.printf(" i : %d, x : %d\n", i, i%8);
			//System.out.printf(" i : %d, x : %d\n", i,(i%8) + 2);
			
			sum += n * (i%8) +2;
		}
		//4. 위의 결과를 11로 나눈 나머지
		//5. 위의 나머지를 11에서 뺀다
		//6. 5의 결과가 10자리가 나오면 1자리만 취한다.
		int valid = (11 - (sum % 11))%10; //마지막 자리 번호(유효성 번호)
		
		if (Integer.parseInt(jumin.substring(12)) == valid) {
			System.out.println(jumin);
			System.out.println("올바른 번호");
		}else {
			System.out.println(jumin);
			System.out.println("올바르지 않은 번호");
		}
	}


	private static void matter8() {
		
		String content = "안녕~ 길동아~ 잘가~ 길동아";
		String word = "길동";
		
		//집합에 원하는 것이 존재 유무? indexOf(), contains()
		
				//System.out.println(content.contains(word)); //**************
				//System.out.println(content.indexOf(word) > -1); //*******************
		
//		집합에 원하는 것이 몇개가 있는지? indexOf(), replace()
				
//		int index = content.indexOf(word);
//		System.out.println(index);
//		
//		index = content.indexOf(word, index + word.length());
//		System.out.println(index);
		
		int index = 0;
		int count = 0;
		
		while (true) { // 이 while 문은 길동이라는 문장을 찾았을때 count => 를 1씩늘려준다
			
			index = content.indexOf(word, index);
//			System.out.printf("position : %d, word : %s\n"
//								, index
//								, content.substring(index -5, index + 5));
			
			if (index == -1) { //더이상 길동이를 찾지못할때 빠져나온다.
				break;
			}
			
			index += word.length(); // 여기까지가 길동이를찾고
			count++; //여기서 길동이횟수를 +1
			
		}
		System.out.println(count);	//총 길동이를 찾은 횟수	
		System.out.printf("\'길동\' 이를 총 %d회 찾았습니다.\n", count);
		
	}//matter8


//	public static boolean valid (String input) {
//		
//		boolean result = true;
//		
//		for (int i=0; i<input.length(); i++) {
//			
//			char word = input.charAt(i);
//			
//			if(word < 'A' || word > 'Z') {
//				result = false;
//				break;
//			}
//			return result;
//		}
		
//	}// valid

	private static void matter7(BufferedReader reader) throws Exception {
		System.out.print("단어 : ");
		String input = reader.readLine();
		String space = "";
		int start = 0;
		char word;
		int letter = 0;
		
		for (int i=1; i<input.length(); i++) {
			
			word = input.charAt(i);
			if(word >= 'A' && word <= 'Z') { 
	
				space += input.substring(start, i) + " ";
				start = i;
				
			}
		}
		System.out.println(space + input.substring(start, input.length()));
		
		
		
	}// matter7


	private static void matter6(BufferedReader reader) throws Exception {
		
		String txt = "     하나      둘     셋     ";
		System.out.printf("[%s] ", txt.replace("하나      둘     셋","하나둘셋"));
			
	}//matter6

	private static void matter5(BufferedReader reader) throws Exception {
		System.out.print("숫자 : ");
		String num = (reader.readLine());
		String comma = ",";
		
		
		
		for (int i=num.length()-3; i>0; i-=3) {
			
			String lNum = num.substring(0, i);
			String rNum = num.substring(i);
			num = lNum + comma + rNum;
			
		}
		
		System.out.printf("결과 : %s", num);
		
	}//matter5

	private static void matter4(BufferedReader reader) throws Exception { //스트링 비교연산자는 꼭 .equals 로*****
		
		String fName;
		int index;
		int gif = 0;
		int jpg = 0;
		int png = 0;
		int hwp = 0;
		int doc = 0;
			
		for(int i=0; i<10; i++) {
		System.out.print("파일명 : ");
		fName = reader.readLine();
		
		index = fName.lastIndexOf(".");
		String domain = fName.substring(index+1);
		
			if( (!domain.equals("gif"))
					&& (!domain.equals("jpg")) 
					&& (!domain.equals("png")) 
					&& (!domain.equals("hwp")) 
					&& (!domain.equals("doc")) ){
				System.out.println("잘못된 입력입니다. 다시입력해주세요.");
				break;
			}else if(domain.equals("gif")) {
				gif++;	
			}else if(domain.equals("jpg")) {
				jpg++;	
			}else if(domain.equals("png")) {
				png++;	
			}else if(domain.equals("hwp")) {
				hwp++;	
			}else if(domain.equals("doc")) {
				doc++;	
			}	
			
		}
		System.out.printf("파일명 : %d개\n" , gif);
		System.out.printf("파일명 : %d개\n" , jpg);
		System.out.printf("파일명 : %d개\n" , png);
		System.out.printf("파일명 : %d개\n" , hwp);
		System.out.printf("파일명 : %d개\n" , doc);
		
		
	}// matter4

	private static void matter3(BufferedReader reader) throws Exception {
		System.out.print("숫자 : ");
		String num = reader.readLine();
		
		int sum = 0;
		
		System.out.print(num.substring(0, 1)); //첫번째 숫자만 따로 뽑아냄
		int fNum = Integer.parseInt(num.substring(0,1)); //첫번째 숫자를 받아서 Int로
		
		for (int i=1; i<num.length(); i++) {
			System.out.print(" + " + num.substring(i, i+1));
			sum += Integer.parseInt(num.substring(i, i+1));
		}// 두번째숫자부터 받아내고 전부 더하는식
			
			System.out.printf(" = %d", sum+fNum);
		
		
		
		
		
	}//matter3

	private static void matter2(BufferedReader reader) throws Exception {
		System.out.print("이메일 : ");
		String txt = reader.readLine();
		
		int index = txt.indexOf("@"); //@추출
		
		System.out.printf("아이디 : %s\n", txt.substring(0, index));
		System.out.printf("도메일 : %s\n", txt.substring(index+1));
		
		
		
		
		
	}//matter2

	private static void matter1(BufferedReader reader) throws Exception {
		System.out.print("문장 입력 : ");
		String txt = reader.readLine();
		System.out.print("역순 결과 : ");
		for (int i=txt.length()-1; i>=0; i--) {
			System.out.print(txt.substring(i, i+1));
			}
		
		
	
	
	}//matter1
	
	
	
}