<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String value = request.getParameter("userAge");
	int age = Integer.parseInt(value);
%>

<h3>당신은 <%=age %>세 이므로 미성년자입니다</h3>
<h2>주류구매 불가능</h2>
<a href = "03_request.jsp">처음으로 이동</a>
</body>
</html>