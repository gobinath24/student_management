package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.studentDAO;

@WebServlet("/delete")
public class delete extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 int id=Integer.parseInt(req.getParameter("id"));
		 
		try {
			int a=studentDAO.deletestudent(id);
			if(a==1) {
				req.setAttribute("delete", a);
			   req.getRequestDispatcher("Home.jsp").include(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
