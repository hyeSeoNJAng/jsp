 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품정보 등록</h3>
	<form action = "04_jdbc_next.jsp" method = "post">
		<table border ="1" cellspacing="0" cellpadding = "5">
				<tr>
					<td align ="right" >제품코드</td>
					<td><input type = "text" name = "p_code" size= "10"></td>	
				</tr>
				<tr>
					<td align ="right" >제품명</td>
					<td><input type = "text" name = "p_name" size= "50"></td>	
				</tr>
				<tr>
					<td align ="right" >제품가격</td>
					<td><input type = "text" name = "p_price"size= "9"></td>	
				</tr>
				<tr>
					<td align ="right" >입고일</td>
					<td><input type = "date" name = "p_price"size= "9"></td>	
				</tr>
							
				<tr>
					<td align ="right" >제품상태</td>
					<td>
						<select name = "p_status">
							<option value ="입고">입고</option>
							<option value ="품절">품절</option>
							<option value ="파손">파손</option>
					
						</select>
					</td>	
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