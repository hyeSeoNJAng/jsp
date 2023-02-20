<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼 작성</title>
<!-- 세션 p232 
   쿠키는 클라이언트(=웹브라우저)측의 데이터보관소에 저장이 되고,
   세션은 서버측의 데이터 보관소(F12- Application - JSESSIONID의 value)에 저장이 된다.
  Network탭 F5 소스명 클릭  > Request Header
   쿠키와 마찬가지로 세션도 생성을 해야만 정보를 저장할 수 있다.
   
   일단 세션을 생성하면 session 기본 객체를 통해서 세션을 사용할 수 있다.
   한번 세션을 생성하면 이후로는 이미 생성한 세션을 사용한다.
   서버는 세션을 사용해서 클라이언트 상태를 유지할 수 있기 때문에,
   로그인한 사용자 정보를 유지하기 위한 목적으로 사용한다.
   
   세션에 값저장 : session.setAttribute("속성", "값");
   세션값 읽기 : session.getAttribute("속성");  // 리턴타입이 Object
   세션종료 : session.invalidate(); // 세션에 저장된 값 전부 삭제
           session.removeAttribute("속성");  // 해당 속성으로 저장된 세션값을 삭제
-->
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
	<form action="agreement.jsp" method="post">
		<fieldset>
			<legend>회원가입</legend>
			<table>
				<tr>	
					<td align ="right">아이디</td>
					<td><input type = "text" name = "userId" size = "20" autofocus required placeholder ="아이디 입력"></td>
				</tr>
				<tr>
					<td align ="right">패스워드</td>
					<td><input type="password" name="userPwd" size = "20" required placeholder ="비밀번호 입력"></td>
				</tr>
				<tr>	
					<td align ="right">이름</td>
					<td><input type = "text" name = "userName" size = "20" required placeholder ="이름 입력"></td>
				</tr>
				<tr>
					<div align="center">
						<br><br>
						<td colspan="2" align="center"> 
							<input type ="submit" value = "전송"><input type = "reset" value ="취소">
						</td>
					</div>
				</tr>
			</table>
				
		</fieldset>
	
	</form>
</body>
</html>