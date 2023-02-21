<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%-- <%@ page import ="java.io.*" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 JDBC</title>
</head>
<body>

<%
	Connection conn = null;				//오라클 연결
	PreparedStatement pstmt = null;		//SQL 문장
	ResultSet rs = null;				//SQL실행결과
	/*
	   JDBC(Java Database Connectivity)
	   - 자바에서 데이터베이스와 통신할 때 사용하는 API
	   - DBMS와의 통신을 담당하는 자바클래스
	   - ojdbc6.jar
	   C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6.jar
	   => 붙여넣기 : D:\Dev126\workspace\jsp_126\WebContent\WEB-INF\lib
	   => 붙여넣기 : C:\Program Files\Java\jre1.8.0_241\lib\ext
	   
	   - thin 드라이브는 자바언어로만 구현된 JDBC 드라이버로서, JDK만 설치되어 있으면 어디서나 사용가능
	*/
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";		//설정정보 @HOST:PORT:SID
	String dbID ="scott_126";			//계정
	String dbPassword = "tiger";		//비밀번호
%>
	<h3>회원정보</h3>
		<table border = "1" cellspacing ="0" cellpadding = "5">
			<tr>
				<td>사번</td><td>이름</td><td>입사일</td><td>급여</td><td>부서</td><td>이메일</td>
			</tr>	
	
<%
	try{
		//1. jdbc드라이버 로딩
		//Class.forName() => 지정한 클래스 정보를 담고 있는 클래스 인스턴스를 구해주는 기능을 제공하는 메서드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		out.print("1. jdbc드라이버 로딩<br>");
		//2. 데이터베이스 커넷션 생성
		conn = DriverManager.getConnection(dbURL, dbID,dbPassword);
		out.print("2. 데이터베이스 커넷션 생성<br>");
		
		//3. PreparedStatement 생성
		/* 
		    p401
	         - SQL 쿼리의 틀을 미리 생성해놓고, 값을 나중에 지정
	         - 값변동을 자동으로 하기 위함
	         - 간결한  코드를 위해 사용, 보안을 위해 사용
	         - set 계열의 메서드를 사용해서 물음표를 대체할 값을 지정해 주어야 한다.
	         - 첫번째 물음표의 인덱스는 1이며, 이후 물음표의 인덱스는 나오는 순서대로 인덱스 값이 1씩 증가한다.
	         - ?를 ''로 감싸지 않는다.
      	*/
		String sql  = "SELECT * FROM emp_tbl WHERE empno IN(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,101);			//물음표 인덱스 , 값
		pstmt.setInt(2,103);
		pstmt.setInt(3,105);
		out.print("3. PreparedStatement 생성<br>");
		
		//4. 쿼리 실행 select: executeQuery()
		/* 
			p388
	         	ResultSet executeQuery()
	         	- SELECT문의 실행결과를 ResultSet 객체에 담아서 리턴한다.
	         	- 따라서 ResultSet이 제공하는 메서드를 사용해서 결과값을 읽어올 수 있다.
	         	- next() 메서드를 사용해서 SELECT 결과의 존재여부를 확인할 수 있다.
	         
	         	int executeUpdate()
	         	- Insert, Update, Delete 쿼리를 실행할 때 사용하며, 실행결과로 변경된 레코드의 건수를 리턴한다.
	         	- SQL문 실행후 테이블의 내용만 변경되는 경우 사용하며, 변경건수를 int 형으로 리턴한다.
	         	- 결과가 0:실패, 1:성공
      	*/
		rs = pstmt.executeQuery();		//ctrl + enter
		out.print("4. 쿼리 실행 select: executeQuery()<br>");
 		
		//5. 쿼리 실행 결과 출력
		/*  
			p391
         		rs.next() 메서드를 사용해서 SELECT 결과의 존재여부를 확인할 수 있다.
         		rs.getType(컬럼명);
         		while문 1번 반복시 한건의 해당행(레코드)을 컬럼별로 가져온다.
      	*/
		while(rs.next()){	//select 결과의 존재여부를 확인
			int empno = rs.getInt("empno"); 
			String ename = rs.getString("ename");
			Date date = rs.getDate("hire_date");
			int salary = rs.getInt("salary");
			int deptno = rs.getInt("deptno");
			String email = rs.getString("email");

%>
			<tr>
				<td><%=empno %></td><td><%= ename%></td><td><%= date%></td><td><%=salary %></td><td><%=deptno %></td><td><%=email %></td>
			</tr>
<% 
		}
		out.print("5. 쿼리 실행 결과 출력<br>");
%>
		</table>

<% 	
	}catch(SQLException e){
		e.printStackTrace();
	}finally {
		//6.사용한 자원 해제
		if(rs !=null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
		out.print("6.사용한 자원 해제");
	}
%>
   
</body>
</html>