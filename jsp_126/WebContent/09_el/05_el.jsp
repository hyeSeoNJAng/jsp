<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="useBean.MemberInfo, java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>!!!!!!!!!!!!!!!!중요!!!!!!!!!!!!!!!</title>
</head>
<body>
	<%
		MemberInfo member = new MemberInfo();
		member.setId("안");
		member.setName("녕");
		member.setPassword("하");
		member.setEmail("세");
		member.setAddress("요?");
		
		member.setRegisterDate(new Date());

		request.setAttribute("memberInfo",member);	//참조변수
		String viewPage = "5_next.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request,response);		//페이지 이동
	%>
</body>
</html>