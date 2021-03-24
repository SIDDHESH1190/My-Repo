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
			  font-family:inherit;
			}
		body> .Box{
			 width: 500px;
			 height:400px;
			 background:#f2e0c8;
			 top: 50%;
			 display:table;
			 left: 50%;
			 position: absolute;
			 transform: translate(-50%,-50%);
			 box-sizing:  border-box;
			border-radius: 10px;
			padding:10px;
			
			}
		body> .Box table{
			font-size:24px;
			margin-top:-80px;
			
		}
		body> .Box .abc{
			color:#8675A9;
		}
		body .Box input[type="submit"],input[type="reset"]	
						{
						margin:0;
						width:40%;
						padding:0px;
						height:40px;
						color: #6600ff;
						font-size:18px;
						border-radius:10px;
						text-align: "center";
						}
</style>

</head>
<body>
	<div class="Box">
	<form action="AddFilterServlet" method="post">
		<table >
			<tr height="100px"><td class="abc">Select Category:</td>
				<td><input type="radio" name="category" value="fruits">FRUITS</td><br>
				<td><input type="radio" name="category" value="vegetables">VEGETABLES</td>
			</tr>
			
			<tr><td class="abc">Select Price Range:</td>
				<td><input type="radio" name="price" value="0">0-100</td><br>
				<td><input type="radio" name="price" value="100">101-200</td><br><tr>
			<tr><td></td><td><input type="radio" name="price" value="200">201-300</td>	<br>
				<td><input type="radio" name="price" value="300">More than 300</td>	<br>
			</tr>	
			</table><br><br>
			
				<input type="submit" value="CONFIRM" style="margin-left: 35px;">
				<input type="reset" value="CANCEL">
	</form>
	</div>

</body>
</html>