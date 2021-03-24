<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*,com.model.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vegetable Section</title>
</head>
<body>
<%
	List<AddProductModel> l=ProductStatusDAO.ShowProductsOfVegetablesSection("vegetables");
		
		for(AddProductModel p:l)
		{
%>

		<div  align="center" style="border: solid; margin-top:2px; margin-left:80px; margin-right:80px; background-color:#51ADCF; color:white;">
			Product Category:<%=p.getCategory() %><br>
			Product Name:<%=p.getPname() %><br>
			Product Price:<%=p.getPrice() %><br>
			Stock_Availability:<%=p.getStock() %><br>
			Unit:<%=p.getUnit() %><br>
			Date:<%=p.getDate() %><br>
		
			<a href="AddToCart.jsp?pid=<%=p.getId()%>"><button>ADD TO CART</button></a>
		</div>
			
<%
		}
%>
</body>
</html>