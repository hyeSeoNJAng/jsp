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
		String id = request.getParameter("id");	
		String password = request.getParameter("password");
		request.setAttribute("id",id);
		request.setAttribute("password",password);
	%>
	
	<h2>방법 1 기존 표현식(Expression)</h2>
	
	<table>
		<tr>
			<th>아이디
			<td><%= id %>
		</tr>
		<tr>
			<th>비밀번호
			<td><%= password %>
		</tr>
	</table>
	
	<hr>
	<h2>방법 2 EL(Expression Languege)</h2>
	<table>
		<tr>
			<th>아이디
			<td>${id} or ${param.id}
		</tr>
		<tr>
			<th>비밀번호
			<td>${password} or ${param.password}
		</tr>
	</table>
	
	<h2>방법 3 대괄호 사용</h2>
	<table>
		<tr>
			<th>아이디
			<td>${param["id"]}
		</tr>
		<tr>
			<th>비밀번호
			<td>${param["password"]}
		</tr>
	</table>
	
</body>
</html>