package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.NewFarmerRegistrationDAO;
import com.model.NewFarmerRegistrationModel;

public class UpdateFarmerPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		NewFarmerRegistrationModel frm=new NewFarmerRegistrationModel();
		frm.setEmail(request.getParameter("emailid"));
		frm.setPassword(request.getParameter("password"));
		
		
		int status=0;
		status=NewFarmerRegistrationDAO.UpdatePassword(frm);
		
		if(status==1)
		{
			out.println("Password reseted successfully");
			RequestDispatcher rd=request.getRequestDispatcher("FarmerLogin.jsp");
			rd.include(request, response);
		}
		else
		{
			out.println("Something went wrong!!!please try again");
			RequestDispatcher rd=request.getRequestDispatcher("FarmerLogin.jsp");
			rd.include(request, response);
		}
		
		
	}

}
