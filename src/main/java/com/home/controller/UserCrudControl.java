package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.home.dao.home_DAO;
import com.home.model.user_acc;

/**
 * Servlet implementation class UserCrudControl
 */
@WebServlet(name = "UserCrudControl", urlPatterns = {"/addnewuser", "/deleteuser", "/edituser"})

public class UserCrudControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserCrudControl() {
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
		String id;
		String name;
		String email;
		String pass;
		String phone;
		String birthday;
		String gender;
		switch(action) {
		case "/addnewuser":
			name = request.getParameter("fullname");
			email = request.getParameter("email");
			pass = request.getParameter("pass");
			phone = request.getParameter("phone");
			birthday = request.getParameter("birthday");
			gender = request.getParameter("gender");
			user_acc a = dao.GetUserByEmail(email);
			if(a!=null) {
				request.setAttribute("status", "duplicate_email");
				request.getRequestDispatcher("usercrudload").forward(request, response);
				return;
			}
			a = dao.GetUserByPhone(phone);
			if(a!=null) {
				request.setAttribute("status", "duplicate_phone");
				request.getRequestDispatcher("usercrudload").forward(request, response);
				return;
			}
			Boolean isSuccess = dao.AddUser(name, email, pass, phone,birthday,gender);
			request.getRequestDispatcher("usercrudload").forward(request, response);
			break;
		case "/edituser":
			id = request.getParameter("id");
			name = request.getParameter("fullname");
			email = request.getParameter("email");
			pass = request.getParameter("pass");
			phone = request.getParameter("phone");
			birthday = request.getParameter("birthday");
			gender = request.getParameter("gender");
			dao.updateUser(id, name,email, pass, phone, birthday, gender);
			request.getRequestDispatcher("usercrudload").forward(request, response);
			break;
		case "/deleteuser":
			id = request.getParameter("deleteId");
			dao.DeleteUser(id);
			request.getRequestDispatcher("usercrudload").forward(request, response);
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
