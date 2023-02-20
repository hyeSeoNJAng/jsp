<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "java.util.Calendar,java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식 활용</title>
</head>
<body>
<div align ="center">
	<h3>현재시간</h3>
	<%
		Date date = new Date();
		int hours = date.getHours();
		int minutes = date.getMinutes();
		int second = date.getSeconds();
		String result;
		
		//if문 오전 오후
		if(hours>=12){
			result = "오후";
		} else result ="오전";
		out.print("<h4>=== 방법1. 스크립트릿으로 출력 ===</h4>" );
		out.print(result);
		//삼항연산자 오전오후 
		String now = hours >= 12 ? "오후": "오전";
	%>
	<h4>=== 방법2. 선언부 출력 === </h4>
	<h5> result + 시간 출력</h5>
	<%= result %> <%= hours %>:0<%= minutes%>:<%=second %>
	<h5> now + 시간 출력</h5>
	<%= now %> <%= hours %>:0<%= minutes%>:<%=second %>
</div>
<hr>
<%!
	public int getBigNumber(int i, int j){
		int bigger = i > j? i:j;
		return bigger;
	}
%>

<%= getBigNumber(4,6) %>

</body>
</html>



