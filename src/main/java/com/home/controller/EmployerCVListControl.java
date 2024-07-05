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
import com.home.model.CV;
import com.home.model.*;

/**
 * Servlet implementation class EmployerCVListControl
 */
public class EmployerCVListControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerCVListControl() {
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
		case "/empcvload":
			HttpSession session = request.getSession();
			employer_acc e = (employer_acc) session.getAttribute("employer_acc");
			String company = e.getCompany();
			int numofcv= dao.NumberOfCVByCompany(company);
			request.setAttribute("numcv", numofcv);
			List<CV> list = dao.GetCVByCompany(company);
			String status = request.getParameter("status");
			request.setAttribute("status", status);
			request.setAttribute("cvlist", list);
			request.getRequestDispatcher("empcvlist.jsp").forward(request, response);
			break;
		case "/empcvdelete":

			break;
		case "/empcvupdate":
			String id = request.getParameter("id");
	        String fstatus = request.getParameter("status");
	        dao.updateCVStatus(id, fstatus);
	        request.getRequestDispatcher("empcvload").forward(request, response);
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
