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
	//한글 안깨지게
	// 이전페이지로부터 값을 받아와서 변수에 담는다
	String s_name = request.getParameter("name");
	String s_back = request.getParameter("back");
	String s_font = request.getParameter("font");
	String s_shadow = request.getParameter("shadow");
%>
<!-- 표현식으로 css속성값 출력 css 적용-->
<h3> 이름 : <%= s_name %> </h3>
<p style= "background-color:<%= s_back%>;">배경색</p>
<p style= "color:<%=s_font%>;">글자색</p>
<p style= "text-shadow:1px 1px 2px <%=s_shadow%>;">그림자색</p>
</body>
</html>