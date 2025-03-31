package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.studentDAO;
import com.qsp.DTO.studentDTO;


@WebServlet("/addstd")
public class addstudent extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		int physics=Integer.parseInt(req.getParameter("physics"));
		int chemistry=Integer.parseInt(req.getParameter("chemistry"));
		int maths=Integer.parseInt(req.getParameter("maths"));
		
		
		studentDTO s=new studentDTO(id, name, physics, chemistry, maths);
		try {
			int a=studentDAO.savestudent(s);
			
			if(a==1) {
				req.getRequestDispatcher("Home.jsp").include(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
