<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="useBean.MemberInfo"%>
 <%@page import ="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈을 이용한 객체 생성</title>
</head>
<body>
	<h3>자바빈을 이용한 객체 생성</h3>
 	<%
 		//MemberInfo 클래스 인스턴스 생성
 		MemberInfo info = new MemberInfo();
 		//setter로 값 설장(멤버변수로 값 전달하기 위함)
 		info.setId("ha0ssun22");
 		info.setPassword("ha0password");
 		info.setName("장혜선");
 		info.setAddress("대전광역시");
 		info.setEmail("ha0ssun22@naver.com");
 		
 		Date date = new Date();
 		info.setRegisterDate(date);
 		//1.out을 이용하여 값 출력
 		out.print("<h4>==========1.out 이용하여 값 출력하기 ============</h4>");
 		out.print(info.toString() +"<br>");
		out.print("<strong>id >> </strong>" + info.getId()+"<br>");
		out.print("<strong>password >> </strong>" + info.getPassword()+"<br>");
		out.print("<strong>name >> </strong>" + info.getName()+"<br>");
		out.print("<strong>Address >> </strong>" + info.getAddress()+"<br>");
		out.print("<strong>email >> </strong>" + info.getEmail()+"<br>");
		out.print("<strong>register >> </strong>" + info.getRegisterDate()+"<br>");
 		//request.setAttribute("속성명","값"); ~>주소값 전달
 		request.setAttribute("member",info);
 		
 		
 	%>
 	
 	<!-- getAttribute()로 주소값 전달받음, 표현식을 이용하여 각각의 값 출력  -->
 	<% MemberInfo info2 = (MemberInfo)request.getAttribute("member"); %>
 	
 	<h4> ==========getAttribute()로 주소값 전달받음===========</h4>
 	<strong>id >> </strong><%= info2.getId() %><br>
 	<strong>password >> </strong><%= info2.getPassword() %><br>
 	<strong>name >> </strong><%= info2.getName() %><br>
 	<strong>address >> </strong><%= info2.getAddress() %><br>
 	<strong>email >> </strong><%= info2.getEmail() %><br>
 	<strong>register date >> </strong><%= info.getRegisterDate() %><br>
 	
</body>
</html>