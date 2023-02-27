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
<h3>상품정보</h3>
<%
	//한글 안깨지게
	request.setCharacterEncoding("UTF-8");
%>
<!-- EL 태그 사용하여 출력 -->
	<table>
		<tr>
			<th>상품코드</th>
			<td>${p_code}</td>
		</tr>
		<tr>
			<th>상품명</th>
			<td>${p_name}</td>
		</tr>
		<tr>
			<th>상품가격</th>
			<td>${p_price}</td>
		</tr>
	</table>
	<hr>
<!-- EL태그 사용 + scope :~~Scope.변수명-->
	<table>
		<tr>
			<th>상품코드</th>
			<td>${requestScope.p_code}</td>
		</tr>
		<tr>
			<th>상품명</th>
			<td>${requestScope.p_name}</td>
		</tr>
		<tr>
			<th>상품가격</th>
			<td>${requestScope.p_price}</td>
		</tr>
	</table>
</body>
</html>