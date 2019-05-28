package com.test.example.collection;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

public class Ex75_Stack {
	public static void main(String[] args) {
		
		
		//Queue, 큐
		// - 선입선출
		// - FIFO(First Input First Output
		
		//Stack, 스택
		// - 후입선출
		// - LIFO(Last Input First Output
		
		
//		ex_queue();
		ex_stack();
		
		
		
		
	}//main

	private static void ex_stack() {
		
		//     =============================
		//  <-> 	노랑  파랑  빨강      ||
		//	   =============================
			
		Stack<String> stack = new Stack<String>();
		
		//1. 요소 추가 -> push down
		stack.push("빨강");
		stack.push("파랑");
		stack.push("노랑");
		
		//2. 요소 개수
		System.out.println(stack.size());
		
		//3. 요소 접근 -> pop up
		System.out.println(stack.pop());
		System.out.println(stack.pop());
		System.out.println(stack.pop());
		
		System.out.println(stack.size());
	
		stack.push("빨강");
		stack.push("파랑");
		stack.push("노랑");
		
		System.out.println(stack.peek());
		System.out.println(stack.size());
		
		
		
	}

	private static void ex_queue() {
		
		//     =============================
		// - > 		노랑  파랑  빨강    - >
		//	   =============================
		
		Queue<String> queue = new LinkedList<String>();
		
		//1. 요소 추가
		queue.add("빨강");
		queue.add("파랑");
		queue.add("노랑");
		
		//2. 요소 개수
//		System.out.println(queue.size());
//		
//		//3. 요소 접근(읽기 + 삭제)
//		System.out.println(queue.poll());
//		
//		System.out.println(queue.size());
//		System.out.println(queue.poll());
//		
//		System.out.println(queue.size());
//		System.out.println(queue.poll());
//		
		while(queue.size() > 0) {
			System.out.println(queue.poll());
		}
		System.out.println();
		
		queue.add("빨강");
		queue.add("파랑");
		queue.add("노랑");
		
		System.out.println(queue.peek());
		System.out.println(queue.size());
		
		System.out.println(queue.peek());
		System.out.println(queue.size());
		
		
		
	}
	
	
}
































