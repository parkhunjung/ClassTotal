package com.test.example.inheritance;

import java.util.Random;

public class MyUtil {
	
	//1.
	public int nextInt() {
		Random rnd = new Random();
		
		return rnd.nextInt();
	}
	
	
	
	//2. 
	public int nextSmallInt() {
		
		Random rnd = new Random();
		
		return rnd.nextInt(10)+1;
		
	}
	
	
	//3.
	public String nextColor() {
		
		Random rnd = new Random();
		
		String[] color = {"red", "yellow", "blue", "black", "white"};
		
		return color[rnd.nextInt(color.length)];
		
	}
	
	
	
	
}




























