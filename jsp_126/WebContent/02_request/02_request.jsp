<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> p76 내장객체 - request객체 - parameter메서드  ***</title>
</head>
<body>
	<h3>내장객체 - request 객체 - parameter메서드</h3>
	<form action = "/jsp_126/02_request/02_request_next.jsp" method = "post" name = "userForm">
		<table border = "1">
			<tr>
				<td align ="right">아이디
				<td><input type = "text" name = "userId" size = "20">
			</tr>
			<tr>
				<td align ="right">비밀번호
				<td><input type = "password" name = "userPwd" size = "20">
			</tr>
			<tr>
				<td align ="right">이름
				<td><input type = "text" name = "userName" size = "20">
			</tr>
			<tr>
				<td align ="right">이메일
				<td><input type = "email" name = "userEmail" size = "20">
			</tr>
			<tr>
				<td align ="right">전공
				<td>
					<input type = "radio" name = "userMajor" value = "국문과">국어국문학과
					<input type = "radio" name = "userMajor" value = "영문과">영어영문학과
					<input type = "radio" name = "userMajor" value = "컴퓨터공학과">컴퓨터공학과
				</td>			
			</tr>
			<tr>
				<td align = "right">직업
				<td>
					<select name = "userJob">
						<option value = "programmer">programmer</option>
						<option value = "chef">chef</option>
						<option value = "ceo">ceo</option>
						<option value = "barista">barista</option>
					</select>	
				</td>
			</tr>
			<tr>
				<td align = "right"> 취미
				<td>
					<input type = "checkbox" name = "userHobby" value ="요리">요리
					<input type = "checkbox" name = "userHobby" value ="수영">수영
					<input type = "checkbox" name = "userHobby" value ="독서">독서
					<input type = "checkbox" name = "userHobby" value ="코딩">코딩
					
				</td>
			</tr>
			<tr>
				<td colspan ="2" align ="center">
					<div>
						<input type = "submit" value="전송">
						<input type = "reset" value="취소">
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>