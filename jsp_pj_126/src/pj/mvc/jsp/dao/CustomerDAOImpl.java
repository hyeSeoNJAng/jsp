package pj.mvc.jsp.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import pj.mvc.jsp.dto.CustomerDTO;

public class CustomerDAOImpl implements CustomerDAO{
	// 커넥션풀 객체를 보관
	DataSource dataSource;
	
	//디폴트 생성자 --> private:  new 생성 안됨 ~~> 다른곳에서 호출 시 싱글톤 방식으로 구현 
	private CustomerDAOImpl() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/jsp_pj_126");
		}catch(NamingException e) {
			e.printStackTrace();
		}
	}
	
	// 싱글톤 적용
	private static CustomerDAOImpl instance = new CustomerDAOImpl();
	public static CustomerDAOImpl getInstance() {
		if(instance == null) {
			instance = new CustomerDAOImpl();
		}
		return instance;
	}

	@Override	// id 중복확인 처리
	public int idCheck(String strId) {
		System.out.println("====>> CustomerDAOImpl idCheck dao : id 중복확인 처리");
		int selectCnt = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = dataSource.getConnection();
			String sql = "SELECT * FROM mvc_customer_tbl WHERE id =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,strId);
			
			rs= pstmt.executeQuery();
			if(rs.next()) {
				selectCnt = 1;
			}
			System.out.println("selectCnt >> " + selectCnt);

			
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				if(pstmt !=null) pstmt.close();
				if(conn != null) conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return selectCnt;
	}

	@Override	// 회원가입 처리
	public int insertCustomer(CustomerDTO dto) {
		System.out.println("====>> CustomerDAOImpl insertCustomer dao : 회원가입 처리");
		Connection conn = null;
		int insertCnt = 0;
		PreparedStatement pstmt = null;
		
		try {
			conn = dataSource.getConnection();
			String sql ="INSERT INTO mvc_customer_tbl(id, password, name, birthday, address, hp, email, regDate)"
						+ " VALUES(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2,dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setDate(4,dto.getBirthday());
			pstmt.setString(5, dto.getAddress());
			pstmt.setString(6, dto.getHp());
			pstmt.setString(7, dto.getEmail());
			pstmt.setTimestamp(8, dto.getRegDate());
			
			// 쿼리 실행 => executeUpdate()   ==> int형 -> 성공 1 실패 0 반환
			insertCnt = pstmt.executeUpdate();	
			System.out.println("insertCnt >> " + insertCnt);

			
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				if(pstmt !=null) pstmt.close();
				if(conn != null) conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return insertCnt;
	}

	@Override	// 로그인 처리	// 회원정보 인증( 수정, 탈퇴 )
	public void idPasswordChk(String strId, String strPassword) {
		
	}

	@Override	// 회원정보 인증 및 탈퇴 처리
	public int deleteCustomer(String strId) {
		return 0;
	}

	@Override	// 회원정보 인증 및 상세 페이지 (상세페이지 : 수정을 위한)'
	public CustomerDTO getCustomerDetail(String strId) {
		return null;
	}

	@Override	// 회원정보 수정 처리
	public int updateCustomer(CustomerDTO dto) {
		return 0;
	}

}
