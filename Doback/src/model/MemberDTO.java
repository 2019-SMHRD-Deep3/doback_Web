package model;

public class MemberDTO {
	
	private String id;
	private String pw;
	private String email;
	private String phone;
	
	public MemberDTO(String id, String pw, String email, String phone) {
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.phone = phone;
	}

	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
