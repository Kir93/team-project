package kr.gudi.login;

public class UserBean {
	
	int    no;
	String name;
	String email;
	String password;
	String birth; 
	String gender;
	String address1;
	String address2;
	String address3; 
	String tel;

	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getAddress3() {
		return address3;
	}
	public void setAddress3(String address3) {
		this.address3 = address3;
	}
	public String getTel() {
		return tel;
	}
	@Override
	public String toString() {
		return "UserBean [no=" + no + ", name=" + name + ", email=" + email + ", password=" + password + ", birth="
				+ birth + ", gender=" + gender + ", address1=" + address1 + ", address2=" + address2 + ", address3="
				+ address3 + ", tel=" + tel + "]";
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
}
