<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.model.*,com.dao.*,java.util.*"%>
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
			}
</style>			
</head>
<body>
<%
		String e=request.getParameter("email");
		List<AddProductModel> l=ProductStatusDAO.showStatus(e);
		
		for(AddProductModel p:l)
		{
%>

		<div align="center" style="border: solid; margin-top:1px; margin-left:80px; margin-right:80px; background-color:#8675A9; color:white;">
			Product Category:<%=p.getCategory() %><br>
			Product Name:<%=p.getPname() %><br>
			Product Price:<%=p.getPrice() %><br>
			Stock_Availability:<%=p.getStock() %><br>
			Unit:<%=p.getUnit() %><br>
			Date:<%=p.getDate() %><br>
			ID:<%=p.getId() %><br>
			<a href="DeleteProduct.jsp?id=<%=p.getId() %>&email=<%=e%>" ><button>DELETE</button></a>
			<a href="EditProduct.jsp?pid=<%=p.getId()%>&email=<%=e%>"><button>EDIT</button></a>
		</div>
			
<% 			
}%>

</body>
</html>