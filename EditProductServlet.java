package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.*;
import com.model.*;

public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String category=request.getParameter("category");
		String pn=request.getParameter("pname");
		float price=Float.parseFloat(request.getParameter("price"));
		int stock=Integer.parseInt(request.getParameter("stock"));
		String unit=request.getParameter("unit");
		String date=request.getParameter("date");
		int id=Integer.parseInt(request.getParameter("pid"));
		
		//model 
		
		AddProductModel p=new AddProductModel();
		p.setCategory(category);
		p.setPname(pn);
		p.setPrice(price);
		p.setStock(stock);
		p.setUnit(unit);
		p.setDate(date);
		
		// DAO
		
		int status=EditProductDAO.EditProductDetails(p,id);
		
		//next view 
		if(status==1)
		{
			out.println("Product Edited Successfully!!!!");
			
			RequestDispatcher rd=request.getRequestDispatcher("ProductStatus.jsp");
			rd.include(request, response);
		}
		else
		{
			out.println("Please Try Again!!!");
			
			RequestDispatcher rd=request.getRequestDispatcher("EditProduct.jsp");
			rd.include(request, response);
		}
		
	}

}
