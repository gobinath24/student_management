package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.studentDAO;

@WebServlet("/login")
public class login extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		
		boolean a;
		try {
			a = studentDAO.findadmin(email, pass);
			if(a) {
				 req.setAttribute("login", a);
				 req.getRequestDispatcher("Home.jsp").include(req, resp);
			}
			else {
				 req.setAttribute("login", a);
				 req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
				
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	   
		
	}

}
