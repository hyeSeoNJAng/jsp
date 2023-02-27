<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL)JSPStandard Tag Library : core 태그 = > if</h3>
	<%-- 
		<c:if test="조건" var="변수명" [scope = "범위"]>
		...
		</c:if> 
	--%>
		<c:if test="true">
			true이므로 무조건 수행
		</c:if>
		<c:if test="false">
			false이므로 수행 안함
		</c:if>
		<br>
		
		
		<!-- 쿼리스트링 ) http://localhost/jsp_126/10_jstl/03_jstl.jsp?name=hong&age=20&kind=soju -->
		 <!-- ? 까지 쿼리 스트링라고 함.  -->
		<c:if test="${param.name == 'hong'}">		<!-- request.getParameter("name") -->
			name 파라미터 값은 ${param.name}입니다!!!!!!
		</c:if>
		
		<c:if test="${param.age == '20'}">		<!-- request.getParameter("age") -->
			age 파라미터 값은 ${param.age}입니다!!!!!!
		</c:if>
		
		<c:if test="${param.kind == 'soju'}">		<!-- request.getParameter("kind") -->
			kind 파라미터 값은 ${param.kind}입니다!!!!!!
		</c:if>
		
		<!-- Q) 나이가 age:19이상이면  kind: dongdongju , age = 30,  -->
		
		<c:if test = "${param.age>'19'}">
			${param.name}은 ${param.age}세 이므로 ${param.kind}를 살 수 있습니다.
		</c:if>
		<c:if test = "${param.age<'19'}">
			${param.name}은 ${param.age}세 이므로 ${param.kind}를 살 수 없습니다.
		</c:if>
		
</body>
</html>