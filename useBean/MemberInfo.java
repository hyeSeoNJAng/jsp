package useBean;

import java.util.Date;

//DTO(Data Transfer Object) : 데이터 전송객체 =VO(Value Object)
//회원가입 => 화면 input 입력값 -> [setter -> 멤버변수 -> getter] -> DB에 insert -> 화면에 가입 성공/실패 출력
//로그인 => 화면 input 입력값 -> [setter -> 멤버변수 -> getter] -> DB select -> [setter -> 멤버변수 -> getter] -> 화면에 select결과 출력

//자바빈 규약에 따르는 클래스를 자바빈이라고 한다.
public class MemberInfo {
	// 멤버변수: setter로붙 넘어온 data를 저장하기 위한 목적
	// 멤버변수(= 속성 , property) = input태그명 = dbms 컬럼명
	private String id; //아이디
	private String password; 	//비밀번호
	private String name; 		//이름
	private String address;		//주소
	private String email; 		//이메일
	private Date registerDate;	//등록일
	
	//디폴트 생성자
	public MemberInfo() {};
	
	//매개변수 생성사
	public MemberInfo(String id, String password, String name , String address, String email, Date registerDate) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.address = address;
		this.email = email;
		this.registerDate = registerDate;
	}
	//setter: 값을 저장할 때 사용하는 메서드
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate= registerDate;
	}
	//getter: 값을 읽어올 때 사용하는 메서드
	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}
	public Date getRegisterDate() {
		return registerDate;
	}

	//toString
	@Override
	public String toString() {
		return "MemberInfo [id=" + id + ", password=" + password + ", name=" + name + ", address=" + address
				+ ", email=" + email + ", registerDate=" + registerDate + "]";
	}
	
}
