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
	request.setCharacterEncoding("UTF-8");

	//한글 안깨지게 처리
	//이전 페이지로부터 값을 받아와서 변수에 담는다
	String u_name = request.getParameter("user_name"); 
	String u_back_color = request.getParameter("user_back_color");
	String u_font_color = request.getParameter("user_font_color");
	String u_shadow_color = request.getParameter("user_shadow_color");
%>

<!-- forward : 4_request_result.jsp, 파라미터 전달 -->

<jsp:include page = "04_request_result.jsp">
	<jsp:param value= "name" name="<%=u_name%>"/>
	<jsp:param value= "back" name="<%=u_back_color %>"/>
	<jsp:param value= "font" name="<%=u_font_color %>"/>
	<jsp:param value= "shadow" name="<%=u_shadow_color %>"/>
</jsp:include>

</body>
</html>