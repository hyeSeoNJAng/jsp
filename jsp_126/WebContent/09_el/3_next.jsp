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
	//한글 안깨지게
	request.setCharacterEncoding("UTF-8");

%>
	<table>
		<tr>
			<th>아이디
			<td>${param.id}
		</tr>
		<tr>
			<th>애완동물
			<td>${paramValues.animal[0]} ${paramValues.animal[1]} ${paramValues.animal[2]}
		</tr>
	</table>
</body>
</html>