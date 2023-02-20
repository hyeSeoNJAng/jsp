<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 스크립트릿에서 값 설정, table td에 값 출력 -->
<!-- 
	stdNo =  ;
	stdName = "";
	stdAge =25;
	kor =90
	eng =80
	math = 70

 -->
<%
	int stdNo =  101;
	String stdName = "장혜선";
	int stdAge =25;
	int kor =90;
	int eng =80;
	int math = 70;

%>
<div>
	<table border=1 align ="center">
		<tr>
			<th>학번
			<th>이름
			<th>나이
			<th>국어
			<th>영어
			<th>수학
		</tr>
		<tr>
			<td><%= stdNo %>
			<td><%= stdName %>
			<td><%= stdAge %>
			<td><%= kor %>
			<td><%= eng %>
			<td><%= math %>
		</tr>
	</table>

</div>
</body>
</html>