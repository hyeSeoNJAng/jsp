<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 (EL)</title>
</head>
<body>
	<h2>표현언어 (EL)</h2>
	<form action ="3_next.jsp" method ="post">
		<table border = '1' cellpacing = "0" callpadding = "5">
			<tr>
				<th>아이디</th>
				<td><input type = "text" name = "id" maxlength = "20"></td>
			</tr>
			<tr>
				<th>애완동물</th>
				<td>
					<input type = "checkbox" name = "animal" value = "니모">니모
					<input type = "checkbox" name = "animal" value = "라쿤">라쿤
					<input type = "checkbox" name = "animal" value = "토끼">토끼
					<input type = "checkbox" name = "animal" value = "멧돼지">멧돼지
					<input type = "checkbox" name = "animal" value = "코끼리">코끼리
				</td>
				
			</tr>
			<tr>
				<div align = "center">
					<br>
					<td colspan = "2">
						<input type = "submit" value = "확인 ">
						<input type = "reset" value = "취소 ">
					</td>
				</div>	
			</tr>		
		</table>
	
	
	</form>
</body>
</html>