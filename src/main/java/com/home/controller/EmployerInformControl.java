package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import com.home.dao.home_DAO;
import com.home.model.CV;
import com.home.model.employer_acc;
import com.home.model.user_acc;

/**
 * Servlet implementation class EmployerInformControl
 */
@MultipartConfig
public class EmployerInformControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerInformControl() {
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
		HttpSession session = request.getSession();
		employer_acc employer = (employer_acc) session.getAttribute("employer_acc");
		switch(action) {
		case "/empinformload":
			String status = request.getParameter("status");
			request.setAttribute("status", status);
			request.getRequestDispatcher("empinform.jsp").forward(request, response);
			break;
		case "/emppasswordchange":
			String id = "" + employer.getId();
			String cpass = employer.getPass();
			String oldpass = request.getParameter("oldpass");
			String newpass = request.getParameter("newpass");
			String repass = request.getParameter("repass");
			if (!cpass.equals(oldpass)) {
				request.setAttribute("status", "wrong");
				request.getRequestDispatcher("changepass.jsp").forward(request, response);
				return;
			}
			dao.ChangeEmployerPass(id, newpass);
			 user_acc updatedUser1 = dao.GetUserById(id);
			    session.setAttribute("acc", updatedUser1);
				/* request.setAttribute("status", "success"); */
			    response.sendRedirect("empinformload?status=success");
			break;	
		case "/empinformupdate":
			try {
	            //out = response.getWriter();
	            String folderName = "files";
	            //String uploadPath = request.getServletContext().getRealPath("") + File.separator + folderName;//for netbeans use this code
	            String uploadPath = request.getServletContext().getRealPath("") + folderName;//for eclipse use this code
	            File dir = new File(uploadPath);
	            if (!dir.exists()) {
	                dir.mkdirs();
	            }
	            
	            
	            String id_emp = "" + employer.getId();
	            String name = request.getParameter("name");
	            String mobile = request.getParameter("mobile");
	            String email = request.getParameter("email");
	            String pass = "" + employer.getPass();
	            String company = request.getParameter("company");
	            String location = request.getParameter("location");
	            String city = request.getParameter("city");
	            String job = request.getParameter("job");	            
	            String path ;
	            Part filePart = request.getPart("file");
	            if (filePart.getSize() > 0) {
	                String fileName = filePart.getSubmittedFileName();
	                path = folderName + File.separator + fileName;
	                InputStream is = filePart.getInputStream();
	                Files.copy(is, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);
	            } else {
	            	path = "" + employer.getPic_link();
	            }
	            try { 	
	            	dao.updateEmployer(id_emp, name, email, pass, mobile, company, city, location, job, path);
	            	employer_acc updatedUser = dao.GetEmployerById(id_emp);
	    		    session.setAttribute("employer_acc", updatedUser);
	    		    response.sendRedirect("empinformload?status=success1");
	            } catch (Exception e) {
	            	
	            } 
	        } catch (IOException | ServletException e) {
	        	e.printStackTrace();
	        }
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
