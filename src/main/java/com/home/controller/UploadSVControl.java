package com.home.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.home.dao.home_DAO;
import com.home.model.user_acc;


import java.io.*;

/**
 * Servlet implementation class UploadSVControl
 */
@WebServlet(name = "UploadSVControl", urlPatterns = {"/uploadcv"})
@MultipartConfig
public class UploadSVControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadSVControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/plain;charset=UTF-8");
		 HttpSession session = request.getSession();
		 PrintWriter out = null;
		 home_DAO dao = new home_DAO();
	        try {
	            out = response.getWriter();
	            String folderName = "files";
	            //String uploadPath = request.getServletContext().getRealPath("") + File.separator + folderName;//for netbeans use this code
	            String uploadPath = request.getServletContext().getRealPath("") + folderName;//for eclipse use this code
	            File dir = new File(uploadPath);
	            if (!dir.exists()) {
	                dir.mkdirs();
	            }
	            Part filePart = request.getPart("file");
	            user_acc user = (user_acc) session.getAttribute("acc");
	            String id_user = "" + user.getId();
	            String user_name = user.getName();
	            String company = request.getParameter("company");
	            String jobtitle = request.getParameter("jobtitle");
	            String description = request.getParameter("description");
	            LocalDate currentDate = LocalDate.now();
	            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	            String time = currentDate.format(formatter);
	            String status = "Pending";
	            String fileName = filePart.getSubmittedFileName();
	            String path = folderName + File.separator + fileName;
	            InputStream is = filePart.getInputStream();
	            Files.copy(is, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);

	            try {
	                Boolean have = dao.AddCV(id_user,user_name,company, jobtitle, description, time, fileName, path,status);
	                if (have) {
	                    System.out.println("CV uploaded successfully...");
	                    request.getRequestDispatcher("usercvload").forward(request, response);
	                }
	            } catch (Exception e) {
	            	
	            } 
	        } catch (IOException | ServletException e) {
	            
	        }
	    }
	  }
		

	