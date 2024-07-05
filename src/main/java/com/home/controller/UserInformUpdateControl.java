package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import com.home.model.*;
import com.home.dao.home_DAO;

/**
 * Servlet implementation class UserInformUpdateControl
 */
@WebServlet(name = "UserInformUpdateControl", urlPatterns = {"/userinfupdate"})
public class UserInformUpdateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInformUpdateControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		user_acc user = (user_acc) session.getAttribute("acc");
		String id = "" + user.getId();
		String name = request.getParameter("fullname");
		String email = user.getEmail();
		String pass = user.getPass();
		String phone = request.getParameter("phone");
		String birthday = request.getParameter("birthday");
		String gender = request.getParameter("gender");
	
		home_DAO dao = new home_DAO();
		dao.updateUser(id, name, email, pass, phone, birthday, gender);
		 user_acc updatedUser = dao.GetUserById(id);
		    session.setAttribute("acc", updatedUser);
		    response.sendRedirect("userinform?status=success1");
	}

}
