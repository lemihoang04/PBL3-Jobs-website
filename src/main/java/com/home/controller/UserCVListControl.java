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
import com.home.model.*;

/**
 * Servlet implementation class UserCVListControl
 */
@MultipartConfig
public class UserCVListControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserCVListControl() {
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
		switch(action) {
		case "/usercvload":
			
			user_acc user = (user_acc) session.getAttribute("acc");
			String id = "" + user.getId();
			List<CV> list = dao.GetCVByUserId(id);
			request.setAttribute("cvlist", list);
			request.getRequestDispatcher("usercvlist.jsp").forward(request, response);
			break;
		case "/usercvdelete":
			String deleteid = request.getParameter("deleteId");
			dao.DeleteCV(deleteid);
			request.getRequestDispatcher("usercvload").forward(request, response);
			break;			
		case "/usercvedit":
			try {
	            String folderName = "files";
	            String uploadPath = request.getServletContext().getRealPath("") + folderName;//for eclipse use this code
	            File dir = new File(uploadPath);
	            if (!dir.exists()) {
	                dir.mkdirs();
	                
	            }
	            String cid = request.getParameter("cvid");
	            CV cv = dao.GetCVById(cid);
	            String path ;
	            String fileName;
	            Part filePart = request.getPart("file");
	            if (filePart.getSize() > 0) {
	                fileName = filePart.getSubmittedFileName();
	                path = folderName + File.separator + fileName;
	                InputStream is = filePart.getInputStream();
	                Files.copy(is, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);
	            } else {
	            	fileName = cv.getFilename();
	            	path = "" + cv.getPath();
	            }
	            
	            String description = request.getParameter("description");
	            LocalDate currentDate = LocalDate.now();
	            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	            String time = currentDate.format(formatter);
	            try {
	                Boolean have = dao.updateCV(cid, description, time, fileName, path);
	                request.getRequestDispatcher("usercvload").forward(request, response);
	                if (have) {
	                    System.out.println("Successfully...");

	                }
	            } catch (Exception e) {
	            	
	            } 
			} catch (IOException | ServletException e) {
	        	e.printStackTrace();
	        }
			break;
		case "/usercveditload":
			String cvid = request.getParameter("cvid");
			CV cv = dao.GetCVById(cvid);
			request.setAttribute("cv", cv);
			request.getRequestDispatcher("CVedit.jsp").forward(request, response);
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
