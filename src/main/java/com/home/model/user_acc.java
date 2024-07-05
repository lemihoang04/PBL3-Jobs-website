package com.home.model;

public class user_acc {
	private int id;
	@Override
	public String toString() {
		return "user_acc [id=" + id + ", name=" + name + ", email=" + email + ", pass=" + pass + ", mobile=" + mobile
				+ ", birthday=" + birthday + ", gender=" + gender + "]";
	}
	private String name;
	private String email;
	private String pass;
	private String mobile;
	public user_acc(int id, String name, String email, String pass, String mobile, String birthday, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.mobile = mobile;
		this.birthday = birthday;
		this.gender = gender;
	}
	private String birthday;
	private String gender;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

}
