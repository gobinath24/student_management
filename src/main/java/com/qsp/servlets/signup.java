package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.studentDAO;
@WebServlet("/adminsignup")
public class signup extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		Long contact=Long.parseLong(req.getParameter("contact"));
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		String repass=req.getParameter("repass");
		
		
		
		
		try {
			int s=studentDAO.savadmin(id, name, contact, email, pass, repass);
			
			if(s>=1) {
			req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		
		
		
	}

}
