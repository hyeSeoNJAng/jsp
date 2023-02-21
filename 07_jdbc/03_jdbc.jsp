<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보 수정</title>
</head>
<body>
<h3>상품정보 수정</h3>
	<form action = "03_jdbc_next.jsp" method = "post">
		<table border ="1" cellspacing="0" cellpadding = "5">
				<tr>
					<td align ="right" >제품코드</td>
					<td><input type = "text" name = "p_code" size= "10" value = "P_001" readonly></td>	
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
					<td colspan = "2" align="center">
						<input type ="submit" value = "전송">
						<input type = "reset" value ="취소">
					</td>
				</tr>
		</table>
	</form>
</body>
</html>

<!-- CREATE TABLE product(
    p_code   VARCHAR2(10) PRIMARY KEY,   
    p_name   VARCHAR2(50) NOT NULL,
    p_price  NUMBER(9) CONSTRAINT product_p_price_min CHECK(p_price > 0),
    p_status VARCHAR2(10)    DEFAULT '판매중',
    p_date  DATE    DEFAULT sysdate
);

INSERT INTO product(p_code, p_name, p_price, p_status, p_date)
 VALUES('P_001', '비스포크', 100000, '배송중', '2022/08/18');
COMMIT;
SELECT * FROM product ORDER BY p_code ASC; -->