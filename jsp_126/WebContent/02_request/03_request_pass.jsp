<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인인 경우</title>
</head>
<body>

<!-- 나이를 받아온 후에 메세지를 뿌린다 
		당신은 !세이므로 성인입니다
		주류구매 가능
		<a href = "03_request.jsp"> 처음으로 이동</a>
-->
<%
	String value = request.getParameter("userAge");
	int age = Integer.parseInt(value);
%>

<h3>당신은 <%= age %>세 이므로 성인입니다 </h3>
<h2>주류구매 가능</h2>
<a href = "03_request.jsp"> 처음으로 이동</a>
</body>
</html>