<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="04_request_next.jsp" method ="post">
		<table border ="1">
			<tr>
				<td align ="right">이름</td>
				<td><input type ="text" name = "user_name">
			</tr>
			<tr>
				<td align ="right">배경색</td>
				<td><input type ="color" name = "user_back_color">
			</tr>
			<tr>
				<td align ="right">글자색</td>
				<td><input type ="color" name = "user_font_color">
			</tr>
			<tr>
				<td align ="right">그림자색</td>
				<td>
					<input type ="color" name = "user_shadow_color" value = "pink">
				</td>
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