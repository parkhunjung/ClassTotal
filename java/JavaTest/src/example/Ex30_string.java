package example;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex30_string {
	public static void main(String[] args) throws Exception {
		
		//m1();
		//m2();
		//m3();
		//m4();
		//m5();
		//m6();
		m7();
		//m8();
		//m9();
		//m10();
		//m11();
	}

	private static void m11() {
		
		//문자열 치환
		// - 대상 문자열에서 특정 문자열을 찾아서 다른 문자열로 바꾸기
		// String replace(String old, String new) => (찾을거, 바꿀거)
		String txt = "안녕하세요. 홍길동입니다.";
		
		System.out.println(txt);
		
		System.out.println(txt.replace("홍", "아"));
		
		
		
	}

	private static void m10() {
		
		//문자열 추출
		// - char charAt(int index)
		// - String substring(int start, int end)
		//		- start(inclusive), end(exclusive)
		// - String substring(int start) => 끝을따로 지정하지않고 그냥 존재하는것의 끝까지 가서 찍으라는뜻
		
		// ctrl + shift + l = 내파일에서 내가원하는 이름이 들어간 목록을 찾아줌 STS
			
		
		String txt = "안녕하세요. 홍길동입니다.";
		
		System.out.println(txt.substring(3, 8));
		System.out.println(txt.substring(3, 4)); //'세'(x), "세" (o) 
		
		String jumin = "950214-201922";
		
		//남자? 여자?
		System.out.println(jumin.charAt(7) == '2');
		System.out.println(jumin.substring(7, 8) == ("2")); //잘못된 자료형 .equals 를 꼭써야한다. 
		System.out.println(jumin.substring(7, 8).equals("2"));
		
		String s1 = "홍길동";
		String s2 = "홍길동"; // 참조형의 특징 =한 문맥의 같은단어는 같은주소지를 갖게됨 즉 s1,s2는 같은주소지이다.(ex. 100번지)
		String s3 = "홍"; // => 시작이다르다. 홍이라는 글자를 만들고 다른주소지를 s3에 넣어준다. (ex. 200번지)
		s3 = s3 + "길동"; // 이단어와 홍이라는 단어가 합쳐져 '홍길동'이라는 단어가 생기지만 
						  // 연산의결과는 같은글자여도 다른주소지를 참조한다.
		
		System.out.println(s1 == s2); // true => 트루인이유? s1과 s2 는 같은주소지의 데이터이기 때문 (100 = 100)
		System.out.println(s1 == s3); // false => s2 와 s3 가 다른 주소지이기 때문에 false 를 나타내는 것이다. (100 != 200)
									  // 그래서 == < 이연산자를 쓰는것이아닌 .equals 를 쓰는것이다.
		
		// 몇년생?
		System.out.println("19" + jumin.substring(0,2));
		System.out.println(jumin.substring(7));
		
		
		//전체 경로
		//C:\class\java\JavaTest\src\Hello.java
		String path = "C:\\class\\java\\JavaTest\\src\\Hello.java";
		
		//1. 파일명?? => Hello.java 를 찾아오란뜻
		System.out.println(path.lastIndexOf("\\")); // => 라스트인덱스오브(lastIndexOf)는 반대쪽부터 검색
		int index = path.lastIndexOf("\\");
		String name = path.substring(index+1);
		System.out.println(name); // => 끝에찾은것의 다음것부터 찾아오라는 뜻 
		
		//2. 확장자?
		index = name.lastIndexOf(".");
		String ext = name.substring(index+1);
		System.out.println(ext);
		
		//3. 확장자를 뺀 파일명
		String name2 = name.substring(0, index);
		System.out.println(name2);
		
		
		
		
		
		}

	private static void m9() {
		
		//(패턴)검색
		// - boolean startsWith(String word) // 이걸로 시작합니까?
		// - boolean endsWith(String word) // 이걸로 끝납니까?
		// - indexOf()를 가지고 했던 행동들 일부를  단순화 시켜놓은 메소드
		
		String name = "홍길동";
		
		//이름이 '홍'씨 ??
		System.out.println(name.indexOf("홍") == 0); //불리언으로 바꿔서 질문의 질의응답을 만듬
		System.out.println(name.charAt(0) == '홍'); //같은작업이지만 다른 방법으로도 사용가능
		System.out.println(name.startsWith("홍")); //셋중에 결과는같지만 가장좋은 문법 // 전용메소드
		
		//이름이 '동' 으로 끝??
		System.out.println(name.endsWith("동"));
		System.out.println(name.indexOf("동") == name.length()-1);
		System.out.println(name.charAt(name.length()-1) == '동');
		
	}

	private static void m8() {
		
		//대소문자 변환
		// - String toUpperCase()
		// - STring toLowerCase()
		String txt = "Hello Hong";
		System.out.println(txt.toUpperCase());
		System.out.println(txt.toLowerCase());
		
		//
		String data = "주 과목은 Java 입니다. 어쩌구 저쩌구~";
		String word = "java";
		
		System.out.println();
				
		//정밀도!
		//if (data.indexOf(word) > -1) {
		
		//검색율!
		if (data.toUpperCase().indexOf(word.toUpperCase()) > -1) {
			System.out.println("검색 결과O");
		}else {
			System.out.println("검색 결과X");
		}
		
	}

	private static void m7() {
		
		//문자열 검색
		// - 문자열내에서 원하는 문자(문자열)을 검색 -> 발견한 위치 반환
		// - int indexOf(char c)
		// - int indexOf(String s) ***
		// - int indexOf(char c, int fromIndex)
		// - int indexOf(String s, int fromIndex) ***
		
		String txt = "안녕하세요. 홍길동입니다.";
		
		int result = txt.indexOf('홍');
		System.out.println(result);
		
		result = txt.indexOf("홍길동");
		System.out.println(result); //처음 발견된 위치를 반환 
		
		result = txt.indexOf("홍길동");
		System.out.println(result);
		
		result = txt.indexOf("아무개"); //찾을수 없는 수를 발견하면 문자열을 반환하지못하는 -1을 돌려줌
		System.out.println(result);
		
		if (txt.indexOf("홍길등") > -1) {
			System.out.println("길동이 찾음");
		}else {
			System.out.println("길동이 없음");
		}
		
		//게시판 글쓰기
		// - 관리자 모드 : 금지어 설정
		
		String content = "안녕하세요. 방금 가입했습니다.";
		
		//유효성 검사
		String word = "바보";
		if (content.indexOf(word) == -1) {
			System.out.println("글쓰기 진행..");			
		}else {
			System.out.println("금지어는 사용 불가능");
		}
		
		
		
		txt = "안녕하세요. 홍길동입니다. 반갑습니다. 홍길동입니다.";
		System.out.println(txt.indexOf("홍길동"));
		System.out.println(txt.indexOf("홍길동", 10));
		
		int index = txt.indexOf("홍길동"); //7
		System.out.println(index);
		
		index = txt.indexOf("홍길동", index + "홍길동".length());
		System.out.println(index);
				
	}

	private static void m6() {
		
		//공백 제거
		// - String trim()
		// - 문자열내에 존재하는 공백문자(탭,스페이스,엔터 등) 제거한 문자열을 반환
		String txt = "      하나       둘      셋     ";
		System.out.printf("[%s]\n", txt.trim()); // 앞이나 뒤의공백을 제거 / 주로 검색엔진에서 쓰임
		
		
		
	}//m6

	private static void m5() {
		
		//1. 주민등록번호 입력 -> 반드시 '-' 입력
		String jumin = "950214-1098765";
		
		if(jumin.charAt(6) == '-'){
			System.out.println("올바른 주민 번호 입니다.");
			if (jumin.charAt(7) == 1) {
				System.out.println("남자");
			}else {
				System.out.println("여자");
			}
				
		}else {
			System.out.println("올바르지 못한 표현 입니다.");
		}
		
		//사용자 입력 > 영문자(소문자)만 입력가능
		//사용자 입력 > 영문자(소문자+대문자)만 입력가능
		String input = "aBc";
//		
//		for(int i=0; i<input.length(); i++) {
//			
//			char c = input.charAt(i);
//			
//			if(c >= 'a' && c <= 'z') {
//				System.out.println("O");
//			}else {
//				System.out.println("X");
//			}
//				
//		}
		
		if(valid(input)) {
			System.out.println("O");
		}else {
			System.out.println("X");
		}
		
		
	}//m5
	
	public static boolean valid(String input) {
		
			boolean result = true;
			
			for(int i=0; i<input.length(); i++) {
				
			char c = input.charAt(i);
			
			//*** 유효성 검사는 잘못된 부분을 찾는 조건을 만들어라
			//if(c < 'a' || c > 'z') {
			if( (c < 'a' || c > 'z') //소문자검사 
					&& (c < 'A' || c > 'Z') //대문자검사
					&& (c < '0' || c > '9')
					&& (c < '가' || c > '힣')
					) {
				result = false;
				break;
			}
			
			
		}
		return result;
		
	} // valid 메소드

	private static void m4() {
		//문자열 추출
		// - charAt(int index)
		// - 원하는 위치의 문자 하나를 추출해서 반환해주는 역할
		// - zero-based Index
		
		String txt = "안녕하세요. 홍길동님.";
		System.out.println(txt.charAt(2));
		System.out.println((int)txt.charAt(2));
		
		//마지막 문자 추출
		System.out.println(txt.charAt(11));
		
		//에러메시지 java.lang.StringIndexOutOfBoundsException: String index out of range: 12 => 최대길이보다 더큰숫자 12를입력해 오류
		System.out.println(txt.charAt(txt.length()-1));
		
		//"ABC"
		//"012"
		//length = 3
		//charAt(3)
		
		//for문
		//txt -> 1글자씩 읽기
		for(int index=0; index<txt.length(); index++) {
			System.out.println(txt.charAt(index));
		}
		
	}//m4

	private static void m3() throws Exception {
		//회원가입, 글쓰기, 검색 등..
		//회원가입 > 이름 입력 > 이름을 2~5자 이내로 입력하세요
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("이름 입력(2~5자) : ");
		
		String name = reader.readLine();
		
		//유효성 검사
		if (name.length() >= 2 && name.length() <= 5) {
			//통과
			System.out.println("회원 가입 진행");
		}else {
			//거절
			System.out.println("이름은 2~5자 이내로만 입력하시오.");
		}
		
	}

	private static void m2() throws Exception {
		
		//문자열 길이
		// - 문자열을 구성하는 문자의 갯수( 몇글자 )
		// int length()
		
		String txt = "ABCDEFG";
		System.out.println(txt.length());
		
		txt = "ABC123가나다";
		System.out.println(txt.length());
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("문장 입력 : ");
		String input = reader.readLine();
		
		System.out.printf("입력한 문장은 총 %d글자로 되어있습니다.\n", input.length());
		
		
	}


	private static void m1() {
		
		//문자열(String) -> 참조형(References Type)
		int a = 10; //값형
		String s = "홍길동"; //참조형
		
		a = 100;
		s = "홍길동입니다.";
		
	}
}