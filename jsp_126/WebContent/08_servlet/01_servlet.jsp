<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 연동</title>
</head>
<body>
	<h3>서블릿 연동</h3>
	<!-- http://localhost/jsp_126/MemberServlet -->
	<!-- http://localhost/jsp_126/08_servlet/01_servlet.jsp -->
	<form action ="../MemberServlet" method ="post">
		<table border = "1" cellpadding = "5">
			<tr>
				<td align = "right"> id </td>
				<td><input type ="text" name ="userID" size ="20"></td>		
			</tr>
			<tr>
				<td align = "right"> 이름 </td>
				<td><input type ="text" name ="userName" size ="20"></td>		
			</tr>
			<tr>
				<td align = "right"> 이메일 </td>
				<td><input type ="text" name ="userEmail" size ="20"></td>		
			</tr>
			<tr>
				<div align = "center">
					<td colspan ="2">
						<input type ="submit" value="전송">
						<input type ="reset" value="취소">
					</td>
				</div>
			</tr>
		</table>
	
	
	</form>
</body>
</html>