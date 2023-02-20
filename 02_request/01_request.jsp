<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 정보 및 서버 정보 읽기 </title>
</head>
<body>
<h3>내장객체 request 객체</h3>
	request란 내장객체로써 브라우저를 통해 서버에 정보를 요청하는 것을 말하며,
	<br>
	이러한 정보를 request객체가 관리한다.
	<br>
	(p114 p99 참조)
	<br>
<%
	out.print("서버 >> " + request.getServerName() + "<br>" );
	out.print("서버포트 >> " + request.getServerPort() + "<br>" );
	out.print("요청방식 >> " + request.getMethod() + "<br>" );
	out.print("프로토콜 >> " + request.getProtocol() + "<br>" );
/* 
	서버 >> localhost
	서버포트 >> 80
	요청방식 >> GET
	프로토콜 >> HTTP/1.1
*/
	//URL 전체경로
	//http://localhost/jsp_126/01_script/07_basic.jsp
	out.print("URL >> " + request.getRequestURL() + "<br>" );
	
	// 컨텍스트패스: 프로젝트명
	out.print("컨텍스트 패스>> " + request.getContextPath() + "<br>" );
	
	//컨텍스트패스부터 ~ 
	//URI: /컨텍스트명/WebConten의하위폴더/1_request.jps Webcontent는 루트(/)이다
	out.print("URI >> " + request.getRequestURI() + "<br>" );
%>
</body>
</html>