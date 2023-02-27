<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좋아하는 과일!!!!!!!!!</title>
</head>
<body>
	<h3>좋아하는 과일</h3>
	<%
		List<String> fruit = new ArrayList<String>();
		fruit.add("복숭아");
		fruit.add("딸기");
		fruit.add("바나나");
		fruit.add("망고");
		
		request.setAttribute("fruits", fruit);		//key, value
		
		String viewPage = "4_next.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request,response);		//페이지 이동
		
	%>
	
	
</body>
</html>