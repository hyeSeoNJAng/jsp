<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 정보 및 서버 정보 읽기 </title>
</head>
<body>
<!-- 
	1. 이전페이지에서 입력받은 나이를 넘겨받는다. 
	2. 나이가 20살 이상이면 03_request_pass.jsp로 이동 (age와 같이
	3. 20살 미만이면 03_request_ng.jsp
	4. submit 말고 response.sendRedirect("이동할 페이지 ?key=값")
 -->
<h3>나이인증</h3>
<%
	String value = request.getParameter("userAge");
	int age = Integer.parseInt(value);
	if(age >= 20){
		response.sendRedirect("/jsp_126/02_request/03_request_pass.jsp?userAge="+age);
	}else if(age <20 && age > 0)
		response.sendRedirect("/jsp_126/02_request/03_request_ng.jsp?userAge="+age);
%>
</body>
</html>