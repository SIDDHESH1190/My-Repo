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
			}
		body> .Box{
			 width: 450px;
			 height:400px;
			 background:#f2e0c8;
			 color:#6600ff;
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
			margin-top:20px;
		}
		body .Box input[type="submit"],input[type="reset"]	
						{
						
						margin-top:20px;
						width:40%;
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
	<div class="Box">
	
	<form action="AddProductServlet" method="post">
		<table>
			<tr>
				<td>Product Category</td>
				<td><select name="category">
					<option value="fruits">Fruits</option> 
					<option value="vegetables">Vegetables</option>
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
		<tr>
			<td>Product Price</td>
			<td><input type="text" name="price" required>
			
			
		</tr>
		<tr>
			<td>Stock Available</td>
			<td><input type="text" name="stock" required>
			
		</tr>
		<tr>
		<td>Select Unit</td>
		<td> 
			<select name="unit"> 
				<option value="items">Dozens</option>
				<option value="kg">Kg</option>
  
			</select>
		</td>
		</tr>
		<tr>
			<td>Date of upload</td>
			<td><input type="date" name="date" required>
			
		</tr>
		<tr><td></td></tr>
		</table>
		
		
			<input type="submit" value="ADD PRODUCT" style="margin-left: 35px;">
			<input type="reset" value="Cancel">
		
	
</form>
	
	</div>

</body>
</html>