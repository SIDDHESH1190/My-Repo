<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.*,com.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
			  margin: 0;
			  padding:0;
			  background-image: url('Admin_BG_Image.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;  
			  background-size: cover;
			  background-size: 100% 100%;
			  font-family:monospace;
			}
		body> .Box{
			 width: 720px;
			 height:200px;
			 background:#f2e0c8;
			 color:teal;
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
		body .Box input[type="submit"]	
						{
						margin-left: 200px;
						margin:0;
						width:40%;
						padding:0px;
						height:40px;
						font-size:18px;
						border-radius:10px;
						text-align: "center";
						}
		
</style>
</head>
<body>
<div class="Box">
<% 
	float total=Float.parseFloat(request.getParameter("total"));
	String email=(String)session.getAttribute("email");
	int cid=GetUserIdDAO.getID(email);
	
	List<UserCartModel> l=UserCartDetailsDAO.getDetails(cid);
	
%>
<form action="ConfirmOrderServlet" method="post">
	<input type="hidden" value="Pay On Delivery" name="mode"> 
	<table>
	<tr>
		<td>Email</td>
		<td><input type="email" value="<%=email%>" name="email" style="border-style: none; width:200%;" readonly="readonly"></td>
		</tr>
		
<%
for(UserCartModel c: l) {
	AddProductModel pm=ProductStatusDAO.ProductDetails(c.getPid());
%>
		<tr><td><input type="text" name="pname" value="<%= pm.getPname()%>"  style="border-style: none;" readonly="readonly"></td>
		<td><input type="text" name="price" value="<%= pm.getPrice()%>" style="border-style: none;" readonly="readonly"></td>
		<td><input type="text" name="quantity" value="<%= c.getQuantity()%>" style="border-style: none;" readonly="readonly"></td>
		</tr>
		
<%} %>
<tr>
	<td>Total:</td><td><input type="text" name="amount" value="<%= total%>" style="border-style: none;" readonly="readonly"></td>
	</tr>
	</table>
	<input type="submit" value="CONFIRM" style="margin-left:150px;">

</form>
</div>
</body>
</html>