<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  background-image: url('AboutUs_BG_Image.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  background-size: 100% 100%;
}

html {
  box-sizing: border-box;
  
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
 
  color:#8A0808;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}



@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>
<div class="about-section">
  <h1 style="color:Red;font-family: Comic Sans MS;">About Us</h1>	
  <h1 style="color:green;font-family: Comic Sans MS;">Welcome To VegiMart</h1>
  <p style="font-family: Comic Sans MS;">Want to have fresh vegitables and fruits at the most affordable price????</p>
  <p>You have come to the right place!!!</p>
  <p>We aim at bringing the farmers and the customers together on a single platform where both can meet their needs with the best deals.</p>
</div>

<h2 style="text-align:center ">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <div class="container">
        <h2 style="font-family: Comic Sans MS;">Onkar Wanve</h2>
        <p style="font-family: Comic Sans MS;">onkarwanve23@gmail.com</p>
      
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
     
      <div class="container" >
        <h2 style="font-family: Comic Sans MS;">Yash Hanbar</h2>
       
        <p style="font-family: Comic Sans MS;">yashhanabar@gmail.com</p>
       
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
     
      <div class="container">
        <h2 style="font-family: Comic Sans MS;">Siddhesh Wable</h2>
        <p style="font-family: Comic Sans MS;">siddheshwable.ssw@gmail.com</p>
        
        
      </div>
    </div>
  </div>
</div>

</body>
</html>