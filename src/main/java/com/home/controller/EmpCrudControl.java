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
 * Servlet implementation class EmpCrudControl
 */
public class EmpCrudControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpCrudControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getServletPath();
		home_DAO dao = new home_DAO();
		String id;
		String name;
		String email;
		String pass;
		String phone;
		String company;
		String city;
		String location;
		String job;
		switch(action) {
		case "/empcrudload":

			List<employer_acc> list = dao.GetAllEmployer();
			request.setAttribute("emplist", list);
			request.getRequestDispatcher("empcrud.jsp").forward(request, response);
			break;
		case "/empcrudadd":
			name = request.getParameter("fullname");
			email = request.getParameter("email");
			pass = request.getParameter("pass");
			phone = request.getParameter("phone");
			company = request.getParameter("company");
			city = request.getParameter("city");
			location = request.getParameter("location");
			job = request.getParameter("job");
			employer_acc a = dao.GetEmployerByEmail(email);
			if(a!=null) {
				request.setAttribute("status", "duplicate_email");
				request.getRequestDispatcher("empcrudload").forward(request, response);
				return;
			}
			a = dao.GetEmployerByPhone(phone);
			if(a!=null) {
				request.setAttribute("status", "duplicate_phone");
				request.getRequestDispatcher("empcrudload").forward(request, response);
				return;
			}
			Boolean isSuccess = dao.AddEmployer(name, email, pass, phone,company,city,location,job);
			request.getRequestDispatcher("empcrudload").forward(request, response);
			break;
		case "/empcrudupdate":
			String path;
			id = request.getParameter("id");
			employer_acc temp = dao.GetEmployerById(id);
			name = request.getParameter("fullname");
			email = request.getParameter("email");
			pass = request.getParameter("pass");
			phone = request.getParameter("phone");
			company = request.getParameter("company");
			city = request.getParameter("city");
			location = request.getParameter("location");
			job = request.getParameter("job");
			path = "" + temp.getPic_link();
			dao.updateEmployer(id, name, email, pass, phone, company, city, location, job, path);
			request.getRequestDispatcher("empcrudload").forward(request, response);
			break;
		case "/empcruddelete":
			id = request.getParameter("deleteId");
			dao.DeleteEmployer(id);
			request.getRequestDispatcher("empcrudload").forward(request, response);
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
