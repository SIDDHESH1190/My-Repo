<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int id=Integer.parseInt(request.getParameter("id"));
String email=request.getParameter("email");
int status=DeleteProductDAO.DeleteProduct(id);

%>
	<jsp:forward page="ProductStatus.jsp">
		<jsp:param value="<%=email %>" name="email"/>
	</jsp:forward>	
</body>
</html>