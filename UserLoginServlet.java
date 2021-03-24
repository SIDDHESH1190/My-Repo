package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserLoginServlet extends HttpServlet {
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
			
			PreparedStatement ps=con.prepareStatement("select * from UserDetails where email=? and password=?");
			
			ps.setString(1, e);
			ps.setString(2, p);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				
				HttpSession session=request.getSession();
				session.setAttribute("name", rs.getString("uname"));
				session.setAttribute("email", rs.getString("email"));
				
				RequestDispatcher rd=request.getRequestDispatcher("UserProfile.jsp");
				rd.forward(request, response);
			}
			else
			{
				out.println("Username and Password mismatched,Please Try Again");
				RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
				rd.include(request, response);
			}
			
		}
		catch (Exception ex) {
			System.out.println(ex);
		}
		
		

	}
}


