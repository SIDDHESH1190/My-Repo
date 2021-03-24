<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*,com.model.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Orders</title>

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
	
		List<OrderModel> l=ViewOrderDAO.ViewOrders();
		for(OrderModel m:l)
		{
	%>
	
		<div align="center" style="border: solid; margin-top:1px; margin-left:30px; margin-right:30px; background-color:#51ADCF; color:white;">
			Customer ID:<%=m.getCid() %><br>
			Payment Mode:<%=m.getMode() %><br>
			Total Amount:<%=m.getTotalamount() %><br>
			Address:<%=m.getAddress() %><br>
			
		</div>
		
		<%
		}
		%>

</body>
</html>