<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/menu/today.jsp"%>
<title>주문 결과 페이지</title>
<style>
span#mainMenu {
	color: navy;
	font-size: 2em;
}

span#sideMenu {
	color: indigo;
	font-size: 1.5em;
}

span#drinkMenu {
	color: yellowgreen;
}

span#price {
	color: maroon;
	font-size: 2.5em;
}
</style>
<%
	String mainMenu = request.getParameter("mainMenu");
	String sideMenu = request.getParameter("sideMenu");
	String drinkMenu = request.getParameter("drinkMenu");
	int sumPrice = (Integer) request.getAttribute("sumPrice");
%>
</head>
<body>
	<h2>감사합니다.<sub style="color:lightgray" id="today"></sub></h2>
	<span id="mainMenu"><%= mainMenu %></span>,
	<span id="sideMenu"><%= sideMenu %></span>,
	<span id="drinkMenu"><%= drinkMenu %></span>을/를 주문하셨습니다.
	<br /> 총 결제금액은
	<span id="price"><%= sumPrice %>원</span> 입니다.
</body>
</html>
