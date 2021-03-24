<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
		.loginbox{
			 width: 340px;
			 height:480px;
			 background:#f2e0c8;
			 color:#6600ff;
			 top: 50%;
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
				top:-50px;
				left:120px;
				}
		h1{
			font-family: monospace;
			margin-top :50px;
			pading:0 0 20px;
			text-align: center;
			font-sizing:22px;
			}			
		.loginbox p{font-weight:bold;}
		.loginbox input[type="email"], input[type="password"]
						{
						width:100%;
						margin-bottom:20px;
						border-right: none;
						border-left: none;
						border-top: none;
						border-bottom: 1px solid #6600ff;
						background:#f2e0c8;
						height: 40px;
						font-size: 16px;
						}
		
		.loginbox input[type="submit"],input[type="reset"]	
						{
						margin-top:2px;
						margin-left:30px;
						width:80%;
						padding:0;
						height:40px;
						background: #fff;
						color: #6600ff;
						font-size:18px;
						border-radius:10px;
						}
		.loginbox .links{
			
			margin-top:20px;
			
		}		
		.loginbox .links a{
			text-decoration:none;
			
			margin-left:100px;
			
		}						
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="UserLoginForm.css">
<title>User Login Form</title>
</head>
<body>

	<div class="loginbox">
	<img src="login avatar.png" alt="Avatar" class="avatar">
	<h1>User Login</h1>
		<form action="UserLoginServlet" method="post">
			
			<input type="email" placeholder="Email ID" name="emailid" required></input>
			<input type="password" placeholder="Password" name="password" required></input>
			
			<input type="submit" value="LOGIN">
			<input type="reset" value="CANCEL">
			
		</form>
		<div class="links">
		<a href="ForgotPassword.jsp" >forgot password?</a><br>
			<a href="NewUserRegistration.jsp">new registration</a><br>
			</div>
	</div>
</body>
</html>