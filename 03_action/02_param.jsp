<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화</title>
</head>
<body>
	<!-- param name="kind" value = "장르" -->
	<!-- A 액션 R 로맨스 C 코미디 H 호러 M 뮤지컬 SF 공상과학-->
	<!-- param name = "star" value ="5" -->
	<!-- 5:매우좋음 4:좋음 3:보통 2:별로 1:매우별로 -->	
	<table border ="1">
		<tr>
			<td>영화제목</td>
			<td>겨울왕국</td>
		</tr>
		<tr>
			<td>상영관</td>
			<td>롯데시네마</td>
		</tr>
	</table>
	<jsp:include page = "02_param_next.jsp">
		<jsp:param name = "kind" value = "M"/>
		<jsp:param name = "star" value = "5"/>
	</jsp:include>
</body>
</html>