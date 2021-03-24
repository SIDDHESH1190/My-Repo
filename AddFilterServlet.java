package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.*;
import com.model.AddProductModel;


public class AddFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String category=request.getParameter("category");
		float price=Float.parseFloat(request.getParameter("price"));
		
		List<AddProductModel> l=ProductStatusDAO.AddProductFilter(category,price);
		
		if(l!=null)
		{
			out.println("Filter added");
			HttpSession session=request.getSession();
			
			session.setAttribute("ProductList",l);
			
			RequestDispatcher rd=request.getRequestDispatcher("AllProduct.jsp");
			rd.include(request, response);
		}
		else
		{
			out.println("Filter can't added");
			
			RequestDispatcher rd=request.getRequestDispatcher("AllProduct.jsp");
			rd.include(request, response);
		}
		
	}


}
