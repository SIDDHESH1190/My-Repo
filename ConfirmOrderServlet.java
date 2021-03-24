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
import com.model.*;
public class ConfirmOrderServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String mode=request.getParameter("mode");
		
		HttpSession session=request.getSession(false);
		String email=(String)session.getAttribute("email");
		
		int cid=GetUserIdDAO.getID(email);
		NewUserRegistrationModel urm=GetUserDetailsDAO.GetUserDetails(cid);
	
		List<UserCartModel> l=UserCartDetailsDAO.getDetails(cid);
		
		for(UserCartModel u:l)
		{
			AddProductModel p=ProductStatusDAO.ProductDetails(u.getPid());
			int quantity=p.getStock()-u.getQuantity();
			ProductStatusDAO.UpdateProduct(quantity,u.getPid());
		}
		
		ConfirmOrderModel om=new ConfirmOrderModel();
			om.setAdd(urm.getAddress());
			om.setPaymentMode(mode);
			om.setTotalAmount(Float.parseFloat(request.getParameter("amount")));
			om.setCid(cid);
			
			int status1=ConfirmOrderDAO.placeOrder(om);
			
			if(status1==1)
			{
				out.println("Ordered placed");
			}
			
			
			int status2=FlushUserCartDAO.FlushCart(cid);
			
			if(status2==2)
			{
				out.println("Cart Flushed");
			}
			
			/*HttpSession session=request.getSession(false);
			session.setAttribute("name", rs.getString("uname"));
			session.setAttribute("email", rs.getString("email"));*/
			
			RequestDispatcher rd=request.getRequestDispatcher("UserProfile.jsp");
			rd.forward(request, response);
		
			
}
}
