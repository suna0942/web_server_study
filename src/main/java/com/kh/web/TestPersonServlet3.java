package com.kh.web;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/testPerson3.do")
public class TestPersonServlet3 extends HttpServlet {
	
	/**
	 * POST 요청 처리시 doPost 오버라이드
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 1. 인코딩처리(POST 요청 시 필수, 생략 시 글자 깨짐)
		request.setCharacterEncoding("utf-8");
		
		// 2. 사용자입력값 처리
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String animal = request.getParameter("animal");
		String[] foods = request.getParameterValues("food");
		
		System.out.println("name = " + name);
		System.out.println("color = " + color);
		System.out.println("animal = " + animal);
		System.out.println("food = " + (foods != null ? Arrays.toString(foods) : null));
		
		// 3. 업무로직
		// 추천서비스
		String recommendation = "";
		switch(color) {
		case "빨강": recommendation = "빨간 초장을 버무린 회덮밥"; break;
		case "파랑": recommendation = "파랑색의 시원한 죠스바"; break;
		case "노랑": recommendation = "산뜻한 노란 우산"; break;
		case "초록": recommendation = "초록초록한 배춧잎"; break;
		
		}
		
		// 4. 응답메세지 작성 -> JSP로 위임
		// jsp에 데이터 전달(request로 꺼내쓸 수 없는 데이터) : request 속성으로 등록
		request.setAttribute("recommendation", recommendation); // key, value
		RequestDispatcher reqDispatcher = request.getRequestDispatcher("/testPersonResult.jsp"); // src/main/webapp
		reqDispatcher.forward(request, response);
		
	}

}
