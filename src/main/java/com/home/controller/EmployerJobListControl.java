package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import com.home.dao.home_DAO;
import com.home.model.CV;
import com.home.model.JobData;
import com.home.model.employer_acc;

/**
 * Servlet implementation class EmployerJobListControl
 */
public class EmployerJobListControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerJobListControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getServletPath();
		home_DAO dao = new home_DAO();
		HttpSession session = request.getSession();
		switch(action) {
		case "/empjobload":
			
			employer_acc e = (employer_acc) session.getAttribute("employer_acc");
			String company = e.getCompany();
			List<JobData> list = dao.GetJobDataByCompany(company);
			request.setAttribute("joblist", list);
			request.getRequestDispatcher("empjoblist.jsp").forward(request, response);
			break;
		case "/empjobdelete":
			String deleteid = request.getParameter("deleteId");
			dao.DeleteJob(deleteid);
			request.getRequestDispatcher("empjobload").forward(request, response);
			break;
		case "/empjobeditload":
			String jid = request.getParameter("jid");
			request.setAttribute("jobid", jid);
			JobData jd = dao.getJobDataByID(jid);
			String salary = jd.getSalary();
			String[] parts = salary.replace(" triệu", "").split(" - ");
			String minSalary = parts[0].trim();
			String maxSalary = parts[1].trim();
			request.setAttribute("min", minSalary);
			request.setAttribute("max", maxSalary);
			request.setAttribute("detail", jd);
			request.getRequestDispatcher("empeditjob.jsp").forward(request, response);
			break;	
		case "/empjobupdate":
			String id = request.getParameter("jobid");
	        employer_acc emp = (employer_acc) session.getAttribute("employer_acc");
			String jobtitle = request.getParameter("jobtitle");
			String fcompany = emp.getCompany();
			String job = request.getParameter("job");
			String workway = request.getParameter("workway");
			String description = request.getParameter("description");
			String requirement = request.getParameter("requirement");
			String location = request.getParameter("location");
			String benefit = request.getParameter("benefit");
			String fminSalary = request.getParameter("minsalary");
			String fmaxSalary = request.getParameter("maxsalary");
			String fsalary = fminSalary +" - "+fmaxSalary +" triệu" ;
			String city = request.getParameter("city");
			LocalDate currentDate = LocalDate.now();
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	        String starttime = currentDate.format(formatter);
	        String endtime = request.getParameter("endtime");
	        String experience = request.getParameter("experience");
	        String education = request.getParameter("education");
	        String level = request.getParameter("level");
			String number_recruits = request.getParameter("number_recruits");
			String pic_link = emp.getPic_link();
			String fstatus ="Pending";
			
			Boolean isSuccess = dao.updateJob(id, jobtitle, fcompany, job, description, requirement, location, benefit, fsalary, city, starttime, endtime, experience, education, level, workway, number_recruits, pic_link, fstatus);
			if(isSuccess) {
				request.setAttribute("status", "success");
				request.getRequestDispatcher("empjobload").forward(request, response);
				
			}
			else {
				request.setAttribute("status", "failed");
				request.getRequestDispatcher("empjobload").forward(request, response);
			}

			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
