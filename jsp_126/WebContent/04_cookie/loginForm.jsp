<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<form action="login.jsp" method = "post">
		<table align ="center" width="500px">
			<tr>
				<td>아이디</td>
				<td><input type = "text" name = "user_id" size = "10"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type ="password" name = "user_password" size = "10"></td>
			</tr>
			<tr>
				<td colspan ="2">
					<input type ="submit" value = "로그인">
					<input type = "reset" value = "취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>