package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.home.dao.home_DAO;
import com.home.model.user_acc;

/**
 * Servlet implementation class ChangePasswordControl
 */
@WebServlet(name = "ChangePasswordControl", urlPatterns = {"/changepass"})
public class ChangePasswordControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordControl() {
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
		HttpSession session = request.getSession();
		user_acc user = (user_acc) session.getAttribute("acc");
		String id = "" + user.getId();
		String cpass = user.getPass();
		String oldpass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		String repass = request.getParameter("repass");
		if (!cpass.equals(oldpass)) {
			request.setAttribute("status", "wrong");
			request.getRequestDispatcher("changepass.jsp").forward(request, response);
			return;
		}
		home_DAO dao = new home_DAO();
		dao.ChangeEmployerPass(id, newpass);
		 user_acc updatedUser = dao.GetUserById(id);
		    session.setAttribute("acc", updatedUser);
			/* request.setAttribute("status", "success"); */
		    response.sendRedirect("userinform?status=success");
		
	}

}
