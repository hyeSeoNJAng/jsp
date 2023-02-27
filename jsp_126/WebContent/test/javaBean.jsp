<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "useBean.MemberInfo" %>
<%@page import = "java.util.Date"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 1. MemberInfo 클래스 인스턴스 생성
MemberInfo info = new MemberInfo();

// 2. setter로 값설정(멤버변수로 값 전달하기 위함)
info.setId("hong123");
info.setPassword("1234");
info.setName("홍길동");
info.setAddress("서울특별시");
info.setEmail("hong@gmail.com");

Date date = new Date();
info.setRegisterDate(date);

out.print("<h5>out을 이용하여 값 출력</h5>");
// 방법1. out을 이용하여 값 출력
out.print("아이디 : " + info.getId() +"<br>");
out.print("비밀번호 : " + info.getPassword() +"<br>");
out.print("이름 : " + info.getName() +"<br>");
out.print("주소 : " + info.getAddress() +"<br>");
out.print("이메일 : " + info.getEmail() +"<br>");
out.print("등록일 : " + info.getRegisterDate() +"<br>");

// request.setAttribute("속성", "값"); => 주소값 전달
request.setAttribute("member", info);
%>
<hr>
<h5>getAttribute()로 주소값 전달받음, 표현식을 이용하여 각각의 값 출력 </h5>
<!--3. getAttribute()로 주소값 전달받음, 표현식을 이용하여 각각의 값 출력 -->
<% MemberInfo info2 = (MemberInfo) request.getAttribute("member");%>
아이디 : <%= info2.getId()%><br>
비밀번호 : <%=  info2.getPassword() %><br>
이름 : <%= info2.getName()%><br>
주소 : <%= info2.getAddress()%><br>
이메일 : <%= info2.getEmail()%><br>
등록일 : <%= info2.getRegisterDate()%><br>
</body>
</html>