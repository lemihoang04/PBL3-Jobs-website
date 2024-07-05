package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.home.dao.*;
import com.home.model.*;

/**
 * Servlet implementation class RegisterControl
 */
@WebServlet(name = "RegisterControl", urlPatterns = {"/register"})
public class RegisterControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("fullname");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		String phone = request.getParameter("phone");
		home_DAO dao = new home_DAO();
		user_acc a = dao.GetUserByEmail(email);
		if(a!=null) {
			request.setAttribute("status", "duplicate_email");
			request.getRequestDispatcher("register_candicate.jsp").forward(request, response);
			return;
		}
		a = dao.GetUserByPhone(phone);
		if(a!=null) {
			request.setAttribute("status", "duplicate_phone");
			request.getRequestDispatcher("register_candicate.jsp").forward(request, response);
			return;
		}
		Boolean isSuccess = dao.AddUser(name, email, pass, phone,"01/01/2000","Male");
		if(isSuccess) {
			request.setAttribute("status", "success");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("status", "failed");
			request.getRequestDispatcher("register_candicate.jsp").forward(request, response);
		}
	}

}
