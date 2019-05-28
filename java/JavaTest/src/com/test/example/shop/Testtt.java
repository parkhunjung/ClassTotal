package com.test.example.shop;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Scanner;
	
public class Testtt {
   private Scanner scan;
   
   public Testtt() {
	   scan = new Scanner(System.in);
   }
	
   public static void main(String[] args) {
      //n1();
      //n2();
      n3();
   }

   private static void n3() {
     
      
   }

   private static void n2() {
      try {
         
         BufferedReader reader =new BufferedReader(new FileReader("C:\\class\\java\\project\\hw\\data3.txt"));
         
         
         String line =null;
         
         while((line = reader.readLine()) != null) {
            System.out.println(line);
         }
         reader.close();
         
      } catch (Exception e) {
         System.out.println(e.toString());
      }
      
      
      
   }

   private static void n1() {
      
      try {
         BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\class\\java\\project\\hw\\data.txt"));
      
      writer.write("하나");
      writer.write("둘");
      writer.newLine();
      writer.write("셋");
      
      writer.close();
      System.out.println("완료");
      
      }catch(Exception e) {
         System.out.println(e.toString());
         
      }
      
      
      
      
   }
   
   public void start() {
	   
	   System.out.println("==================");
	   System.out.println("1. 로그인");
	   System.out.println("2. 탈퇴하기");
	   System.out.println("==================");
	   
	   System.out.print("선택(번호) : ");
	   String input = scan.nextLine();
	   
	   
	   
   }
   
   
   
}