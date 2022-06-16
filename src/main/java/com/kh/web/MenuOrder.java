package com.kh.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/menuOrder.do")
public class MenuOrder extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int sumPrice = 0;
		String mainMenu = request.getParameter("mainMenu");
		String sideMenu = request.getParameter("sideMenu");
		String drinkMenu = request.getParameter("drinkMenu");
		switch(mainMenu){
		case "한우버거": sumPrice += 5000; break;
		case "밥버거": sumPrice += 4500; break;
		case "치즈버거": sumPrice += 4000; break;
		}
		switch(sideMenu){
		case "감자튀김": sumPrice += 1500; break;
		case "어니언링": sumPrice += 1700; break;
		}
		switch(drinkMenu){
		case "사이다": sumPrice += 1000; break;
		case "콜라": sumPrice += 1000; break;
		case "커피": sumPrice += 1500; break;
		case "밀크쉐이크": sumPrice += 2500; break;
		}
		
		request.setAttribute("sumPrice", sumPrice);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/menu/menuEnd.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
