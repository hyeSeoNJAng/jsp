<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "cookie._Cookies" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%response.addCookie(_Cookies.createCookie("JANG","","/",0)); %>
로그아웃 했습니다~

</body>
</html>