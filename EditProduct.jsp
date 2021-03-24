<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.dao.*,com.model.*"%>
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
		body> .Box{
			 width: 450px;
			 height:400px;
			 background:#f2e0c8;
			 font-family:inherit;
			 top: 50%;
			 left: 50%;
			 position: absolute;
			 transform: translate(-50%,-50%);
			 box-sizing:  border-box;
			border-radius: 20px;
			padding:10px;
			
			}
		body> .Box table{
			font-size:24px;
			margin-top:0px;
		}
		body .Box input[type="submit"],input[type="reset"]	
						{
						margin-top:20px;
						margin-left:55px;
						width:80%;
						padding:0px;
						height:40px;
						color: #000;
						font-size:18px;
						border-radius:10px;
						text-align: "center";
						}
</style>

</head>
<body>
<%
	int id=Integer.parseInt(request.getParameter("pid"));
	String email=request.getParameter("email");
	
	AddProductModel p=SearchProductDAO.SearchProduct(id);
%>
<div class="Box">
<form action="EditProductServlet" method="post">
<table >
<tr height="50px">
		<td><input type="hidden" value="<%=p.getId() %>" name="pid"></td>
</tr> 
<tr>
				<td>Product Category</td>
				<td><select name="category">
					<option value="fruits">fruits</option> 
					<option value="vegetables">vegetables</option>
					</select>
				</td>
			</tr>
<tr>
			<td>Product Name</td>
			<td><select name="name">
				<option value="Potatoes">Potatoes</option>
			 	<option value="Onion">Onion</option>
			  	<option value="Garlic">Garlic</option>
			 	<option value="Carrot">Carrot</option>
			  	<option value="Tomato">Tomato</option>
			  	<option value="Methi">Methi</option>
			  	<option value="Cauliflower">Cauliflower</option>
			  	<option value="Green chilli">Green chilli</option>
			  	<option value="Bhindi">Bhindi</option>
			  	<option value="Brinjal">Brinjal</option>
			  	<option value="Apple">Apple</option>
			  	<option value="Orange">Orange</option>
			  	<option value="Banana">Banana</option>
			  	<option value="Kiwi">Kiwi</option>
					
			</select></td>
		</tr>
<tr><td>Price:</td>
		<td><input type="text" value="<%=p.getPrice() %>" name="price"></td>
</tr> 
<tr><td>Stock:</td>
		<td><input type="text" value="<%=p.getStock() %>" name="stock"></td>
</tr>
<tr><td>Unit</td>
		<td>
		<select name="unit"> 
				<option value="items">Dozens</option>
				<option value="kg">Kg</option>
  
			</select>
			</td>
</tr>
<tr><td>Date</td>
		<td><input type="date" value="<%=p.getDate() %>" name="date"></td>
</tr>

<tr><td><input type="submit" value="UPDATE"></td>
		<td><input type="reset" value="CANCEL" ></td>
</tr> 


</table>
</form>
</div>

</body>
</html>