<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			  font-family: inherit;
			}
		body> .Box{
			 width: 600px;
			 height:200px;
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
<div class="Box">
<%
float total=Float.parseFloat(request.getParameter("total"));
%>
<table>
		<td>Total Amount:</td>
		<td><input type="text" value="<%=total%>" name="amount" style="border-style: none;margin-left:-25px" readonly="readonly" ></td>
		</tr>
	<tr><td>Pay On delivery(Cash/Card/UPI)</td>
		<td><a href="PayOnDelivery.jsp?total=<%=total%>"><button  align="center" style="width :130px; margin-left:20px; font-family:monospace;">SELECT</button></a></td>
	</tr>
	
		
</table>

</div>
</body>
</html>