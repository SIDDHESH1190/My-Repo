<%@page import="com.dao.GetUserIdDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="java.util.*,com.model.*,com.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Place order</title>

<style>
body {
			  margin: 0;
			  padding:0;
			  background-image: url('Admin_BG_Image.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;  
			  background-size: cover;
			  background-size: 100% 100%;
			  font-family: inherit;
			}
		body> .Box{
			 width: 750px;
			 height:500px;
			 background:#f2e0c8;
			 top: 50%;
			 left: 50%;
			 position: absolute;
			 transform: translate(-50%,-50%);
			 box-sizing:  border-box;
			border-radius: 20px;
			padding:100px;
			
			}
		body> .Box table{
			font-size:24px;
			margin-top:-80px;
		}
		
</style>
</head>
<body>
<% 
	float total=Float.parseFloat(request.getParameter("total"));
	String email=(String)session.getAttribute("email");
	int cid=GetUserIdDAO.getID(email);
	
	List<UserCartModel> l=UserCartDetailsDAO.getDetails(cid);
	
%>
<div class="Box">
<table align="center">
		<tr>
		<td>Email:</td>
		<td><input type="email" value="<%=email%>" name="email" style="border-style: none; width:200%;" readonly="readonly"></td>
		</tr>

<tr></tr>
<tr></tr>
<tr ><th align="left">Product Name</th><th align="left">Price</th><th align="left">Quantity</th></tr>
<% 
for(UserCartModel c: l) {
	AddProductModel pm=ProductStatusDAO.ProductDetails(c.getPid());
%>
		
		<tr><td><input type="text" name="pname" value="<%= pm.getPname()%>"  style="border-style: none; width:80%;"  readonly="readonly"></td>
		<td><input type="text" name="price" value="<%= pm.getPrice()%>" style="border-style: none;" readonly="readonly"></td>
		<td><input type="text" name="quantity" value="<%= c.getQuantity()%>" style="border-style: none;" readonly="readonly"></td>
		</tr>
		
<%} %>		

		<tr>
		<td>Total Amount:</td>
		<td><input type="text" value="<%=total%>" name="amt" style="border-style: none;" readonly="readonly"></td>
		</tr>
	</table>
		
		<a href="paymentProcess.jsp?total=<%=total%>"><button align="center" style="height:40px; width :200px; margin-left:170px; font-size:25px; color:teal; font-family:inherit;">PAYMENT</button></a>
		


</div>
</body>
</html>