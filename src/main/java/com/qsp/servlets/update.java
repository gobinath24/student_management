package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.studentDAO;

@WebServlet("/update")
public class update extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		int phy=Integer.parseInt(req.getParameter("physics"));
		int che=Integer.parseInt(req.getParameter("chemistry"));
		int maths=Integer.parseInt(req.getParameter("maths"));
		
		try {
			int a=studentDAO.update(id, name, phy, che, maths);
			req.setAttribute("update", a);
			req.getRequestDispatcher("Home.jsp").include(req, resp);;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
