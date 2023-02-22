package pj.mvc.jsp.dao;

import pj.mvc.jsp.dto.CustomerDTO;

public class CustomerDAOImpl implements CustomerDAO{

	@Override	// id 중복확인 처리
	public void idCheck(String strId) {
		
	}

	@Override	// 회원가입 처리
	public int insertCustomer(CustomerDTO dto) {
		return 0;
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
