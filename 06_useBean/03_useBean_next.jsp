<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!-- 1 useBean액션태그를 이용해서 객체 생성 -->
<jsp:useBean id="join" class="useBean.MemberInfo"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- 2. 이전 화면에서 넘어온 값들을 변수에 담는다 -->
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pwd = request.getParameter("password");
String name = request.getParameter("name");
String email = request.getParameter("email");
String address = request.getParameter("address");
%>
<!-- 3.setProperty 
		~> 날짜는 입력받지 않았으므로 현재 날짜 설정
-> setter -->
<%-- <jsp:setProperty name ="join" property="id" value = "<%=id %>"/>
<jsp:setProperty name ="join" property="password" value = "<%=pwd %>"/>
<jsp:setProperty name ="join" property="name" value = "<%=name %>"/>
<jsp:setProperty name ="join" property="email" value = "<%=email %>"/>
<jsp:setProperty name ="join" property="address" value ="<%=address %>"/>
 --%>
 
 <!-- 멤버변수명, input명, 컬럼명, setter, getter 규약이 일치해야 "*"을 사용할 수 있다. -->
<jsp:setProperty name ="join" property="*"/>
<jsp:setProperty name ="join" property="registerDate" value ="<%=new Date() %>"/>
 
 
<!-- 3.getProperty -> getter -->

<table border ="1" cellspacing="0" cellpadding = "0">
			<tr>
				<td align ="right" >아이디</td>
				<td><jsp:getProperty name ="join" property="id"/></td>	
			</tr>
			<tr>
				<td align ="right" >비밀번호</td>
				<td><jsp:getProperty name ="join" property="password"/></td>	
			</tr>
			<tr>
				<td align ="right" >이름</td>
				<td><jsp:getProperty name ="join" property="name"/></td>	
			</tr>
			<tr>
				<td align ="right" >주소</td>
				<td><jsp:getProperty name ="join" property="email"/></td>	
			</tr>
			<tr>
				<td align ="right" >이메일</td>
				<td><jsp:getProperty name ="join" property="address"/></td>	
			</tr>
		</table>
</body>
</html>