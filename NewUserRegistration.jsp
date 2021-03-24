<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>User Registration Form</title>
<style>
		body {
			  margin: 0;
			  padding:0;
			  background-image: url('User_BG_Image.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;  
			  background-size: cover;
			  background-size: 100% 100%;
			}
		.registerbox{
			font-family: inherit;
			 width: 680px;
			 height:520px;
			 background:#f2e0c8;
			 top: 55%;
			 left: 50%;
			 position: absolute;
			 transform: translate(-50%,-50%);
			 box-sizing:  border-box;
			border-radius: 20px;
			padding: 10px;			
			}
		.avatar{
				width:100px;
				height:100px;
				border-radius: 50%;
				position : absolute;
				top:-100px;
				left:290px;
				}
				
		
		.registerbox input[type="email"], input[type="password"],input[type="date"],input[type="text"]
						{
						width:100%;
						margin-bottom:5px;
						border-bottom: 1px solid #6600ff;
						background: #fff;
						height: 25px;
						color:#000000;
						font-size: 16px;
						}
		.registerbox input[type="submit"],input[type="reset"]	
						{
						align:center;
						margin-top:20px;
						margin-left:120px;
						width:50%;
						padding:0;
						height:40px;
						background: #fff;
						font-size:18px;
						border-radius:10px;
						}	
		.registerbox a{text-align:center;}						
</style>
</head>
<body>
<div class="registerbox">
	<img src="login avatar.png" alt="Avatar" class="avatar">
	<h2 align="center">User Registration Form</h2>
		<form action="NewUserRegistrationServlet" method="post">
			<table>
				<tr><td>FULL NAME:</td><td><input type="text" name="uname" required></input></td></tr>
				<tr><td>EMAIL ID:</td><td><input type="email" name="email" required></input></td></tr>
				<tr><td>PHONE NUMBER:</td><td><input type="text" name="pno" required></input></td></tr>
				<tr><td>ADDRESS:</td><td><textarea rows="4" cols="20" name="address" required></textarea></td></tr>
				<tr><td>PIN-CODE:</td><td><input type="text" name="pincode" required></input></td></tr>
				<tr><td>Date of Birth:</td><td><input type="date" name="dob" required></input></td></tr>
				<tr><td>PASSWORD:</td><td><input type="password" name="password" required></input></td></tr>
				<tr><td>SELECT SECURITY QUESTION:</td><td><select name="question" required>
																<option>What was your first telephone number?</option>
																<option>What is your pet name?</option>
																<option>Which is the first movie you saw in theatre </option>
																<option>What is your vehicle name</option>
															</select></td><td><input type="text" name="answer" placeholder="Enter Answer" required></input><td></tr>
															
				
				<tr><td><input type="submit" value="REGISTER"></td>
				<td><input type="reset" value="CANCEL"></td></tr>

			</table>
		</form>
		
	</div>
</body>
</html>
				
		