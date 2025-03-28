package com.qsp.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.qsp.DTO.studentDTO;

public class studentDAO {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/office","root","root");
		return con;	
	}
	
	public static int savestudent(studentDTO s) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
		ps.setInt(1, s.getId());
		ps.setString(2, s.getName());
		ps.setInt(3, s.getPhysics());
		ps.setInt(4, s.getChemistry());
		ps.setInt(5, s.getMaths());
		int a=ps.executeUpdate();
		return a;
		
	}
	public static studentDTO findstudent(int id) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from student where id=?");
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			studentDTO s=new studentDTO(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5));
			return s;
		}
		return null;	
	}
	public static int deletestudent(int id) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from student where id=?");
		ps.setInt(1, id);
		int v=ps.executeUpdate();
		return v;	
	}
	public static List<studentDTO> findallstudent() throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from student");
		List<studentDTO> li=new ArrayList<studentDTO>();
		
		while(rs.next()) {
			studentDTO s=new studentDTO(rs.getInt(1),rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5));
			li.add(s);
		}
		return li;	
	}
	public static int savadmin(int id,String name,Long contact,String email,String password,String repass) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?,?,?)");
		ps.setInt(1, id);
		ps.setString(2,name);
		ps.setLong(3, contact);
		ps.setString(4, email);
		ps.setString(5, password);
		ps.setString(6, repass);
		int v=ps.executeUpdate();
		return v;
		
	}
	public static boolean findadmin(String email,String password) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from admin where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			return true;
		}
		else {
		return false;
		}
		
	}

	

}
