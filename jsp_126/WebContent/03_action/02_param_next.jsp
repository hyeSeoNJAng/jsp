<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화</title>
</head>
<body>
<%
	String kind = request.getParameter("kind");
	String star = request.getParameter("star");
	if (kind == null && star == null){
		return;
	}
%>
	<table border ="1">
		<tr>
			<td>장르</td>
			<td><% if(kind.equals("A")){%>
				액션
				<% }else if(kind.equals("R")){%>
				로맨스
				<% } else  if(kind.equals("C")){%>
				코미디
				<% } else if(kind.equals("H")){%>
				호러
				<% } else if(kind.equals("M")){%>
				뮤지컬
				<% } else if(kind.equals("SF")){%>
				공상과학
				<% }%>
			</td>
		</tr>
		<tr>
			<td>평점</td>
			<td>
				<% if(star.equals("5")){%>
				매우좋음
				<% } if(star.equals("4")){%>
				좋음
				<% } if(star.equals("3")){%>
				보통
				<% } if(star.equals("2")){%>
				별로
				<% } if(star.equals("1")){%>
				매우별로
				<% }%>
			</td>
		</tr>
	</table>
</body>
</html>