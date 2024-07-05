package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.home.dao.home_DAO;
import com.home.model.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 * Servlet implementation class AddNewJobControl
 */
@WebServlet(name = "AddNewJobControl", urlPatterns = {"/addnewjob"})
public class AddNewJobControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewJobControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		employer_acc e = (employer_acc) session.getAttribute("employer_acc");
		String jobtitle = request.getParameter("jobtitle");
		String company = e.getCompany();
		String job = request.getParameter("job");
		String workway = request.getParameter("workway");
		String description = request.getParameter("description");
		String requirement = request.getParameter("requirement");
		String location = request.getParameter("location");
		String benefit = request.getParameter("benefit");
		String minSalary = request.getParameter("minsalary");
		String maxSalary = request.getParameter("maxsalary");
		String salary = minSalary +" - "+maxSalary +" triệu" ;
		String city = request.getParameter("city");
		LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        String starttime = currentDate.format(formatter);
        String endtime = request.getParameter("endtime");
        String experience = request.getParameter("experience");
        String education = request.getParameter("education");
        String level = request.getParameter("level");
		String number_recruits = request.getParameter("number_recruits");
		String pic_link = e.getPic_link();
		String status ="Pending";
		home_DAO dao = new home_DAO();
		Boolean isSuccess = dao.AddNewJob(jobtitle, company, job, description, requirement, location, benefit, salary, city, starttime, endtime, experience, education, level, workway, number_recruits, pic_link, status);
		if(isSuccess) {
			request.setAttribute("status", "success");
			request.getRequestDispatcher("postjob.jsp").forward(request, response);
			
		}
		else {
			System.out.print("fail");
			request.setAttribute("status", "failed");
			request.getRequestDispatcher("postjob.jsp").forward(request, response);
		}
	}

}
