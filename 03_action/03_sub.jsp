<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- param액션태그로 넘긴 값을 받아온다 -->
	
	<%
		String s_name = request.getParameter("u_name");
		String s_age = request.getParameter("u_age");
		String s_hp = request.getParameter("u_hp");
	%>
	
	<!-- 표현식 출력 -->
	이름 >><%=s_name %><br>
	나이 >><%= s_age %><br>
	번호 >><%= s_hp %><br>
</body>
</html>	