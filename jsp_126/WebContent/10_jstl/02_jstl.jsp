<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL)JSPStandard Tag Library : core 태그 = > 변수지원 태그 set</h3>
	<c:set var ="p_code" value = "lg" scope="request"/>
	<c:set var ="p_name" value = "gram" scope="request"/>
	<c:set var ="p_price" value = "20000" scope="request"/>
	
	<jsp:forward page ="02_next.jsp"/>
</body>
</html>