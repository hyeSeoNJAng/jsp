<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 액션태그</title>
</head>
<body>
	<h3>액션태그 includ</h3>
	액션태그란 jsp에서 어떤 동작을 하도록 지시하는 태그
	<hr>
	문법:
	<%-- <jsp:includ page = "포함할페이지" /> --%>
	액션태그 종류 : include forward param...
	
	<table border ="1">
		<tr>
			<!-- header  -->
			<td colspan = "2">
				<jsp:include page="01_header.jsp"/>
			</td>
		</tr>
		<tr>
			<!-- left -->
			<td width ="150" valign = "top">
				<jsp:include page="01_left.jsp"/>
			</td>
			<!-- main -->
			<td width ="500" height = "300" valign ="top">
				메인 레이아웃<br>
				로그인<br>
				<img src ="./images/photozeniaGoods02.jpg" width ="100%">				
			</td>
		</tr>
		<tr>
			<!-- footer -->
			<td colspan = "2">
				<jsp:include page="01_footer.jsp"/>
			</td>
		</tr>
	</table> 
</body>
</html>