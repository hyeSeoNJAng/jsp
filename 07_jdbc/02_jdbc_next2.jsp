<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보 입력 후 조회</title>
</head>
<body>
<%
   Connection conn = null; // 오라클 연결
   PreparedStatement pstmt = null; // SQL 문장
   ResultSet rs = null;  // SQL 실행 결과
   
   String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";  // @HOST:PORT:SID
   String dbID = "scott_126";   // 계정
   String dbPassword = "tiger"; // 비밀번호
%>

<h3>상품목록</h3>

<%
   // 한글 안깨지게 처리
   request.setCharacterEncoding("UTF-8");

   // 이전 화면으로부터 넘어온 값들을 변수에 담는다
   String s_code = request.getParameter("p_code");
   String s_name = request.getParameter("p_name");
   int s_price = Integer.valueOf(request.getParameter("p_price"));

%>

<%
try{
   // 1. jdbc 드라이버 로딩
   Class.forName("oracle.jdbc.driver.OracleDriver");
   
   // 2. 데이터베이스 컨넥션 생성
   conn = DriverManager.getConnection(dbURL, dbID,dbPassword);
   
   // 3. PreparedStatement 생성
   // 3-1. insert문 작성
   String sql = "INSERT INTO product(p_code, p_name, p_price, p_status, p_date) "
          + "VALUES(?,?,?,?,sysdate)";
   
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1, s_code);
   pstmt.setString(2,s_name);
   pstmt.setInt(3, s_price);
   pstmt.setString(4, "품절");
   
   
   // 4. 쿼리실행 - Insert, Update, Delete => int executeUpdate() => 성공:1, 실패 :0
   int insertCnt = pstmt.executeUpdate();
   
   // 5. 쿼리 실행결과 출력
   // 출력 => insert 성공 / insert 실패
   if(insertCnt == 1){
      out.print("insert 성공" + insertCnt + "<br>");
   }
   else{
      out.print("insert 실패" + insertCnt + "<br>");
   }
   
   pstmt.close();
   
   // 3-2. select문 작성
   String sql2 = "SELECT * FROM product ORDER BY p_code";
   pstmt = conn.prepareStatement(sql2);
   
   // 4-2. 쿼리실행 - select : executeQuery()
   rs = pstmt.executeQuery();
   
   // 5-2. 쿼리 실행결과 출력
   
%>   
<table border="1" cellspacing="0" cellpadding="5">   
   <tr>
   <td>제품코드</td>
   <td>제품명</td>
   <td>제품가격</td>
   <td>상태</td>
   <td>등록일</td>
   </tr>

<% 
while(rs.next()){  // SELECT 결과의 존재여부를 확인
   String p_code = rs.getString("p_code");
   String p_name = rs.getString("p_name");
   int p_price = rs.getInt("p_price");
   String p_status = rs.getString("p_status");
   Date p_date = rs.getDate("p_date");
%>   
      <tr>
         <td><%= p_code %></td>
         <td><%= p_name %></td>
         <td><%= p_price %></td>
         <td><%= p_status %></td>
         <td><%= p_date %></td>
      </tr>
<% }
}catch(SQLException e){
   e.printStackTrace();
}finally{
   // 6. 사용한 자원 해제
   if(rs != null) rs.close();
   if(pstmt != null) pstmt.close();
   if(conn != null) conn.close();
}
%>
</table>
</body>
</html>