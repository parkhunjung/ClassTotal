package example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Ex25_7_if_박헌정 {
	
	public static void main(String[] args) throws IOException {
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("[들어온 시간]");
		System.out.print("시 : ");
		int iHour = Integer.parseInt(reader.readLine()); //들어가는 시간 입력
		
		System.out.print("분 : ");
		int iMinute = Integer.parseInt(reader.readLine()); //들어가는 분
		
		System.out.println("[나간 시간]");
		System.out.print("시 : ");
		int oHour = Integer.parseInt(reader.readLine()); // 나가는 시간 입력
		
		System.out.print("분 : ");
		int oMinute = Integer.parseInt(reader.readLine()); // 나가는 분
		
		calMoney(iHour, iMinute, oHour, oMinute); // 캘린더로 시간과 분을 받아서 계산하는 메소드
		parkFee(iHour, iMinute, oHour, oMinute); // 캘린더 없이 시간과 분을 받아서 계산하는 메소드
	}//main

	private static void calMoney(int iHour, int iMinute, int oHour, int oMinute) {
		
		Calendar nowIn = Calendar.getInstance(); //현재시간을 받아옴
		nowIn.set(Calendar.HOUR, iHour); //현재시간에 입력한 시간을 얻음
		nowIn.set(Calendar.MINUTE, iMinute); // 현재시간에 입력한 분을 얻음
		
		int inHour = nowIn.get(Calendar.HOUR); //얻은시간을 inHour 변수에 입력
		int inMinute = nowIn.get(Calendar.MINUTE); //얻은 분을 inMinute 변수에 입력
		
		int result = inHour * 60 + inMinute; // 시간과분을 분단위로 계산해서 result에 입력
		
		Calendar nowOut = Calendar.getInstance(); // 현재시간을 받아옴
		nowOut.set(Calendar.HOUR, oHour); // 나가는시간을 얻어옴
		nowOut.set(Calendar.MINUTE, oMinute);
		
		int outHour = nowOut.get(Calendar.HOUR);
		int outMinute = nowOut.get(Calendar.MINUTE);
		
		int result2 = outHour * 60 + outMinute; //똑같이 받아온 변수를 분단위로 계산해서 result2에 입력
		
		if (result2 - result > 30) {
			
			System.out.printf("주차 요금은 %d원 입니다.\n", (result2 - result-30) / 10 * 2000); //나가는시간에서 들어온시간 + 무료시간30분을 추가로 빼고남은시간을 10으로 나눳을때 나온몫을 1당 2천원씩 계산
		}else {
			System.out.println("주차 요금이 나오지 않았습니다.");
		}
		
	
	}// 캘린더를 사용한 계산방식

	private static void parkFee(int iHour, int iMinute, int oHour, int oMinute) {
		
		int in = iHour * 60 + iMinute; // 들어온 시간
		int out = oHour * 60 + oMinute; // 나가는 시간
		
		if (out - in > 30) { 
			System.out.printf("주차 요금은 %d 입니다.\n", (out - in - 30) / 10 * 2000); //나간시간에서 들어온 시간이 30분이넘었을때 작동
		}else {
			System.out.println("주차 요금이 나오지 않았습니다."); // 30분을 넘엇지만 10분이 넘지않앗거나 30분을 넘지않았을때
		}
			
		
	}// 캘린더없이 계산하는 방식
	
	
}
