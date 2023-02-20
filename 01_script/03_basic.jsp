<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1부터 10까지의 합을 스크립트릿으로 출력</title>
</head>
<body>
<h3 align ="center">1부터 10까지의 합 출력</h3><hr>
<!-- 방법1. 1부터 10까지의 합을 스크립트릿으로 출력 -->
<%
	int sum = 0;
	for(int i =1;i<=10;i++){
		sum+=i;
	}
	out.print("<h4>=== 방법1. 스크립트릿으로 출력 ===</h4>" );
	out.print("sum >> " + sum);
%>

<h4>=== 방법2. 표현식으로 출력 ===</h4>
sum >> <%= sum %>

<!-- 방법3 1부터 10까지의 합 선언부로 선언후 표현식으로 출력 -->
<h4>=== 방법3. 선언부 출력 === </h4>
<%!
	public int add(int sum2 , int i){
	for(i = 1;i<=10;i++){
		sum2 += i;
	}
	return sum2;
}
%>

sum2 >> <%= add(0,0) %>

</body>
</html>