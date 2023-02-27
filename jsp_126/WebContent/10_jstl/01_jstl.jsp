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
	<h2>JSTL : JSP Standard Tag Library : core 태그 = > 변수지원 태그 set</h2>
	<pre>
		JSP의 경우 HTML 태그와 같이 사용하므로, 전체적인 코드의 가독성이 떨어지므로, 이 단점을 보완하기 위해 태그 라이브러리인 JSTL을 이용
		jstl.jar, standard.jar를 WEB-INF/lib 폴더에 추가해야 한다.
	</pre>
	<hr>
	
<%-- 	
	변수지원태그 => <c:set var = "변수명" value = "값"/>태그
		var : 값을 지정할 EL 변수명을 지정한다
	 	value : 변수의 값ㅇ르 지정한다.
			 1) 표현식 : <%= value  %>
			 2) EL : ${변수} | ${key} | ${key.value}
			 3) 정적인 문자열 : "문자열"
--%>		
<c:set var = "num1" value = "8"/>	<!-- int num1 = 8; -->
<c:set var = "num2" value = "4"/>

<c:set var = "sum" value = "${num1+num2}"/>	<!-- int sum = num1+num2; -->
<!-- num1 + num2  = sum -->
${num1} + ${num2} = ${sum}
<br> sum = ${sum}
<c:set var = "sub" value = "${num1-num2}"/>
<br> ${num1} - ${num2} = ${sub}
<br> sub = ${sub}

<c:set var = "mul" value = "${num1*num2}"/>
<br> ${num1} x ${num2} = ${mul}
<br> mul = ${mul}
<c:set var = "div_2" value = "${num1/num2}"/>
<br> ${num1} % ${num2} = ${div_2}
<br> div = ${div_2}


</body>
</html>