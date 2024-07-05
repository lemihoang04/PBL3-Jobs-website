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
import com.home.model.*;


/**
 * Servlet implementation class JobCrudControl
 */
public class JobCrudControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobCrudControl() {
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
		case "/jobcrudload":

			List<JobData> list = dao.getAllNewestforAdmin();
			request.setAttribute("joblist", list);
			request.getRequestDispatcher("jobcrud.jsp").forward(request, response);
			break;
		case "/jobcruddelete":
			String deleteid = request.getParameter("deleteId");
			dao.DeleteJob(deleteid);
			request.getRequestDispatcher("jobcrudload").forward(request, response);
			break;
			
		case "/jobcrudupdate":
			String id = request.getParameter("id");
	        String fstatus = request.getParameter("status");
	        dao.updateJobStatus(id, fstatus);
	        request.getRequestDispatcher("jobcrudload").forward(request, response);
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
