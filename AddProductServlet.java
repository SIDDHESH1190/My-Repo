package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AddProductDAO;
import com.model.AddProductModel;

public class AddProductServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String category=request.getParameter("category");
		String pn=request.getParameter("name");
		float price=Float.parseFloat(request.getParameter("price"));
		int stock=Integer.parseInt(request.getParameter("stock"));
		String unit=request.getParameter("unit");
		String date=request.getParameter("date");
		//String img=request.getParameter("date");
		
		
		HttpSession session=request.getSession(false);
		String e=(String) session.getAttribute("email");
		
		
		//model 
		
		AddProductModel pm=new AddProductModel();
		pm.setCategory(category);
		pm.setPname(pn);
		pm.setPrice(price);
		pm.setStock(stock);
		pm.setUnit(unit);
		pm.setDate(date);
		pm.setEmail(e);
		
		// DAO
		
		int status=AddProductDAO.AddProductDetails(pm);
		
		//next view 
		if(status==1)
		{
			out.println("Product Added Successfully!!!!");
			
			RequestDispatcher rd=request.getRequestDispatcher("FarmerProfile.jsp");
			rd.include(request, response);
		}
		else
		{
			out.println("Please Try Again!!!");
			
			RequestDispatcher rd=request.getRequestDispatcher("AddProduct.jsp");
			rd.include(request, response);
		}
		
	}
	}

