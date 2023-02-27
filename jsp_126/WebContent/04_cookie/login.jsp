<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "cookie._Cookies" %>
<%
	String id = request.getParameter("user_id");
	String password = request.getParameter("user_password");
	
	if(id.equals(password)){
		//id와 password가 같으면 로그인에 성공
		response.addCookie(_Cookies.createCookie("JANG", id, "/", -1));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>

<h3> ## 로 그 인 성 공 ## </h3>
<h5>=====================</h5>
<h5>로그인에 성공했습니다</h5>
<%} else { %>
<script>
	alert("## 로 그 인 실 패 ##");
	history.go(-1);
</script>
<%} %>
</body>
</html>