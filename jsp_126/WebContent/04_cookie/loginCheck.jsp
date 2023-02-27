<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="cookie._Cookies" %>
<% _Cookies cookies = new _Cookies(request); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부 판단</title>
</head>
<body>
<%
	if(cookies.exists("JANG")){
%>
아이디 "<%= cookies.getValue("JANG") %>"로 로그인한 상태
<%} else { %>
로그인 안한 상태
<% } %>
</body>
</html>