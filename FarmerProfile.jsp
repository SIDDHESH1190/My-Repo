<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Farmer Profile</title>
<style>
body {
			  margin: 0;
			  padding:0;
			  background-image: url('Farmer_Bg_Image.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;  
			  background-size: cover;
			  background-size: 100% 100%;
			  
			}
		body> .Box{
			 width: 340px;
			 height:400px;
			 font-family:inherit;
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
													color:#625261;
													display:block;
													font-family:inherit;
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
		<h4>Welcome!! </h4>
			<div class="BoxContent">
				 	<ul>
			      		<li>
			        	<a href="AddProduct.jsp?email=<%=session.getAttribute("email")%>">Add product</a>
			      		</li>
			      		
			      		<li>
				        <a href="ProductStatus.jsp?email=<%=session.getAttribute("email")%>">Status</a>
				      	</li>
				      	
			    	</ul>
	
	
			</div>
			</div>
</body>
</html>