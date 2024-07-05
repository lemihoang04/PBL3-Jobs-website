package com.home.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.home.dao.*;
import com.home.model.JobData;

/**
 * Servlet implementation class SeachControl
 */
@WebServlet(name = "SeachControl", urlPatterns = {"/seach"})
public class SeachControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeachControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.setContentType("text/html;charset=UTF-8");
		String txtSearch = request.getParameter("txt");
		String citySearch = request.getParameter("citytxt");
		String jobSearch = request.getParameter("jobtxt");
		home_DAO a = new home_DAO();
		List<JobData> list = a.getJobDataBySeach(txtSearch,citySearch,jobSearch);
		request.setAttribute("jobList", list);
		request.setAttribute("txtS", txtSearch);
		request.setAttribute("txtC", citySearch);
		request.setAttribute("txtJ", jobSearch);
		request.getRequestDispatcher("Job_list1.jsp").forward(request, response);
	}


}
