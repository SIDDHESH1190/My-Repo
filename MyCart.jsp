<%@page import="com.dao.*"%>
<%@page import="com.model.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My cart</title>

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
<div align="center">
	<h1 align="center" style="color: activecaption; ">My Cart</h1><br><br>
	

<%
String email=(String)session.getAttribute("email");
int cid=GetUserIdDAO.getID(email);
List<UserCartModel> l=UserCartDetailsDAO.getDetails(cid);
float total=0;
for(UserCartModel c:l)
{
	AddProductModel pm=ProductStatusDAO.ProductDetails(c.getPid());
%>

	<div  align="center" style="background-color:grey; margin:2px 100px 0px 100px; color:white; padding: 30 px; text-align: center; border: solid;">
		Customer ID:<%=c.getCid() %><br>
		Product Name:<%=pm.getPname() %><br>
		Price :<%=pm.getPrice() %><br>
		Quantity:<%=c.getQuantity() %><br><br>
		
		<%total=total+(c.getQuantity()*pm.getPrice());%>
		
	</div>
<%
}

%>
<div>
	<table>
		<tr ><td style="color: activecaption; font-size:40px; ">Total</td><td style="color: activecaption; font-size:40px;"><%=total %></td></tr>
	</table>
	<a  href="PlaceOrder.jsp?total=<%=total%>"><Button style="height:40px; width:170px; font-size:25px; background-color:teal;">Place Order</Button></a>
</div>
</body>
</html>