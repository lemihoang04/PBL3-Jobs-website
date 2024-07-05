package com.home.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import com.home.dao.*;
import com.home.model.*;
/**
 * Servlet implementation class LoginControl
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControl() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		if(session.getAttribute("acc")!=null){
			response.sendRedirect("home");
		}
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		home_DAO dao = new home_DAO();
		user_acc a = dao.login(email,pass);
		RequestDispatcher dis = null;
		if(a == null) {
			/*
			 * request.setAttribute("mess", pass);
			 * request.getRequestDispatcher("login.jsp").forward(request, response);
			 */
			dis = request.getRequestDispatcher("login.jsp");
			request.setAttribute("status", "failed");
			dis.forward(request, response);
		}else {	
			
			session.setAttribute("acc", a);
			request.getRequestDispatcher("home").forward(request, response);
		}
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
}
}
