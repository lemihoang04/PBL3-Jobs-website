package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.home.dao.home_DAO;
import com.home.model.JobData;

/**
 * Servlet implementation class ViewDetailAdminControl
 */
@WebServlet(name = "ViewDetailAdminControl", urlPatterns = {"/viewdetailad"})
public class ViewDetailAdminControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewDetailAdminControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("jid");
		home_DAO a = new home_DAO();
		JobData j = a.getJobDataByID(id);
		request.setAttribute("detail", j);
		request.setAttribute("vision",2);
		request.getRequestDispatcher("jobdetailview.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
