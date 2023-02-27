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
	String dream[] = {"로또1등","연금복권1등","즉석복권1등","주식오르기","청약당첨"};
	
%>
<div>
	<h3>ㅡ3ㅡ</h3>
	<table border=1 align ="center">
		<tr>
			<th>번호
			<th>꿈
		</tr>
		<tr>
		<%for(int i = 0;i<dream.length;i++){	
				String d = dream[i];
				%>
			<td><%= i+1 %></td>
			<td><%= d %></td>
		</tr>

			<% } %>

	</table>
</div>

</body>
</html>