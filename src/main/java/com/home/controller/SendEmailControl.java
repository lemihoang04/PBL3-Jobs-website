package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.home.dao.home_DAO;
import com.home.model.CV;
import com.home.model.user_acc;
import context.email;

/**
 * Servlet implementation class SendEmailControl
 */
public class SendEmailControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmailControl() {
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
		switch(action) {
		case "/sendemailload":
			String id = request.getParameter("uid");
			String jobtitle = request.getParameter("jobtitle");
			user_acc a = dao.GetUserById(id);
			String email = a.getEmail();
			String subject = "[JOB FIND] Result of submitting your CV for " +jobtitle;
			request.setAttribute("email", email);
			request.setAttribute("subject", subject);
			request.getRequestDispatcher("sendemail.jsp").forward(request, response);
			break;
		case "/sendemail":
			String femail = request.getParameter("email");
			String fsubject = request.getParameter("subject");
			String message = request.getParameter("message");
			email em = new email();
			em.sendEmail(femail, fsubject, message);
			response.sendRedirect("empcvload?status=success");
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
