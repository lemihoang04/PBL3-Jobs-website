package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.home.dao.home_DAO;

/**
 * Servlet implementation class AdminHomeControl
 */
@WebServlet(name = "AdminHomeControl", urlPatterns = {"/adminhome"})
public class AdminHomeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHomeControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		home_DAO dao = new home_DAO();
		request.setAttribute("usernum", dao.NumberOfUser());
		request.setAttribute("employernum", dao.NumberOfEmployer());
		request.setAttribute("jobnum", dao.NumberOfJob());
		request.setAttribute("adminnum", dao.NumberOfAdmin());
		request.getRequestDispatcher("adminhome.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
