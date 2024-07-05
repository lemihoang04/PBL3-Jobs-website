package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.home.dao.home_DAO;
import com.home.model.JobData;

/**
 * Servlet implementation class ListjobControl
 */
@WebServlet(name = "ListjobControl", urlPatterns = {"/listjob"})
public class ListjobControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListjobControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		home_DAO a = new home_DAO();
		List<JobData> list = a.getAllNewest();
		request.setAttribute("jobList", list);
		request.getRequestDispatcher("Job_list1.jsp").forward(request, response);
		
		
	}


}
