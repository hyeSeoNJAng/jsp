<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request fruit속성</h3>
	<h4 style = "color:brown">EL 태그로 출력</h4>
	${fruits}
	
	<hr>
	<h4 style = "color:brown">배열을 이용하여 출력</h4>
	<% ArrayList arr = (ArrayList)request.getAttribute("fruits"); 
		for(int i = 0;i<arr.size();i++){
	%>
		<strong style = "color:red"><%= arr.get(i) %></strong>
	<%} %>
	<hr>
	요청 URI : <strong>${pageContext.request.requestURI}</strong>
	<br>
	요청 PATH : <strong>${pageContext.request.contextPath}</strong>
	
	<br><br>
	scope : 
	${requestScope.fruits[0]}
	${requestScope.fruits[1]}
	${requestScope.fruits[2]}
	${requestScope.fruits[3]}

</body>
</html>