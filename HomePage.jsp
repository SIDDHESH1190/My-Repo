<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		
		<!-- <link rel="stylesheet" type="text/css" href="HomePageStyle.css"/> -->
		<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
		
		<style>
				*{
					list-style:none;
				}
				
				body {
						
  						background-image: url('Homepage_BG_Image.jpg');
 						background-repeat: no-repeat;
  						background-attachment: fixed;  
  						background-size: cover;
  						background-size: 100% 100%;
					 }
				.header{
					  	background:#f2e0c8;
					  	width: 100%;
					  	height: 80px;
					  	border-radius: 15px;
					  
					  }	 
					 
				.header > .logo 	{
									color:#6600ff;
									font-size: 55px;
									font-weight: 600;
									font-family: "Comic Sans MS";
									margin:10px;
								}
				body > .Dashboard{
									
									margin-top: 10px;
									height: 100%;
									width: 15%;
									background:	#f2e0c8;
									border: 3px #e2bf90;
									border-radius: 15px;
									position: absolute;					
								}
				body > .Dashboard h4{
										text-align : left;
										font-family:inherit;
										
										font-size: 25px;
										font-weight: 50px;
										color :#00587A;
									}
				body > .Dashboard .DashboardContent{
													box-sizing:border-box;
													text-align:left;
													margin-top:15px;;
													
													}
				body > .Dashboard .DashboardContent a{
													
													text-decoration:none;
													display:block;
													font-family:sans-serif;
													margin-top:20px;
													font-size:20px;
													}
				.header> .SearchBar{
									margin-left:250px;
									margin-top:5px; 
									width:100%; 
									display:inline-block;
								}
				.header> .SearchBar #SearchBox{
											width: 70%;
											height:30px;
											padding-left:10px;
											border-radius: 12px;
										}
				.header> .SearchBar #SearchButton{
													width:5%;
													height:30px;
												}
				
				.slideshow-container {
									  margin-left: 255px;
									  margin-top: 55px;
									  position: relative;
									  background: #f2e0c8;
									  height: 90px;
									  border-radius:30px 30px 0 0;
									}
				.mySlides {
							  display: none;
							  padding: 5px;
							  text-align: center;
							}
				.prev, .next {
							  cursor: pointer;
							  position: absolute;
							  top: 65%;
							  height: 25px;
							  width: auto;
							  margin-top: -30px;
							  padding: 16px;
							  color: #888;
							  font-weight: bold;
							  font-size: 20px;
							  border-radius: 0 10px 10px 0;
							  user-select: none;
							}
				.next {
					  position: absolute;
					  right: 0;
					  border-radius: 10px 0 0 10px;
					}
					
				.prev:hover, .next:hover {
										  background-color: rgba(0,0,0,0.8);
										  color: white;
										}
				.dot-container {
								    margin-left: 255px;
								    text-align: center;
								    padding: 20px;
								    background: #d9c9b4;
								    height :12px;
								    border-radius:0 0 30px 30px;
								}
				.dot {
				  cursor: pointer;
				  height: 7px;
				  width: 7px;
				  margin: 0 2px;
				  background-color: #f5e9d8;
				  border-radius: 50%;
				  display: inline-block;
				  transition: background-color 0.6s ease;
				}				
			
				.CategorySection{
									margin-left: 270px;
									margin-top:10px;
									
								}
	
	</style>
		<title>Home Page</title>
</head>
	
	
	
<body>
	
		<%
			//HttpSession session1=request.getSession();
			session.setAttribute("email",null);
		%>
			<div class="header">
		<h1 class="logo">Vegimart</h1>
		<form class="SearchBar" action="SearchedProduct.jsp">
		      <input id="SearchBox" type="text" name="SearchElement" placeholder="Search here"></input>
		      <input id="SearchButton" type="submit" value="SEARCH"></input>
		</form>
	</div>
		
		<div class="SearchBar">
	    	
		</div>
		
		<div class="Dashboard">
			
			<h4><i class="fas fa-list"></i> DASHBOARD</h4>
				
	
			  	<div class="DashboardContent">
			  	
			    	<ul>
			      		<li>
			        	<a href="HomePage.jsp"><i class="fas fa-home"></i> Home</a>
			      		</li>
			      		
			      		<li>
			       		<a href="UserLogin.jsp"><i class="fas fa-sign-in-alt"></i> User Login</a>
			      		</li>
			      		
			      		<li>
			        	<a href="FarmerLogin.jsp" ><i class="fas fa-sign-in-alt"></i> Farmer login</a>
			      		</li>
			      		
					    <li>
						<a href="AdminLogin.jsp"><i class="fas fa-sign-in-alt"></i> Admin Login</a>
					    </li>
					    <li>
			       		<a href="NewUserRegistration.jsp"><i class="fas fa-sign-in-alt"></i> User Registration</a>
			      		</li>
			      		
			      		<li>
			        	<a href="NewFarmerRegistration.jsp" ><i class="fas fa-sign-in-alt"></i> Farmer Registration</a>
			      		</li>
			       
				       	<li>
				        <a href="AboutUs.jsp"><i class="fas fa-address-card"></i> About us</a>
				      	</li>
			       
			       		<li>
			        	<a href="ContactUs.jsp"><i class="far fa-id-card"></i> Contact Us</a>
			      		</li>
			    	</ul>
			    </div>
			   
		
		</div>
		
		
		
				<div class="slideshow-container">
			<div class="mySlides">
				  <q>Adopting a new healthier lifestyle can involve changing diet to include more fresh fruit and vegetables as well as increasing levels of exercise.</q>
				  <p class="author">- Linford Christie</p>
			</div>
			<div class="mySlides">
  				  <q>A diet rich in fruits and vegetables plays a role in reducing the risk of all the major causes of illness and death</q>
  				  <p class="author">- Walter Willett</p>
			</div>
			<div class="mySlides">
			  <q>The fridge had been emptied of all Dudley's favorite things- fizzy drinks and cakes, chocolate bars and burgers - and filled instead with fruit and vegetables and the sorts of things that Uncle Vernon called "rabbit food".</q>
			  <p class="author">-J. K. Rowling</p>
			</div>
			<a class="prev" onclick="plusSlides(-1)">Prev</a>
			<a class="next" onclick="plusSlides(1)">Next</a>
		</div>
		<div class="dot-container">
		  <span class="dot" onclick="currentSlide(1)"></span> 
		  <span class="dot" onclick="currentSlide(2)"></span> 
		  <span class="dot" onclick="currentSlide(3)"></span> 
		</div>
		
		<div class="CategorySection">
			<table border="1px">
				<tr style="border-radius :15px;">
					<td><a href="FruitsSection.jsp"> <img src="fruits.jpg" alt="Fruits"><a></td>
					<td><a href="VegetablesSection.jsp"> <img src="vegetables.jpg" alt="Vegetables"> <a></td>
				<tr>
		
			<table>
		</div>
		
			
	<script>
		var slideIndex = 1;
		showSlides(slideIndex);
		
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
		
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
		
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  if (n > slides.length) {slideIndex = 1}    
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";  
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		}
	</script>
	</body>
</html>