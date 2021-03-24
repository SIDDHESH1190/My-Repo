<%@page import="com.model.*"%>
<%@page import="com.dao.*"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>

<style>
body {
			  margin: 0;
			  padding:0;
			  background-image: url('Admin_BG_Image.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;  
			  background-size: cover;
			  background-size: 100% 100%;
			  font-family:inherit;
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
			margin-top:0px;
		}
		body .Box input[type="submit"],input[type="reset"]	
						{
						margin-top:20px;
						width:40%;
						padding:0px;
						height:40px;
						color: #6600ff;
						font-size:18px;
						border-radius:10px;
						text-align: "center";
						margin-left:25px;
						}
</style>
</head>
<body>
<div class="Box">
	<form action="ForgotPassword.jsp">
		<table>
			<tr><td>Enter your email id:<td><td><input type="text" name="emailid"></td></tr>
			
		</table>
		<input type="submit" value="PROCEED">
				<input type="reset" value="CANCEL">
			
	</form>
	
	
<%
	if(request.getParameter("emailid")!=null && request.getParameter("answer")==null)
	{
		String e=request.getParameter("emailid");

		
		NewUserRegistrationModel u=SearchUserDAO.SearchUser(e);
%>
		<div align="left">
			<form action="ForgotPassword.jsp">
			<br>
			Security Question:<%=u.getQuestion() %><br>
			<input type="hidden" name="emailid" value=<%=e%>><br>
			Enter your answer:<input type="text" name="answer" required><br>
				<input type="submit" value="PROCEED">
				<input type="reset" value="CANCEL">
			</form>
			</div>
			
			<%
			
	}
	else if(request.getParameter("answer")!=null)
	{
			String e=request.getParameter("emailid");
			int status=SearchUserDAO.CheckAnswer(request.getParameter("answer"),e);
			
			if(true)
			{			
			%>
				<div>
					<form action="UpdatePasswordServlet" method="post">
						<input type="hidden" name="emailid" value=<%=e%>><br>
						Enter New Password:<input type="password" name="password"><br>
						<input type="submit" value="CONFIRM">
						<input type="reset" value="CANCEL">
					</form>
				</div>
			<%
			}
			else
			{
				out.println("incorrect");
			}
	}
	
		%>
</div>
</body>
</html>