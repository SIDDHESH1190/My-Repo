
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.model.*,com.dao.*,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
				
				body {
  						background-image: url('ProductListBG.jpg');
 						background-repeat: no-repeat;
  						background-attachment: fixed;  
  						background-size: cover;
  						background-size: 100% 100%;
					 }
</style>
</head>
<body>
<%
	String email=(String)session.getAttribute("email");
	List<AddProductModel> l=SearchProductDAO.SearchProduct(request.getParameter("SearchElement"));
		
		for(AddProductModel p:l)
		{
%>

		<div align="center" style="border: solid; margin-top:1px; margin-left:80px; margin-right:80px; background-color:grey; color:white;">
			Product Category:<%=p.getCategory() %><br>
			Product Name:<%=p.getPname() %><br>
			Product Price:<%=p.getPrice() %><br>
			Stock Availability:<%=p.getStock() %><br>
			Unit:<%=p.getUnit() %><br>
			Date:<%=p.getDate() %><br>
			
			<a href="AddToCart.jsp?pid=<%=p.getId()%>"><button>ADD TO CART</button></a>
		</div>
			
<%
		}
%>
</body>
</html>