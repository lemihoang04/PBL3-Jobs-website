package com.home.dao;

import java.sql.*;
import java.util.*;
import context.DBConnect;
import com.home.model.*;


public class home_DAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<JobData> getAllJobData(){
		List<JobData> list = new ArrayList<>();
		String query = "select * from job_data";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
			
				 	int id = rs.getInt("Id");
			        String company = rs.getString("Company");
			        String jobTitle = rs.getString("JobTitle");
			        String job = rs.getString("JobTitle");
			        String sexual = rs.getString("Sexual");
			        String salary = rs.getString("Salary");
			        String level = rs.getString("Level");
			        String startTime = rs.getString("StartTime");
			        String endTime = rs.getString("EndTime");
			        String location = rs.getString("Location");
			        String city = rs.getString("City");
			        String requirement = rs.getString("Requirement");
			        String qualification = rs.getString("Qualification");
			        String age = rs.getString("Age");
			        String experience = rs.getString("Experience");
			        String workWay = rs.getString("Work_way");
			        int numberRecruits = rs.getInt("number_recruits");
			        String description = rs.getString("Description");
			        String benefit = rs.getString("Benefit");
			        String picLink = rs.getString("pic_link");
			        String status = rs.getString("status");
			        // Tạo một đối tượng JobData mới và thêm vào danh sách
			        if ("Approved".equals(status)) {
			        list.add(new JobData(id, company, jobTitle, job, sexual, salary, level, startTime, endTime, location, city,
			                requirement, qualification, age, experience, workWay, numberRecruits, description, benefit, picLink, status));
			        }
			        }
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		    // Đóng các tài nguyên
		    try {
		        if (rs != null) rs.close();
		        if (ps != null) ps.close();
		        if (conn != null) conn.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
		return list;
	}
	public List<JobData> getAllNewest(){
		List<JobData> list = new ArrayList<>();
		String query = "select * from job_data ORDER BY STR_TO_DATE(StartTime, '%d/%m/%Y') DESC;";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				
				 	int id = rs.getInt("Id");
			        String company = rs.getString("Company");
			        String jobTitle = rs.getString("JobTitle");
			        String job = rs.getString("JobTitle");
			        String sexual = rs.getString("Sexual");
			        String salary = rs.getString("Salary");
			        String level = rs.getString("Level");
			        String startTime = rs.getString("StartTime");
			        String endTime = rs.getString("EndTime");
			        String location = rs.getString("Location");
			        String city = rs.getString("City");
			        String requirement = rs.getString("Requirement");
			        String qualification = rs.getString("Qualification");
			        String age = rs.getString("Age");
			        String experience = rs.getString("Experience");
			        String workWay = rs.getString("Work_way");
			        int numberRecruits = rs.getInt("number_recruits");
			        String description = rs.getString("Description");
			        String benefit = rs.getString("Benefit");
			        String picLink = rs.getString("pic_link");
			        String status = rs.getString("status");
			        
			        // Tạo một đối tượng JobData mới và thêm vào danh sách
			        if ("Approved".equals(status)) {
			        list.add(new JobData(id, company, jobTitle, job, sexual, salary, level, startTime, endTime, location, city,
			                requirement, qualification, age, experience, workWay, numberRecruits, description, benefit, picLink, status));
			        }
			        }
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		    // Đóng các tài nguyên
		    try {
		        if (rs != null) rs.close();
		        if (ps != null) ps.close();
		        if (conn != null) conn.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
		return list;
	}
	public List<JobData> getAllNewestforAdmin(){
		List<JobData> list = new ArrayList<>();
		String query = "select * from job_data ORDER BY STR_TO_DATE(StartTime, '%d/%m/%Y') DESC;";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				
				 	int id = rs.getInt("Id");
			        String company = rs.getString("Company");
			        String jobTitle = rs.getString("JobTitle");
			        String job = rs.getString("JobTitle");
			        String sexual = rs.getString("Sexual");
			        String salary = rs.getString("Salary");
			        String level = rs.getString("Level");
			        String startTime = rs.getString("StartTime");
			        String endTime = rs.getString("EndTime");
			        String location = rs.getString("Location");
			        String city = rs.getString("City");
			        String requirement = rs.getString("Requirement");
			        String qualification = rs.getString("Qualification");
			        String age = rs.getString("Age");
			        String experience = rs.getString("Experience");
			        String workWay = rs.getString("Work_way");
			        int numberRecruits = rs.getInt("number_recruits");
			        String description = rs.getString("Description");
			        String benefit = rs.getString("Benefit");
			        String picLink = rs.getString("pic_link");
			        String status = rs.getString("status");
			        
			        // Tạo một đối tượng JobData mới và thêm vào danh sách
			        list.add(new JobData(id, company, jobTitle, job, sexual, salary, level, startTime, endTime, location, city,
			                requirement, qualification, age, experience, workWay, numberRecruits, description, benefit, picLink, status));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		    // Đóng các tài nguyên
		    try {
		        if (rs != null) rs.close();
		        if (ps != null) ps.close();
		        if (conn != null) conn.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
		return list;
	}
	public user_acc login(String email, String pass) {
		String query = "select * from user_inform"
				+ " where uemail = ?"
				+ " and upass = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new user_acc(rs.getInt("Id_user"),
						rs.getString("uname"),
						rs.getString("uemail"),
						rs.getString("upass"),
						rs.getString("umobile"),
						rs.getString("birthday"),
						rs.getString("gender")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public JobData getJobDataByID(String id){		
		String query = "select * from job_data\n"
				+ "where Id = ?";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				
				 	int ids = rs.getInt("Id");
			        String company = rs.getString("Company");
			        String jobTitle = rs.getString("JobTitle");
			        String job = rs.getString("Job");
			        String sexual = rs.getString("Sexual");
			        String salary = rs.getString("Salary");
			        String level = rs.getString("Level");
			        String startTime = rs.getString("StartTime");
			        String endTime = rs.getString("EndTime");
			        String location = rs.getString("Location");
			        String city = rs.getString("City");
			        String requirement = rs.getString("Requirement");
			        String qualification = rs.getString("Qualification");
			        String age = rs.getString("Age");
			        String experience = rs.getString("Experience");
			        String workWay = rs.getString("Work_way");
			        int numberRecruits = rs.getInt("number_recruits");
			        String description = rs.getString("Description");
			        String benefit = rs.getString("Benefit");
			        String picLink = rs.getString("pic_link");
			        String status = rs.getString("status");
			        
			        // Tạo một đối tượng JobData mới và thêm vào danh sách
			       return new JobData(ids, company, jobTitle, job, sexual, salary, level, startTime, endTime, location, city,
			                requirement, qualification, age, experience, workWay, numberRecruits, description, benefit, picLink, status);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		    // Đóng các tài nguyên
		    try {
		        if (rs != null) rs.close();
		        if (ps != null) ps.close();
		        if (conn != null) conn.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
		return null;
	}
	public List<JobData> getJobDataBySeach(String keyword,String citytxt,String jobtxt){
		List<JobData> list = new ArrayList<>();
		String query = "select * from job_data where 1=1";
		if(keyword!="") query+=" and JobTitle like ?";
		if(citytxt!="") query+=" and City like ?";
		if(jobtxt!="") query+=" and Job like ?";
		query+=" ORDER BY STR_TO_DATE(StartTime, '%d/%m/%Y') DESC;";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			int i=0;
			if(keyword!="") {
				++i;
				ps.setString(i, "%" + keyword + "%");		
			}
			if(citytxt!="") { 
				++i;
				ps.setString(i, "%" + citytxt + "%");
			}
			if(jobtxt!="") {
				++i;
				ps.setString(i, "%" + jobtxt + "%");
			}
			rs = ps.executeQuery();
			while (rs.next()) {
				
				 	int id = rs.getInt("Id");
			        String company = rs.getString("Company");
			        String jobTitle = rs.getString("JobTitle");
			        String job = rs.getString("JobTitle");
			        String sexual = rs.getString("Sexual");
			        String salary = rs.getString("Salary");
			        String level = rs.getString("Level");
			        String startTime = rs.getString("StartTime");
			        String endTime = rs.getString("EndTime");
			        String location = rs.getString("Location");
			        String city = rs.getString("City");
			        String requirement = rs.getString("Requirement");
			        String qualification = rs.getString("Qualification");
			        String age = rs.getString("Age");
			        String experience = rs.getString("Experience");
			        String workWay = rs.getString("Work_way");
			        int numberRecruits = rs.getInt("number_recruits");
			        String description = rs.getString("Description");
			        String benefit = rs.getString("Benefit");
			        String picLink = rs.getString("pic_link");
			        String status = rs.getString("status");
			        
			        // Tạo một đối tượng JobData mới và thêm vào danh sách
			        if ("Approved".equals(status)) {
			        list.add(new JobData(id, company, jobTitle, job, sexual, salary, level, startTime, endTime, location, city,
			                requirement, qualification, age, experience, workWay, numberRecruits, description, benefit, picLink, status));
			        }
			        }
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		    // Đóng các tài nguyên
		    try {
		        if (rs != null) rs.close();
		        if (ps != null) ps.close();
		        if (conn != null) conn.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
		return list;
	}
	public List<JobData> GetJobDataByCompany(String company_name){
		List<JobData> list = new ArrayList<>();
		String query = "select * from job_data where company like ?";
		query+=" ORDER BY STR_TO_DATE(StartTime, '%d/%m/%Y') DESC;";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, "%" + company_name + "%");

			rs = ps.executeQuery();
			while (rs.next()) {
				
				 	int id = rs.getInt("Id");
			        String company = rs.getString("Company");
			        String jobTitle = rs.getString("JobTitle");
			        String job = rs.getString("JobTitle");
			        String sexual = rs.getString("Sexual");
			        String salary = rs.getString("Salary");
			        String level = rs.getString("Level");
			        String startTime = rs.getString("StartTime");
			        String endTime = rs.getString("EndTime");
			        String location = rs.getString("Location");
			        String city = rs.getString("City");
			        String requirement = rs.getString("Requirement");
			        String qualification = rs.getString("Qualification");
			        String age = rs.getString("Age");
			        String experience = rs.getString("Experience");
			        String workWay = rs.getString("Work_way");
			        int numberRecruits = rs.getInt("number_recruits");
			        String description = rs.getString("Description");
			        String benefit = rs.getString("Benefit");
			        String picLink = rs.getString("pic_link");
			        String status = rs.getString("status");
			        
			        // Tạo một đối tượng JobData mới và thêm vào danh sách
			        list.add(new JobData(id, company, jobTitle, job, sexual, salary, level, startTime, endTime, location, city,
			                requirement, qualification, age, experience, workWay, numberRecruits, description, benefit, picLink, status));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		    // Đóng các tài nguyên
		    try {
		        if (rs != null) rs.close();
		        if (ps != null) ps.close();
		        if (conn != null) conn.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
		return list;
	}
	public int NumberOfJob() {
	    String query = "SELECT COUNT(*) FROM job_data";
	    int count = 0;
	    try {
	    	conn = new DBConnect().getConnection();
	        ps = conn.prepareStatement(query);
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch(Exception e) {

	    } 
	    return count;
}
	public int NumberOfNewestJob(int month, int year) {
	    String query = "SELECT COUNT(*) FROM job_data WHERE MONTH(STR_TO_DATE(StartTime, '%d/%m/%Y')) = ? AND YEAR(STR_TO_DATE(StartTime, '%d/%m/%Y')) = ?";
	    int count = 0;
	    try {
	        conn = new DBConnect().getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setInt(1, month);
	        ps.setInt(2, year);
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch(Exception e) {
	        e.printStackTrace(); // Để debug lỗi nếu có
	    } finally {
	        try {
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch(Exception e) {
	            e.printStackTrace();
	        }
	    }
	    return count;
	}

	public Boolean AddUser(String name, String email, String pass, String phone, String birthday, String gender) {
		String query = "insert into user_inform(uname,uemail,upass,umobile,birthday,gender) values(?,?,?,?,?,?) ";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, phone);
			ps.setString(5, birthday);
			ps.setString(6, gender);
			int rowCount = ps.executeUpdate();
			if(rowCount > 0) {
				return true;
			}
			
		}catch (Exception e) {
	        e.printStackTrace();
	    }
		return false;
	}
	public Boolean AddNewJob(String jobtitle, String company, String job, String description, String requirement, String location, String benefit, String salary, String city, String starttime, String endtime, String experience, String education, String level,String workway, String number_recruits,String pic_link, String status) {
		String query = "INSERT INTO job_data (JobTitle, Company, Job, Description, Requirement, Location, Benefit, Salary, City, StartTime, EndTime, Experience, Qualification, Level, Work_way, number_recruits, pic_link, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, jobtitle);
	        ps.setString(2, company);
	        ps.setString(3, job);
	        ps.setString(4, description);
	        ps.setString(5, requirement);
	        ps.setString(6, location);
	        ps.setString(7, benefit);
	        ps.setString(8, salary);
	        ps.setString(9, city);
	        ps.setString(10, starttime);
	        ps.setString(11, endtime);
	        ps.setString(12, experience);
	        ps.setString(13, education);
	        ps.setString(14, level);
	        ps.setString(15, workway);
	        ps.setString(16, number_recruits);
	        ps.setString(17, pic_link);
	        ps.setString(18, status);
			int rowCount = ps.executeUpdate();
			if(rowCount > 0) {
				return true;
			}
			
		}catch (Exception e) {
	        e.printStackTrace();
	    }
		return false;
	}
	public Boolean updateJob(String id, String jobtitle, String company, String job, String description, String requirement, String location, String benefit, String salary, String city, String starttime, String endtime, String experience, String education, String level, String workway, String number_recruits, String pic_link, String status) {
	    String query = "UPDATE job_data SET JobTitle = ?, Company = ?, Job = ?, Description = ?, Requirement = ?, Location = ?, Benefit = ?, Salary = ?, City = ?, StartTime = ?, EndTime = ?, Experience = ?, Qualification = ?, Level = ?, Work_way = ?, number_recruits = ?, pic_link = ?, status = ? WHERE Id = ?";
	    try {
	        Connection conn = new DBConnect().getConnection();
	        PreparedStatement ps = conn.prepareStatement(query);
	        ps.setString(1, jobtitle);
	        ps.setString(2, company);
	        ps.setString(3, job);
	        ps.setString(4, description);
	        ps.setString(5, requirement);
	        ps.setString(6, location);
	        ps.setString(7, benefit);
	        ps.setString(8, salary);
	        ps.setString(9, city);
	        ps.setString(10, starttime);
	        ps.setString(11, endtime);
	        ps.setString(12, experience);
	        ps.setString(13, education);
	        ps.setString(14, level);
	        ps.setString(15, workway);
	        ps.setString(16, number_recruits);
	        ps.setString(17, pic_link);
	        ps.setString(18, status);
	        ps.setString(19, id); // Tham số cuối cùng là id, để sử dụng trong điều kiện WHERE

	        int rowCount = ps.executeUpdate();
	        if (rowCount > 0) {
	            return true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}
	public void DeleteJob(String id) {
	    String query = "delete from job_data WHERE Id = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        ps.setString(1, id);
	        ps.executeUpdate();
	    } catch(Exception e) {

	    } 
}
	public void updateJobStatus(String id, String status) {
	    String query = "UPDATE job_data SET status = ? WHERE Id = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        // Query SQL để cập nhật thông tin người dùng

	        
	        // Đặt các tham số cho truy vấn
	        ps.setString(1, status);
	        ps.setString(2, id);
	       
	        
	        // Thực thi truy vấn
	        ps.executeUpdate();
	    } catch(Exception e) {
	        
	        // Xử lý ngoại lệ nếu có
	    } 
}
	
	
	
	
	
	
	public List<user_acc> GetAllUser() {
		List<user_acc> list = new ArrayList<>();
		String query = "select * from user_inform";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new user_acc(rs.getInt("Id_user"),
						rs.getString("uname"),
						rs.getString("uemail"),
						rs.getString("upass"),
						rs.getString("umobile"),
						rs.getString("birthday"),
						rs.getString("gender")
						));
			}
		}catch(Exception e) {
			
		}
				
		return list;
	}
	public user_acc GetUserByEmail(String email) {
		String query = "select * from user_inform"
				+ " where uemail = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new user_acc(rs.getInt("Id_user"),
						rs.getString("uname"),
						rs.getString("uemail"),
						rs.getString("upass"),
						rs.getString("umobile"),
						rs.getString("birthday"),
						rs.getString("gender")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public user_acc GetUserById(String id) {
		String query = "select * from user_inform"
				+ " where Id_user = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new user_acc(rs.getInt("Id_user"),
						rs.getString("uname"),
						rs.getString("uemail"),
						rs.getString("upass"),
						rs.getString("umobile"),
						rs.getString("birthday"),
						rs.getString("gender")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public user_acc GetUserByPhone(String phone) {
		String query = "select * from user_inform"
				+ " where umobile = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, phone);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new user_acc(rs.getInt("Id_user"),
						rs.getString("uname"),
						rs.getString("uemail"),
						rs.getString("upass"),
						rs.getString("umobile"),
						rs.getString("birthday"),
						rs.getString("gender")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	
	public void updateUser(String id,String name,String email,String pass,String phone,String birthday,String gender) {
		    String query = "UPDATE user_inform SET uname = ?, uemail = ?, upass = ?, umobile = ?, birthday = ?, gender = ? WHERE Id_user = ?";
		    try {

		    	conn= new DBConnect().getConnection();
				ps =conn.prepareStatement(query);
		        // Query SQL để cập nhật thông tin người dùng

		        
		        // Đặt các tham số cho truy vấn
		        ps.setString(1, name);
		        ps.setString(2, email);
		        ps.setString(3, pass);
		        ps.setString(4, phone);
		        ps.setString(5, birthday);
		        ps.setString(6, gender);
		        ps.setString(7, id);
		        
		        // Thực thi truy vấn
		        ps.executeUpdate();
		    } catch(Exception e) {
		        
		        // Xử lý ngoại lệ nếu có
		    } 
	}
	public void ChangeUserPass(String id,String pass) {
	    String query = "UPDATE user_inform SET upass = ? WHERE Id_user = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        // Query SQL để cập nhật thông tin người dùng

	        
	        // Đặt các tham số cho truy vấn
	        ps.setString(1, pass);
	        ps.setString(2, id);
	        
	        // Thực thi truy vấn
	        ps.executeUpdate();
	    } catch(Exception e) {
	        
	        // Xử lý ngoại lệ nếu có
	    } 
}
	public void DeleteUser(String id) {
	    String query = "delete from user_inform WHERE Id_user = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        ps.setString(1, id);
	        ps.executeUpdate();
	    } catch(Exception e) {

	    } 
}
	public int NumberOfUser() {
	    String query = "SELECT COUNT(*) FROM user_inform";
	    int count = 0;
	    try {
	    	conn = new DBConnect().getConnection();
	        ps = conn.prepareStatement(query);
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch(Exception e) {

	    } 
	    return count;
}
	public List<employer_acc> GetAllEmployer() {
		List<employer_acc> list = new ArrayList<>();
		String query = "select * from employer_inform";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new employer_acc(rs.getInt("Id_employer"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("pass"),
						rs.getString("mobile"),
						rs.getString("company"),
						rs.getString("city"),
						rs.getString("location"),
						rs.getString("job"),
						rs.getString("pic_link")
						));
			}
		}catch(Exception e) {
			
		}
				
		return list;
	}
	public Boolean AddEmployer(String name, String email, String pass, String phone, String company, String city, String location, String job) {
		String query = "INSERT INTO employer_inform (name, email, pass, mobile, company, city, location, job, pic_link) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, name);
	        ps.setString(2, email);
	        ps.setString(3, pass);
	        ps.setString(4, phone);
	        ps.setString(5, company);
	        ps.setString(6, city);
	        ps.setString(7, location);
	        ps.setString(8, job);
	        ps.setString(9, "files\\defaulticon.png");
			int rowCount = ps.executeUpdate();
			if(rowCount > 0) {
				return true;
			}
			
		}catch (Exception e) {
	        e.printStackTrace();
	    }
		return false;
	}
	public employer_acc GetEmployerById(String id) {
		String query = "select * from employer_inform"
				+ " where Id_employer = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new employer_acc(rs.getInt("Id_employer"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("pass"),
						rs.getString("mobile"),
						rs.getString("company"),
						rs.getString("city"),
						rs.getString("location"),
						rs.getString("job"),						
						rs.getString("pic_link")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public employer_acc GetEmployerByEmail(String email) {
		String query = "select * from employer_inform"
				+ " where email = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new employer_acc(rs.getInt("Id_employer"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("pass"),
						rs.getString("mobile"),
						rs.getString("company"),
						rs.getString("city"),
						rs.getString("location"),
						rs.getString("job"),
						rs.getString("pic_link")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public employer_acc GetEmployerByPhone(String phone) {
		String query = "select * from employer_inform"
				+ " where mobile = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, phone);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new employer_acc(rs.getInt("Id_employer"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("pass"),
						rs.getString("mobile"),
						rs.getString("company"),
						rs.getString("city"),
						rs.getString("location"),
						rs.getString("job"),
						rs.getString("pic_link")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public void updateEmployer(String id,String name,String email,String pass,String mobile,String company,String city,String location,String job,String pic_link) {
	    String query = "UPDATE employer_inform SET name = ?, email = ?, pass = ?, mobile = ?, company = ?, city = ?, location = ?, job = ?, pic_link = ? WHERE Id_employer = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        // Query SQL để cập nhật thông tin người dùng

	        
	        // Đặt các tham số cho truy vấn
	        ps.setString(1, name);
	        ps.setString(2, email);
	        ps.setString(3, pass);
	        ps.setString(4, mobile);
	        ps.setString(5, company);
	        ps.setString(6, city);
	        ps.setString(7, location);
	        ps.setString(8, job);
	        ps.setString(9, pic_link);
	        ps.setString(10, id);
	        
	        // Thực thi truy vấn
	        ps.executeUpdate();
	    } catch(Exception e) {
	        
	        // Xử lý ngoại lệ nếu có
	    } 
}
	public int NumberOfEmployer() {
	    String query = "SELECT COUNT(*) FROM employer_inform";
	    int count = 0;
	    try {
	    	conn = new DBConnect().getConnection();
	        ps = conn.prepareStatement(query);
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch(Exception e) {

	    } 
	    return count;
}
	public employer_acc employer_login(String email, String pass) {
		String query = "select * from employer_inform"
				+ " where email = ?"
				+ " and pass = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new employer_acc(rs.getInt("Id_employer"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("pass"),
						rs.getString("mobile"),
						rs.getString("company"),
						rs.getString("city"),
						rs.getString("location"),
						rs.getString("job"),
						rs.getString("pic_link")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public void ChangeEmployerPass(String id,String pass) {
	    String query = "UPDATE employer_inform SET pass = ? WHERE Id_employer = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        ps.setString(1, pass);
	        ps.setString(2, id);
	        ps.executeUpdate();
	    } catch(Exception e) {

	    } 
}
	public void DeleteEmployer(String id) {
	    String query = "delete from employer_inform WHERE Id_employer = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        ps.setString(1, id);
	        ps.executeUpdate();
	    } catch(Exception e) {

	    } 
}	
	public admin_acc GetAdminByEmail(String email) {
		String query = "select * from admin_inform"
				+ " where email = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new admin_acc(rs.getInt("Id_admin"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("pass")

						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public List<admin_acc> GetAllAdmin() {
		List<admin_acc> list = new ArrayList<>();
		String query = "select * from admin_inform";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new admin_acc(rs.getInt("Id_admin"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("pass")

						));
			}
		}catch(Exception e) {
			
		}
				
		return list;
	}
	public admin_acc admin_login(String email, String pass) {
		String query = "select * from admin_inform"
				+ " where email = ?"
				+ " and pass = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new admin_acc(rs.getInt("Id_admin"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("pass")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public Boolean AddAdmin(String name, String email, String pass) {
		String query = "insert into admin_inform(name,email,pass) values(?,?,?) ";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			int rowCount = ps.executeUpdate();
			if(rowCount > 0) {
				return true;
			}
			
		}catch (Exception e) {
	        e.printStackTrace();
	    }
		return false;
	}
	public void updateAdmin(String id,String name,String email,String pass) {
	    String query = "UPDATE admin_inform SET name = ?, email = ?, pass = ? WHERE Id_admin = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        // Query SQL để cập nhật thông tin người dùng

	        
	        // Đặt các tham số cho truy vấn
	        ps.setString(1, name);
	        ps.setString(2, email);
	        ps.setString(3, pass);
	        ps.setString(4, id);
	        
	        // Thực thi truy vấn
	        ps.executeUpdate();
	    } catch(Exception e) {
	        
	        // Xử lý ngoại lệ nếu có
	    } 
}
	public void DeleteAdmin(String id) {
	    String query = "delete from admin_inform WHERE Id_admin = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        ps.setString(1, id);
	        ps.executeUpdate();
	    } catch(Exception e) {

	    } 
}
	public Boolean AddCV(String id_user, String user_name, String company, String jobtitle, String description, String time, String filename, String path, String status) {
		String query = "insert into cv_data(id_user,user_name,company,jobtitle,description,time,filename,path,status) values(?,?,?,?,?,?,?,?,?)";
		try {
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, id_user);
			ps.setString(2, user_name);
	        ps.setString(3, company);
	        ps.setString(4, jobtitle);
	        ps.setString(5, description);
	        ps.setString(6, time);
	        ps.setString(7, filename);
	        ps.setString(8, path);
	        ps.setString(9, status);
			int rowCount = ps.executeUpdate();
			if(rowCount > 0) {
				return true;
			}
			
		}catch (Exception e) {
	    }
		return false;
	}
	public int NumberOfAdmin() {
	    String query = "SELECT COUNT(*) FROM admin_inform";
	    int count = 0;
	    try {
	    	conn = new DBConnect().getConnection();
	        ps = conn.prepareStatement(query);
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch(Exception e) {

	    } 
	    return count;
}
	public CV GetCVById(String id) {
		String query = "select * from cv_data"
				+ " where id_cv = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new CV(rs.getInt("id_cv"),
						rs.getInt("id_user"),
						rs.getString("user_name"),
						rs.getString("company"),
						rs.getString("jobtitle"),
						rs.getString("description"),
						rs.getString("time"),
						rs.getString("filename"),
						rs.getString("path"),
						rs.getString("status")
						);
			}
		}catch(Exception e) {
			
		}
				
		return null;
	}
	public List<CV> GetCVByUserId(String id) {
		List<CV> list = new ArrayList<>();
		String query = "select * from cv_data"
				+ " where id_user = ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new CV(rs.getInt("id_cv"),
						rs.getInt("id_user"),
						rs.getString("user_name"),
						rs.getString("company"),
						rs.getString("jobtitle"),
						rs.getString("description"),
						rs.getString("time"),
						rs.getString("filename"),
						rs.getString("path"),
						rs.getString("status")
						));
			}
		}catch(Exception e) {
			
		}
				
		return list;
	}
	public List<CV> GetCVByCompany(String company) {
		List<CV> list = new ArrayList<>();
		String query = "select * from cv_data"
				+ " where company like ?";
		try{
			conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1, "%" + company + "%");
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new CV(rs.getInt("id_cv"),
						rs.getInt("id_user"),
						rs.getString("user_name"),
						rs.getString("company"),
						rs.getString("jobtitle"),
						rs.getString("description"),
						rs.getString("time"),
						rs.getString("filename"),
						rs.getString("path"),
						rs.getString("status")
						));
			}
		}catch(Exception e) {
			
		}
				
		return list;
	}
	public int NumberOfCVByCompany(String company) {
	    String query = "select COUNT(*) from cv_data"
	    					+ " where company like ?";
	    int count = 0;
	    try {
	    	conn = new DBConnect().getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, "%" + company + "%");
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch(Exception e) {

	    } 
	    return count;
}
	public Boolean updateCV(String id,String description,String time, String filename, String path) {
	    String query = "UPDATE cv_data SET description = ?, time = ?, filename = ?, path = ? WHERE id_cv = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        // Query SQL để cập nhật thông tin người dùng

	        
	        // Đặt các tham số cho truy vấn
			ps.setString(1, description);
	        ps.setString(2, time);
	        ps.setString(3, filename);
	        ps.setString(4, path);
	        ps.setString(5, id);
	        
	        // Thực thi truy vấn
	        int rowCount = ps.executeUpdate();
			if(rowCount > 0) {
				return true;
			}
	    } catch(Exception e) {
	        
	        // Xử lý ngoại lệ nếu có
	    } 
	    return false;
}
	public void DeleteCV(String id) {
	    String query = "delete from cv_data WHERE id_cv = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        ps.setString(1, id);
	        ps.executeUpdate();
	    } catch(Exception e) {

	    } 
}
	public void updateCVStatus(String id, String status) {
	    String query = "UPDATE cv_data SET status = ? WHERE id_cv = ?";
	    try {

	    	conn= new DBConnect().getConnection();
			ps =conn.prepareStatement(query);
	        // Query SQL để cập nhật thông tin người dùng

	        
	        // Đặt các tham số cho truy vấn
	        ps.setString(1, status);
	        ps.setString(2, id);
	       
	        
	        // Thực thi truy vấn
	        ps.executeUpdate();
	    } catch(Exception e) {
	        
	        // Xử lý ngoại lệ nếu có
	    } 
}
	public static void main(String[] args) {
		home_DAO dao = new home_DAO();
//		List<user_acc> list = dao.GetAllUser();
//		//user_acc a = dao.login("lemihoang2004@gmail.com","123456");
//		for(user_acc o : list) {
////		dao.AddNewJob("Software Engineer", "Khang Minh Company", "Java Developer", "Description of the job", "Requirements for the job", "Location of the job", "Benefits of the job", "5000", "New York", "07/05/2024", "07/06/2024", "2 years", "Bachelor's degree in Computer Science", "Senior", "Full-time", "5", "https://example.com/image.jpg");
//			System.out.print(o + "\n");
//		}
		List<CV> list =dao.GetCVByCompany("Thái Công AutoCar");
		for(CV o : list) {

		System.out.print(o + "\n");
	}
		
		
	}
}
