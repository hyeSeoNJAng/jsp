<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
<div align ="center">
<h3>*** 구구단 출력 ***</h3>
<table border=1 text-align ="center">
	<%
		for(int dan = 2; dan<10;dan++){

	%>
	<tr>
		<th  colspan ="2">= <%= dan %>단 =</th>
	</tr>
	<% 
	for(int i =1;i<10;i++){	
		int result = dan * i;
	%>

	<tr>
		<td> <%=dan %> x <%=i %> = </td>
		<td> <%= result %></td>
		<%} %>
	</tr>
	<%};%>
</table>
</div>



</body>
</html>



