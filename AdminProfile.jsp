<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Profile</title>
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
			 font-family:inherit;
			 width: 340px;
			 height:400px;
			 background:#f2e0c8;
			 top: 50%;
			 left: 50%;
			 position: absolute;
			 transform: translate(-50%,-50%);
			 box-sizing:  border-box;
			border-radius: 20px;
			padding: 10px;			
			}
				body > .Box .BoxContent{
													margin-top: 15px;;
													margin-left: 5px;
													}
				body > .Box .BoxContent a{
													text-decoration:none;
													display:block;
																										margin-top:20px;
													font-size:20px;
													text-align: "center";
													}
				body > .Box h4{
										text-align : center;
										font-family: "Comic Sans MS";
										font-size: 25px;
										font-weight: 250px;
										color :#6600ff;
									}
</style>

</head>
<body>
		<div class="Box">
		<h4>Hello <%=session.getAttribute("name")%></h4>
			<div class="BoxContent">
				 	<ul>
			      		<li>
			        	<a href="ViewProducts.jsp">View Products</a>
			      		</li>
			      		
			      		<li>
				        <a href="ViewOrders.jsp">View Orders</a>
				      	</li>
				      	
			      		<li>
				        <a href="HomePage.jsp">Log Out</a>
				      	</li>				      	
				      	
			    	</ul>
	
	
			</div>
</body>
</html>