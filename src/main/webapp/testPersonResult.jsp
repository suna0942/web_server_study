<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Arrays"%>
<%
	// jsp scriptlet - java 영역
	// request, response객체에 선언없이 접근 가능 (.forward(request, response);를 했기 때문)
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String animal = request.getParameter("animal");
	String[] foods = request.getParameterValues("food");
	
	System.out.println("name@jsp = " + name);
	System.out.println("color@jsp = " + color);
	System.out.println("animal@jsp = " + animal);
	System.out.println("food@jsp = " + (foods != null ? Arrays.toString(foods) : null));
	// langs를 제외한 util은 상단에 import해줘야한다
	
	String recommendation = (String) request.getAttribute("recommendation");
	System.out.println("recommendation@jsp =" + recommendation);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>개인취향검사결과 <%= request.getMethod() %></h1>
<p>이름: <%= name %></p> <%-- 출력식 --%>
<p>선호색상: <%= color %></p>
<p>선호동물: <%= animal %></p>
<p>선호음식: <%= foods != null ? Arrays.toString(foods) : "없음" %></p>
<hr/>
<h2><span><%= name %></span>님, 오늘은 <mark><%= recommendation %></mark> 어떠세요?</h2>
</body>
</html>