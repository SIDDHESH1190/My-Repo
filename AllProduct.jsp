<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*,com.model.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Products</title>
</head>
<body style="background:url('ProductListBG.jpg');">
	

	<div class="FilterButton" align="center">
	
		<a href="AddFilter.jsp"><button>ADD FILTER</button></a><br>
	
	</div>
<%
	String email=(String)session.getAttribute("email");
	List<AddProductModel> l=null;
	if(session.getAttribute("ProductList") == null)
	{
		 l=ProductStatusDAO.showProducts();
	}
	else
	{
		 l=(List)session.getAttribute("ProductList");
	}
	
		for(AddProductModel p:l)
		{
%>

		<div align="center" style="border: solid; margin-top:2px; margin-left:100px; margin-right:100px; background-color:grey; color:white;">
			Product Category:<%=p.getCategory() %><br>
			Product Name:<%=p.getPname() %><br>
			Product Price:<%=p.getPrice() %><br>
			Stock_Availability:<%=p.getStock() %><br>
			Unit:<%=p.getUnit() %><br>
			<a href="AddToCart.jsp?pid=<%=p.getId()%>"><button>ADD TO CART</button></a>
		</div>
			
<%
		}
		
		session.setAttribute("ProductList", null);
%>
</body>
</html>