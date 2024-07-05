package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.*;

import com.home.dao.*;
import com.home.model.JobData;


/**
 * Servlet implementation class HomeControl
 */
@WebServlet(name = "HomeControl", urlPatterns = {"/home"})
public class HomeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		home_DAO a = new home_DAO();
		List<JobData> list = a.getAllNewest();
		request.setAttribute("usernum", a.NumberOfUser());
		request.setAttribute("employernum", a.NumberOfEmployer());
		request.setAttribute("jobnum", a.NumberOfJob());
		LocalDate currentDate = LocalDate.now();
        int currentMonth = currentDate.getMonthValue();
        int currentYear = currentDate.getYear();
        request.setAttribute("newjobnum", a.NumberOfNewestJob(currentMonth, currentYear));
		request.setAttribute("jobList", list);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}


}
