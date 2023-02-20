<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute 예제</title>
</head>
<body>
	<h3>Attribute 예제</h3>
	
   <!-- 
   	//   request.getParameter(key) => 화면(jsp)에서 넘기고 MVC(서비스)로  받을 때
    //  request.setAttribute(key, value); // 결과를 서비스에서 설정
    //  request.getAttribute(key); // 화면(jsp)에서 받는다.
   
   - 속성설정
   request.setAttribute("속성명", 속성값);
   request.setAttribute(String 속성명, Object 속성값);
   
   - 속성값 가져오기
   Object 속성값 = (형변환)request.getAttribute(String 속성명); // 리턴타입은 Object형
   
   - 속성 삭제
   request.removeAttribute("속성명");
    -->
 <%
 	Calendar calendar = Calendar.getInstance();
 	request.setAttribute("time", calendar);
 	
 %>
<%--  jsp: ==> 액션태그	
	 <jsp:forward page = "이동할 페이지" /> 
--%>
 	<jsp:forward page = "04_request_next.jsp" />
</body>
</html>