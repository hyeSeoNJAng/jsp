<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;				//오라클 연결
	PreparedStatement pstmt = null;		//SQL 문장
	ResultSet rs = null;	
	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";		//설정정보 @HOST:PORT:SID
	String dbID ="scott_126";			//계정
	String dbPassword = "tiger";		//비밀번호
	
	//한글 안깨지게 
	request.setCharacterEncoding("UTF-8");

	// 이전 화면으로부터 넘어온 값들을 변수에 담는다
	String code = request.getParameter("p_code");
	String name = request.getParameter("p_name");
	int price = Integer.parseInt(request.getParameter("p_price"));

%>
<h3>상품목록</h3>

<%

	try{	
		//1. jdbc드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		out.print("1. jdbc드라이버 로딩<br>");
		//2. 데이터베이스 커넷션 생성
		conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		out.print("2. 데이터베이스 커넷션 생성<br>");
		//3. PreparedStatement 생성 //3-1. insert문 작성
		String sql  = "UPDATE product " + " SET p_name=?,p_price=?,p_status='입고' " +" WHERE p_code=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,name);			//물음표 인덱스 , 값
		pstmt.setInt(2,price);
		pstmt.setString(3,code);
		out.print("3. PreparedStatement 생성<br>");
		
		//4. 쿼리 실행 CRUD => int executeUpdate()  -> 성공 1 실패 0 반환
		int update ;
		update = pstmt.executeUpdate();
		out.print("4. 쿼리 실행 select: executeQuery()<br>");
		
		//5. 쿼리 실행 결과  출력 => insert 성공 or 실패
		if(update==1){
			out.print("5. INSERT 성공 :" + update + "<br>");
		}
		else {
			out.print("5. INSERT 실패");
		}
		
		pstmt.close();

		//3-2. select문 작성
		String sql2 = "SELECT * FROM product ORDER BY p_code ASC";
		pstmt = conn.prepareStatement(sql2);
		
		
		//4-2. 쿼리 실행 select: executeQuery()
		rs = pstmt.executeQuery();
		
		//5-2 쿼리 실행결과 출력 while문
%>
	<table border = "1" cellspacing ="0" cellpadding = "5">
		<tr>
			<td>제품코드</td><td>제품명</td><td>가격</td><td>상태</td><td>업데이트</td>
		</tr>	
<% 
		while(rs.next()){
			String p_code = rs.getString("p_code");
			String p_name = rs.getString("p_name");
			int p_price = rs.getInt("p_price");
			String p_status =  rs.getString("p_status");
			Date p_date =  rs.getDate("p_date");

%>	
		<tr>
				<td><%=p_code %></td>
				<td><%=p_name %></td>
				<td><%=p_price %></td>
				<td><%=p_status %></td>
				<td><%=p_date %></td>
		</tr>	
<%
		}
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
	</table>
</body>
</html>