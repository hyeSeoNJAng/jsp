<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>내장객체 ) request객체  parameter</h3>
	request란 내장객체로서 브라우저를 통해 서버에 어떤 정보를 요청하는 것을 말하며, 이러한 정보를 request객체가 관리한다.
	<form action ="03_include_file.jsp" method ="get">
		<table border ="1">
			<tr>
				<td align ="right">이름</td>
				<td><input type ="text" name = "user_name" size = "20">
			</tr>
			<tr>
				<td align ="right">나이</td>
				<td><input type ="text" name = "user_age" size = "3">
			</tr>
			<tr>
				<td align ="right">핸드폰</td>
				<td><input type ="text" name = "user_hp" size = "15">
			</tr>
			
			<tr>
				<div align = "center">
					<hr>
					<td colspan ="2" align ="center">
						<input type ="submit">
						<input type = "reset">
					</td>
				</div>
			</tr>
		</table>
	</form>	
</body>
</html>