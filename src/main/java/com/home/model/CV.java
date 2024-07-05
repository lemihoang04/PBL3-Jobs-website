package com.home.model;

public class CV {
	private int id;
	private int id_user;
	private String user_name;
	private String company;
    private String jobTitle;
    private String description;
    private String time;
    private String filename;
    private String path;
	private String status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "CV [id=" + id + ", id_user=" + id_user + ", user_name=" + user_name + ", company=" + company
				+ ", jobTitle=" + jobTitle + ", description=" + description + ", time=" + time + ", filename="
				+ filename + ", path=" + path + ", status=" + status + "]";
	}
	public CV(int id, int id_user, String user_name, String company, String jobTitle, String description, String time,
			String filename, String path, String status) {
		super();
		this.id = id;
		this.id_user = id_user;
		this.user_name = user_name;
		this.company = company;
		this.jobTitle = jobTitle;
		this.description = description;
		this.time = time;
		this.filename = filename;
		this.path = path;
		this.status = status;
	}
	
    
}
