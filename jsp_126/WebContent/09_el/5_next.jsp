<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import ="useBean.MemberInfo, java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>방법 1 Expression 이용</h3>
	<%	
		MemberInfo member = (MemberInfo)request.getAttribute("memberInfo");
		String id = member.getId();
		String name = member.getName();
		String password = member.getPassword();
		String email = member.getEmail();
		String address = member.getAddress();
		Date date = member.getRegisterDate();
	
	%>
	<table>
		<tr>
			<th>아이디</th>
			<td><%=id %></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=name%></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><%=password%></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=email %></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=address %></td>
		</tr>
		<tr>
			<th>등록일</th>
			<td><%=date %></td>
		</tr>
	</table>
	
	
	<h3>방법 2 EL멤버변수 이용</h3>
	<table>
		<tr>
			<th>아이디</th>
			<td>${memberInfo.id}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${memberInfo.name}</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>${memberInfo.password}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${memberInfo.email}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${memberInfo.address}</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${memberInfo.registerDate}</td>
		</tr>
	</table>

	<h3>방법 3 EL멤버메서드 이용</h3>
		<table>
		<tr>
			<th>아이디</th>
			<td>${memberInfo.getId()}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${memberInfo.getName()}</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>${memberInfo.getPassword()}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${memberInfo.getEmail()}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${memberInfo.getAddress()}</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${memberInfo.getRegisterDate()}</td>
		</tr>
	</table>
</body>
</html>