<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시간 출력</title>
</head>
<body>
<%
	/* Object 속성값 = (형변환)request.getAttribute(String 속성명); */
	Calendar calendar = (Calendar)request.getAttribute("time");
%>
	현재날짜 <%= calendar.get(Calendar.YEAR) %>년
	&nbsp;&nbsp;&nbsp; <%= calendar.get(Calendar.MONTH) +1 %>월
	&nbsp;&nbsp;&nbsp; <%= calendar.get(Calendar.DATE) %>일
	<hr>
	현재시간은 <%= calendar.get(Calendar.HOUR) %>시 &nbsp;
			<%= calendar.get(Calendar.MINUTE) %>분 &nbsp;
			<%= calendar.get(Calendar.SECOND) %>초 &nbsp;
</body>
</html>