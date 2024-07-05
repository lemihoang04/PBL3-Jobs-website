package com.home.model;

public class JobData {
	private int id;
	private String company;
    private String jobTitle;
    private String job;
    private String sexual;
    private String salary;
    private String level;
    private String startTime;
    private String endTime;
    private String location;
    private String city;
    private String requirement;
    private String qualification;
    private String age;
    private String experience;
    private String workWay;
    private int numberRecruits;
    private String description;
    private String benefit;
    private String picLink;
    private String status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getSexual() {
		return sexual;
	}
	public void setSexual(String sexual) {
		this.sexual = sexual;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getWorkWay() {
		return workWay;
	}
	public void setWorkWay(String workWay) {
		this.workWay = workWay;
	}
	public int getNumberRecruits() {
		return numberRecruits;
	}
	public void setNumberRecruits(int numberRecruits) {
		this.numberRecruits = numberRecruits;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getBenefit() {
		return benefit;
	}
	public void setBenefit(String benefit) {
		this.benefit = benefit;
	}
	public String getPicLink() {
		return picLink;
	}
	public void setPicLink(String picLink) {
		this.picLink = picLink;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public JobData(int id, String company, String jobTitle, String job, String sexual, String salary, String level,
			String startTime, String endTime, String location, String city, String requirement, String qualification,
			String age, String experience, String workWay, int numberRecruits, String description, String benefit,
			String picLink, String status) {
		super();
		this.id = id;
		this.company = company;
		this.jobTitle = jobTitle;
		this.job = job;
		this.sexual = sexual;
		this.salary = salary;
		this.level = level;
		this.startTime = startTime;
		this.endTime = endTime;
		this.location = location;
		this.city = city;
		this.requirement = requirement;
		this.qualification = qualification;
		this.age = age;
		this.experience = experience;
		this.workWay = workWay;
		this.numberRecruits = numberRecruits;
		this.description = description;
		this.benefit = benefit;
		this.picLink = picLink;
		this.status = status;
	}
	@Override
	public String toString() {
		return "JobData [id=" + id + ", company=" + company + ", jobTitle=" + jobTitle + ", job=" + job + ", sexual="
				+ sexual + ", salary=" + salary + ", level=" + level + ", startTime=" + startTime + ", endTime="
				+ endTime + ", location=" + location + ", city=" + city + ", requirement=" + requirement
				+ ", qualification=" + qualification + ", age=" + age + ", experience=" + experience + ", workWay="
				+ workWay + ", numberRecruits=" + numberRecruits + ", description=" + description + ", benefit="
				+ benefit + ", picLink=" + picLink + ", status=" + status + "]";
	}
	

    
}
