<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 회원가입</title>
</head>
<body>
<h3>useBean 회원가입</h3>
	<form action ="03_useBean_next.jsp" method = "post">
		<table border ="1" cellspacing="0" cellpadding = "5">
			<tr>
				<td align ="right" >아이디</td>
				<td><input type = "text" name = "id"></td>	
			</tr>
			<tr>
				<td align ="right" >비밀번호</td>
				<td><input type = "password" name = "password"></td>	
			</tr>
			<tr>
				<td align ="right" >이름</td>
				<td><input type = "text" name = "name"></td>	
			</tr>
			<tr>
				<td align ="right" >주소</td>
				<td><input type = "text" name = "address"></td>	
			</tr>
			<tr>
				<td align ="right" >이메일</td>
				<td><input type = "email" name = "email"></td>	
			</tr>
			<tr>
				<td colspan = "2" align="center">
					<input type ="submit" value = "전송">
					<input type = "reset" value ="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>