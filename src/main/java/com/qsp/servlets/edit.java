package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.qsp.DAO.studentDAO;
import com.qsp.DTO.studentDTO;

@WebServlet("/edit")
public class edit extends HttpServlet {
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		
		 int id=Integer.parseInt(req.getParameter("id"));
		 
		 try {
			studentDTO s=studentDAO.findstudent(id);
			if(s!=null) {
			req.setAttribute("student", s);
			req.getRequestDispatcher("edit.jsp").include(req, res);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
