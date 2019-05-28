<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결과</h1>
	
	<%
		String id = request.getParameter("id"); // input name = "id"
		String pwd = request.getParameter("pwd"); // input name = "pwd"
	%>
	
	<div>아이디 : <%= id %></div>
	<div>비밀번호 : <%= pwd %></div>
	
</body>
</html>