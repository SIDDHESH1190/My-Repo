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


public class NewFarmerRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		NewFarmerRegistrationModel frm=new NewFarmerRegistrationModel();
		
		frm.setName(request.getParameter("name"));
		frm.setEmail(request.getParameter("email"));
		frm.setPno(request.getParameter("pno"));
		frm.setAddress(request.getParameter("address"));
		frm.setPincode(request.getParameter("pincode"));
		frm.setPassword(request.getParameter("password"));
		frm.setQuestion(request.getParameter("question"));
		frm.setAnswer(request.getParameter("answer"));
		frm.setDob(request.getParameter("dob"));
		
		int status=0;
		
		status=NewFarmerRegistrationDAO.NewFarmerDetails(frm);
		
		if(status==1)
		{
			out.println("Your Registration has been successfully done");
			RequestDispatcher rd=request.getRequestDispatcher("FarmerLogin.jsp");
			rd.include(request, response);
		}
		else
		{
			out.println("Something went wrong!!!Register again");
			RequestDispatcher rd=request.getRequestDispatcher("NewFarmerRegistration.jsp");
			rd.include(request, response);
		}
		
		
	}

}
