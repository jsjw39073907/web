package kr.ac.shu.DTO;

public class AddressDTO {
	private String nickname;
	private String email;
	private String password;
	private String number;
	private String addr;
	
	public AddressDTO() {
		super();
	}
	public AddressDTO(String nickname, String email, String password, String number, String addr) {
		super();
		this.nickname = nickname;
		this.email = email;
		this.password = password;
		this.number = nickname;
		this.addr = addr;
	}
	
	public String getnickname() {
		return nickname;
	}
	public void setnickname(String nickname) {
		this.nickname = nickname;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getnumber() {
		return number;
	}

	public void setnumber(String number) {
		this.number = number;
	}

	public String getpassword() {
		return password;
	}
	public void setpassword(String password) {
		this.password = password;
	}
	
	public String getaddr() {
		return addr;
	}
	public void setaddr(String addr) {
		this.addr = addr;
	}
	@Override
	public String toString() {
		return "AddressDTO [nickname=" + nickname + ", email=" + email + ", password=" + password + ", number=" + number
				+ ", addr=" + addr + "]";
	}
	
	
	
	
}

