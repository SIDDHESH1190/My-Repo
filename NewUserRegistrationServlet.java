package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import com.dao.NewUserRegistrationDAO;
import com.model.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class NewUserRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		NewUserRegistrationModel urm=new NewUserRegistrationModel();
		
		urm.setUname(request.getParameter("uname"));
		urm.setEmail(request.getParameter("email"));
		urm.setPno(request.getParameter("pno"));
		urm.setAddress(request.getParameter("address"));
		urm.setPincode(request.getParameter("pincode"));
		urm.setPassword(request.getParameter("password"));
		urm.setQuestion(request.getParameter("question"));
		urm.setAnswer(request.getParameter("answer"));
		urm.setDob(request.getParameter("dob"));
		
		int status=0;
		status=NewUserRegistrationDAO.NewUserDetails(urm);
		
		if(status==1)
		{
			out.println("Your Registration has been successfully done");
			RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
			rd.include(request, response);
		}
		else
		{
			out.println("Something went wrong!!!Register again");
			RequestDispatcher rd=request.getRequestDispatcher("NewUserRegistration.jsp");
			rd.include(request, response);
		}
		
		
	}

}
