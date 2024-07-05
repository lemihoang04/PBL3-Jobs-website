package com.home.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.home.dao.home_DAO;
import com.home.model.*;

/**
 * Servlet implementation class EmployerLoginControl
 */
@WebServlet(name = "EmployerLoginControl", urlPatterns = {"/emplogout"})
public class EmployerLoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerLoginControl() {
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
	
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		home_DAO dao = new home_DAO();
		employer_acc a = dao.employer_login(email,pass);
		RequestDispatcher dis = null;
		if(a == null) {
			/*
			 * request.setAttribute("mess", pass);
			 * request.getRequestDispatcher("login.jsp").forward(request, response);
			 */
			dis = request.getRequestDispatcher("login_employer.jsp");
			request.setAttribute("status", "failed");
			dis.forward(request, response);
		}else {	
			HttpSession session = request.getSession();
			session.setAttribute("employer_acc", a);
			request.getRequestDispatcher("postjob.jsp").forward(request, response);
		}
	}

}
