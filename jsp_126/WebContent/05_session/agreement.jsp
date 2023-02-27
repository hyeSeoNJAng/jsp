<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의 화면</title>
<style>
	fieldset{
		max-width:400px;
		margin:15px 10px;
	}
	legend{
		font-size :18px;
		font-weight :bold;
		color:navy;
	}

</style>
</head>
<body>
<% 
		//한글 안깨지게 처리
		//입력받은 값을 받아오기
		String strId = request.getParameter("userId");
		String strPwd = request.getParameter("userPwd");
		String strName = request.getParameter("userName"); 
		
		//out으로 출력하기
		out.print("=== 회원가입 정보 ===" + "<br>");

		//세션에 값 저장 ==> session.setAttribute("속성명","값");~~>로그인 상태의 정보를 저장하기 위함
		session.setAttribute("id",strId);
		session.setAttribute("pwd",strPwd);
		session.setAttribute("name",strName);
%>

<form action ="signIn.jsp" method ="post">
	<fieldset>
		<legend>회원약관</legend>
		==========================================================<br>
		1.회원정보는 웹사이트의 운영정보를 위해서만 사용된다.<br>
		2.웹사이트의 정상운영을 방해하는 회원은 회원탈퇴된다.<br>
		
		==========================================================<br>
		위 약관에 동의하시겠읍니까?
		<input type = "radio" name ="agree" value = "YES" checked>동의함
		<input type = "radio" name ="agree" value = "NO" >동의안함<br><br>
		<input type = "submit" value = "전송">
	</fieldset>

</form>
</body>
</html>