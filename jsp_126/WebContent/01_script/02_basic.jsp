<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>스크립트 요소</h3>
	<b>1. 스크립트릿 : 자바코드를 실행</b><br>
		=> html 태그 안에 java 코드를 삽입<br><br>
		
	<!-- html 주석 -->
	<%-- jsp 주석처리  --%>	
	<%
		String name = "홍길동";
		int age = 10;
		String id = "hong";
		String password = "h1234";
		
		//out >> 내장객체로서 서블릿으로 변환시 컴파일 시점에 자동으로 객체 생성함
		out.print(" == out.print()실행결과 ==" + "<br>");
		out.print("이름 >> " + name + "<br>" );
		out.print("나이>> " + age + "<br>");
		out.print("id >> " + id  + "<br>" );
		out.print("password >> " + password  + "<br>");
		
	%>
	<hr>
	<br><br>
	
	<b>2. 표현식 (Expression)  </b>
		=> 값을 출력한다 값은 변수나 메서드가 올 수 있다<br>
		-> 문장의 끝에 ';'을 붙이면 에러 발생<br>
		-> 스크립트 안에서는 out.print(); 사용 가능<br><br>
	=== 실행결과 (Expression)  ===<br>
	
	이름 : <%= name %><br>
	나이 : <%= age %><br>
	아이디 : <%= id %><br>
	비밀번호 : <%= password %><br>
	
	<hr>
	<br><br>
	<b>3. 선언부(Declaration)</b><br>
		=> 변수, 자바메서드를 선언한다<br>
	<%-- 		
		<%!
			public 메서드명(파라미터){
				자바코드1; 
				자바코드2;
			}

		%> 
	--%>
	
	<%!
		public int divide(int a, int b){
			return a/b;
		}
	%>
	<br>
	=== 실행결과 ===<br>
	8/4 = <%= divide(8,4) %>
	
	
</body>
</html>