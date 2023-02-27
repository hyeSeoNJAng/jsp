<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import ="java.util.Date" %>
<!-- 1.useBean 액션태그를 이용해 객체 생성 -->
<%-- <jsp:useBean id = "자바빈 이름(참조변수)" class = "패키지명.class"/> --%>
<jsp:useBean id = "info" class = "useBean.MemberInfo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 액션태그를 이용해서 객체 생성</title>
</head>
<body>
<!-- 2.setProperty :  setter  -->
<%--<jsp:setProperty name ="id명(=참조변수)" property="멤버변수명" value = "값 또는 표현식"/> --%>
<jsp:setProperty name ="info" property="id" value = "jang0716"/>
<jsp:setProperty name ="info" property="password" value = "123456"/>
<jsp:setProperty name ="info" property="name" value = "장혜선"/>
<jsp:setProperty name ="info" property="address" value = "주소"/>
<jsp:setProperty name ="info" property="email" value = "jang0716@gmail.com"/>
<% Date date = new Date();%>
<jsp:setProperty name ="info" property="registerDate" value = "<%=date %>"/>


<!-- 3.getProperty :  getter -->
<%--<jsp:getProperty name ="id명(=참조변수)" property="멤버변수명"/> --%>
<p><strong>아이디 : </strong><jsp:getProperty name ="info" property="id"/></p>
<p><strong>비밀번호 : </strong><jsp:getProperty name ="info" property="password"/></p>
<p><strong>이름 : </strong><jsp:getProperty name ="info" property="name"/></p>
<p><strong>주소 : </strong><jsp:getProperty name ="info" property="address"/></p>
<p><strong>이메일 : </strong><jsp:getProperty name ="info" property="email"/></p>
<p><strong>등록일 : </strong><jsp:getProperty name ="info" property="registerDate"/></p>


</body>
</html>