package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.NewUserRegistrationDAO;
import com.model.NewUserRegistrationModel;

public class UpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		NewUserRegistrationModel urm=new NewUserRegistrationModel();
	
		urm.setPassword(request.getParameter("password"));
		urm.setEmail(request.getParameter("emailid"));
		
		int status=0;
		status=NewUserRegistrationDAO.UpdatePassword(urm);
		
		if(status==1)
		{
			out.println("Password reseted successfully");
			RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
			rd.include(request, response);
		}
		else
		{
			out.println("Something went wrong!!!please try again");
			RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
			rd.include(request, response);
		}
		
		
	}

}
