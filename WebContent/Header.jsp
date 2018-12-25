<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Header Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<title>home</title>
	<link rel="stylesheet" type="text/css" href="style.css">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	
	<style>
		#footer{
		background-color:#2f2f2f;
		color:#fff;
		}
	</style>
	
</head>
<body>
	<div class="container-fluid">
		<div class="jumbotron" >
     	<div style="padding-left:70px">
    		<img alt="Logo" src="Image\GroceryHub.png" style="width:250px;height:100px"></img>
   			<p style="margin-left : 150px">A Collection Of Grocery Near You...</p>	
   		</div>
   		     	
		    <ul class="nav nav-pills  pull-right" >
		    	<li class="active"><a href="#">Home</a></li>
		        <li><a href="#">About</a></li>
		        <li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">User</a>
					<ul class="dropdown-menu pull-right" >
						<li><a href="Admin_login.jsp">Admin</a></li>
						<li><a href="Seller_login.jsp">Seller</a></li>
					</ul>			
				</li>
		     </ul>
	       </div>
	   </div>
	       
	  
   		<div id="demo" class="carousel slide" data-ride="carousel">
		  <ul class="carousel-indicators">
		    <li data-target="#demo" data-slide-to="0" class="active"></li>
		    <li data-target="#demo" data-slide-to="1"></li>
		    <li data-target="#demo" data-slide-to="2"></li>
		  </ul>
  
  			<!-- The slideshow -->
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="Image\1.jpg" alt="Los Angeles" style="width:100%;height:300px">
			    </div>
			    <div class="carousel-item">
			      <img src="Image\2.jpg" alt="Chicago" style="width:100%;height:300px">
			    </div>
			    <div class="carousel-item">
			      <img src="Image\3.jpg" alt="New York" style="width:100%;height:300px">
			    </div>
			  </div>
			  
			  <!-- Left and right controls -->
			  <a class="carousel-control-prev" href="#demo" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#demo" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
			</div>
			
			<div class="row" style="ma"></div>
			<div class="row" id="footer" style="margin-top:15px">
				<div class="col-lg-6" align="center"><p>About Us</p><p>Grocery Hub</p><p>groceryhub@gmail.com</p><p></p></div>
				<div class="col-lg-6" align="center"><p>Contact Us</p><p>1234567890</p></div>
			</div> 			
</body>
</html>