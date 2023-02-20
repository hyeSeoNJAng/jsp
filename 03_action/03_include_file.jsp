<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<%@ include file = "03_variable.jsp" %>
	날짜 : <%= date %>
	<fieldset>
		<legend>include디렉티브</legend>
		<%
			String userName = request.getParameter("user_name");
			String userAge = request.getParameter("user_age");
			String userHp = request.getParameter("user_hp");
		
		out.print("====<방법1. out객체로 출력>====<br>");
		out.print("이름 >> " + userName +"<br>");
		out.print("나이 >> " + userAge +"<br>");
		out.print("번호 >> " + userHp +"<br>");
		
		%>
		<hr>
		===방법2. Expresstion 출력===<br>
		이름: <%=userName %><br>
		나이: <%=userAge %><br>
		번호: <%=userHp %><br>
		<hr>
		<!-- 파라미터로 값 전달 : u_name = userName & u_age = userAge&u_hp = userHp-->
		<jsp:include page="03_sub.jsp">
			<jsp:param name="u_name" value = "<%=userName %>"/>
			<jsp:param name="u_age" value = "<%=userAge %>"/>
			<jsp:param name="u_hp" value = "<%=userHp %>"/>	
		</jsp:include>
		
	</fieldset>
	 <%@  include file = "03_footer.jsp" %>
</body>
</html>