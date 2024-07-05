package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.home.dao.home_DAO;
import com.home.model.*;

/**
 * Servlet implementation class EmployerRegControl
 */
@WebServlet(name = "EmployerRegControl", urlPatterns = {"/employerreg"})
public class EmployerRegControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerRegControl() {
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
		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("fullname");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		String phone = request.getParameter("phone");
		String company = request.getParameter("company");
		String city = request.getParameter("city");
		String location = request.getParameter("location");
		String job = request.getParameter("job");
		home_DAO dao = new home_DAO();
		employer_acc a = dao.GetEmployerByEmail(email);
		if(a!=null) {
			request.setAttribute("status", "duplicate_email");
			request.getRequestDispatcher("employer_reg.jsp").forward(request, response);
			return;
		}
		a = dao.GetEmployerByPhone(phone);
		if(a!=null) {
			request.setAttribute("status", "duplicate_phone");
			request.getRequestDispatcher("employer_reg.jsp").forward(request, response);
			return;
		}
		Boolean isSuccess = dao.AddEmployer(name, email, pass, phone, company, city, location, job);
		if(isSuccess) {
			request.setAttribute("status", "success");
			request.getRequestDispatcher("login_employer.jsp").forward(request, response);
		}
		else {
			request.setAttribute("status", "failed");
			request.getRequestDispatcher("employer_reg.jsp").forward(request, response);
		}
	}

}
