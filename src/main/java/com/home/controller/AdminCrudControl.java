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
 * Servlet implementation class AdminCrudControl
 */
public class AdminCrudControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCrudControl() {
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
		switch(action) {
		case "/admincrudload":

			List<admin_acc> list = dao.GetAllAdmin();
			request.setAttribute("adminlist", list);
			request.getRequestDispatcher("admincrud.jsp").forward(request, response);
			break;
		case "/admincrudadd":
			name = request.getParameter("fullname");
			email = request.getParameter("email");
			pass = request.getParameter("pass");
			admin_acc a = dao.GetAdminByEmail(email);
			if(a!=null) {
				request.setAttribute("status", "duplicate_email");
				request.getRequestDispatcher("admincrudload").forward(request, response);
				return;
			}
			Boolean isSuccess = dao.AddAdmin(name, email, pass);
			request.getRequestDispatcher("admincrudload").forward(request, response);
			break;
		case "/admincrudupdate":
			id = request.getParameter("id");
			name = request.getParameter("fullname");
			email = request.getParameter("email");
			pass = request.getParameter("pass");

			dao.updateAdmin(id, name, email, pass);
			request.getRequestDispatcher("admincrudload").forward(request, response);
			break;
		case "/admincruddelete":
			HttpSession session = request.getSession();
			admin_acc admin = (admin_acc) session.getAttribute("admin_acc");
			int currentId = admin.getId();
			String currentIdStr = Integer.toString(currentId);
			id = request.getParameter("deleteId");
			if (!currentIdStr.equals(id)) {		
			dao.DeleteAdmin(id);
			request.getRequestDispatcher("admincrudload").forward(request, response);
			}
			else {
				request.setAttribute("status", "inuse");
				request.getRequestDispatcher("admincrudload").forward(request, response);
			}
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
