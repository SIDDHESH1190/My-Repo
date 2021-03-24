package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class FarmerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String e=request.getParameter("emailid");
		String p=request.getParameter("password");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			
			PreparedStatement ps=con.prepareStatement("select * from FarmerDetails where email=? and password=?");
			
			ps.setString(1, e);
			ps.setString(2, p);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				
				HttpSession session=request.getSession();
				session.setAttribute("email",e);
				
				RequestDispatcher rd=request.getRequestDispatcher("FarmerProfile.jsp");
				rd.forward(request, response);
			}
			else
			{
				out.println("sorry username or password Error!!!!<br>Please Try Again");
				RequestDispatcher rd=request.getRequestDispatcher("FarmerLogin.jsp");
				rd.include(request, response);
			}
			
		}
		catch (Exception ex) {
			System.out.println(ex);
		}
		
		

	}

}
