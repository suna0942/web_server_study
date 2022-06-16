<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!DOCTYPE html>
		<html>
		<head>
			<meta charset="UTF-8">
			<script>
				window.onload = () => {
					function f(n){
						return n.toString().padStart(2, "0");
					};
					const days = ['일', '월', '화', '수', '목', '금', '토'];
					
					const now = new Date();
					const yyyy = now.getFullYear();
					const mm = f(now.getMonth() + 1);
					const dd = f(now.getDate());
					const day = days[now.getDay()];
					
					const today = `${'${yyyy}'}년 ${'${mm}'}월 ${'${dd}'}일 ${'${day}'}요일`;
					
					document.querySelector('#today').innerHTML = today;
				};
			</script>
<%-- <%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 E요일");
	String today = sdf.format(new Date());
%> --%>
<%-- <%= today %> --%>
<%-- 이렇게 간단하게 작성가능 --%>
			
			