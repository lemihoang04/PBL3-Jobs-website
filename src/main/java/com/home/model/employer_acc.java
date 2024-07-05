package com.home.model;

public class employer_acc {
	private int id;
	private String name;
	private String email;
	private String pass;
	private String mobile;
	private String company;
	private String city;
	private String location;
	private String job;
	private String pic_link;
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
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getPic_link() {
		return pic_link;
	}
	public void setPic_link(String pic_link) {
		this.pic_link = pic_link;
	}
	@Override
	public String toString() {
		return "employer_acc [id=" + id + ", name=" + name + ", email=" + email + ", pass=" + pass + ", mobile="
				+ mobile + ", company=" + company + ", city=" + city + ", location=" + location + ", job=" + job
				+ ", pic_link=" + pic_link + "]";
	}
	public employer_acc(int id, String name, String email, String pass, String mobile, String company, String city,
			String location, String job, String pic_link) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.mobile = mobile;
		this.company = company;
		this.city = city;
		this.location = location;
		this.job = job;
		this.pic_link = pic_link;
	}
	
	
}
