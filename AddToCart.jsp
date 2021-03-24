<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.dao.*,com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add to Cart</title>

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
			 width: 500px;
			 height:200px;
			 background:#f2e0c8;
			 color:#6600ff;
			 top: 50%;
			 left: 50%;
			 position: absolute;
			 transform: translate(-50%,-50%);
			 box-sizing:  border-box;
			border-radius: 20px;
			padding:10px;
			font-size:18px; 
			
			}
		
		body .Box input[type="submit"],input[type="reset"]	
						{
						margin-left:30px;
						margin-top:20px;
						width:40%;
						padding:0px;
						height:40px;
						color: #6600ff;
						font-size:15px;
						border-radius:10px;
						text-align: "center";
						}
				.Box  input[type="number"]
						{
						margin-bottom:20px;
						border-bottom: 1px solid #6600ff;
						background: #fff;
						height: 25px;
						color:#6600ff;
						font-size: 16px;
						}
</style>
</head>
<body>
<%
		
		String email=(String)session.getAttribute("email");
		int pid=Integer.parseInt(request.getParameter("pid"));
		int cid=GetUserIdDAO.getID(email);
		AddProductModel pm=ProductStatusDAO.ProductDetails(pid);
		
		if(email!=null)
		{
	
%>
		<div class="Box">
		<form action="AddToCart.jsp">
			Enter Quantity:
			<input type="hidden" name="email" value=<%=email%>>
			<input type="hidden" name="pid" value=<%=pid%>>
			<input type="number" name="quantity" required><br>
			<input type="submit" value="PROCEED">
			<input type="reset" value="CANCEL">
		</form>
	</div>
<% 
	if(request.getParameter("quantity")!=null)
	{
		String quantity=request.getParameter("quantity");
		int status=ProductStatusDAO.CheckAvailability(quantity,pid);
	
		
		if(status==1)
		{
		
			int status1=AddProductToCartDAO.addToCart(pid, cid,quantity);
			if(status1==1)
			{
%>
<jsp:forward page="UserProfile.jsp">
	<jsp:param value="<%=email%>" name="email"/>
</jsp:forward>
<%
			}
		}
		else
		{
			out.println("Stock Unavailable");
		}
	}
		}
		else
		{
			%>
			<jsp:forward page="UserLogin.jsp">
			<jsp:param value="<%=email%>" name="email"/>
			</jsp:forward>
			<% 
		}
		


%>
</body>
</html>