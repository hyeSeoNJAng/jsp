<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> p76 내장객체 - request객체 - parameter메서드  ***</title>
</head>
<body>
	<h3>내장객체 - request 객체 - parameter메서드</h3>
<%
	//한글 안깨지게 처리
	request.setCharacterEncoding("UTF-8");
	//String value = request.getParameter("input태그명");
	 String id = request.getParameter("userId");
	 String pwd = request.getParameter("userPwd");
	 String name = request.getParameter("userName");
	 String email = request.getParameter("userEmail");
	 String[] major = request.getParameterValues("userMajor");
	 String[] job = request.getParameterValues("userJob");
	 String[] hobby = request.getParameterValues("userHobby");
	
	//1. out으로 출력
	out.print("<h4>== 방법1. out으로 출력 ==<h4>");
	out.print("id >> " + id + "<br>");
	out.print("name >> " + name +"<br>");
	out.print("password >> " + pwd +"<br>");
	out.print("email >> " + email +"<br>");
	 if(major != null){
		 out.print("전공 >> ");
		 for(int i =0;i<major.length;i++){
			 out.print(major[i] + "<br>");
		 }
	 };
	 if(job != null){
		 out.print("직업 >> ");
		 for(int i =0;i<job.length;i++){
			 out.print(job[i] + "<br>");
		 }
	 };
	 if(hobby != null){
		 out.print("취미 >> ");
		 for(int i =0;i<hobby.length;i++){
			 out.print(hobby[i] +"," );
		 }
	 };
%>

	<!-- 2. 표현식으로 출력 -->
	<h4>== 방법2. 표현식으로 출력 ==</h4>
	<table>
		<tr>
			<th>id</th>
			<td><%= id %></td>
		</tr>
		<tr>
			<th>password</th>
			<td><%= pwd %></td>
		</tr>
		<tr>
			<th>name</th>
			<td><%= name %></td>
		</tr>
		<tr>
			<th>email</th>
			<td><%= email %></td>
		</tr>
		<tr>
			<th>전공</th>
			<td><% 
					if(major != null){
				 		for(int i =0;i<major.length;i++){
				%> 
				<%= major[i]%>
				<%} }; %>
			</td>
		</tr>
		<tr>
			<th>직업</th>
			<td><% 
					if(job != null){
						 for(int i =0;i<job.length;i++){
				%>
				<%= job[i]%>
				<%} }; %>
			</td>
		</tr>
		<tr>
			<th>취미</th>
			<td><% 
					 if(job != null){
						 for(int i =0;i<hobby.length;i++){
			 	%>
			 	<%= hobby[i]%>
			 	<%} }; %> 
			 </td>
		</tr>
	</table>

</body>
</html>