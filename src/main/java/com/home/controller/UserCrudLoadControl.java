package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.home.dao.home_DAO;
import com.home.model.*;

/**
 * Servlet implementation class UserCrudLoadControl
 */
@WebServlet(name = "UserCrudLoadControl", urlPatterns = {"/usercrudcontrol"})
public class UserCrudLoadControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserCrudLoadControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		home_DAO a = new home_DAO();
		List<user_acc> list = a.GetAllUser();
		request.setAttribute("userList", list);
		request.getRequestDispatcher("usercrud.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		home_DAO a = new home_DAO();
		List<user_acc> list = a.GetAllUser();
		request.setAttribute("userList", list);
		request.getRequestDispatcher("usercrud.jsp").forward(request, response);
	}
		
	}


