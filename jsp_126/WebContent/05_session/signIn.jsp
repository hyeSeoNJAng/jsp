<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리페이지</title>
</head>
<body>
<%
	String strAgree = request.getParameter("agree");
	out.print("strAgree: " + strAgree);			//동의 YES 동의안함 NO
	
	String result = "";
	
	//동의한 경우
	if(strAgree.equals("YES")){
		//세션에서 값들을 받아온다
		//세션값 읽기: (형변환)session.getAttribute("속성명");	//return타입 object
		//다운캐스팅, 명시적 형변환
		String s_id = (String)session.getAttribute("id");
		String s_pwd = (String)session.getAttribute("pwd");
		String s_name = (String)session.getAttribute("name");
		
		//out으로 출력
		out.print(" === 회원가입정보 ===" +"<br>");
		out.print("s_id >> " + s_id +"<br>");
		out.print("s_pwd >> " + s_pwd +"<br>");
		out.print("s_name >> " + s_name +"<br>");
		/* 기본경로 :D:\Dev117\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
	       나머지 경로 :  \wtpwebapps\jsp_117\WEB-INF\저장한이름.txt  */
/* 	       1) 톰캣환경 설정(톰캣 더블클릭) : Server Locations > 2번째 옵션 선택
	        Server Options > 2,3번째 옵션이 선택되어 있어야 위 경로로 설정됨

	      server path ==>  C:\apache-tomcat-8.5.73
	      deploy path ==> wtpwebapps
*/
	 
	      /* 기본경로 :D:\Dev117\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
	       나머지 경로 :  \wtpwebapps\jsp_117\WEB-INF\저장한이름.txt  */
		//톰캣기본경로 apache-tomcat-8.5.85-windows-x64\apache-tomcat-8.5.85\webapps
		// 나머지 세션 저장 경로 ROOT\WEB-INF\저장한 이름.txt
		PrintWriter writer= null;
		
		//세션에 저장된 회원 정보를 서버에 저장
		try{
			String filepath = application.getRealPath("/WEB-INF/" + s_name + ".txt");	
			writer = new PrintWriter(filepath);
			writer.println("아이디 >> " + s_id);
			writer.println("비밀번호 >> " + s_pwd);
			writer.println("이름 >> " + s_name);
			
			result = "SUCCESS";
		}catch(IOException e){
			result = "FAIL";
		}finally{
			try{
				writer.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	//동의안한 경우
	else {
		result = "FAIL";
	}
	out.print("result") ;
	
	//세션 종료
	session.invalidate();
	
	//result값을 가지고 result.jsp로 이동(response.sendRedirect("이동할 페이지"));
	response.sendRedirect("result.jsp?result=" + result);
%>
</body>
</html>