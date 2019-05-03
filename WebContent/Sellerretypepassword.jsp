<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script><title>Insert title here</title>
  
  <style type="text/css">
	/* The side navigation menu */
	.sidenav {
		  height: 100%; /* 100% Full-height */
		  width: 0; /* 0 width - change this with JavaScript */
		  position: fixed; /* Stay in place */
		  z-index: 1; /* Stay on top */
		  top: 0; /* Stay at the top */
		  left: 0;
		  background-color: #111; /* Black*/
		  overflow-x: hidden; /* Disable horizontal scroll */
		  padding-top: 60px; /* Place content 60px from the top */
		  transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
		}

		/* The navigation menu links */
		.sidenav a {
		  padding: 8px 8px 8px 32px;
		  text-decoration: none;
		  font-size: 25px;
		  color: #818181;
		  display: block;
		  transition: 0.3s;
		}

		/* When you mouse over the navigation links, change their color */
		.sidenav a:hover {
		  color: #f1f1f1;
		}

		/* Position and style the close button (top right corner) */
		.sidenav .closebtn {
		  position: absolute;
		  top: 0;
		  right: 25px;
		  font-size: 36px;
		  margin-left: 50px;
		}

		/* Style page content - use this if you want to push the page content to the right when you open the side navigation */
		#main {
		  transition: margin-left .5s;
		  padding: 20px;
		}

		/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
		@media screen and (max-height: 450px) {
		  .sidenav {padding-top: 15px;}
		  .sidenav a {font-size: 18px;}
		}
		
		</style>
  <style>
    /* width */
::-webkit-scrollbar {
  width: 10px;
}

/*Hide Horizontal Scroll*/
html, body {
  max-width: 100%;
  overflow-x: hidden;
}

/* Track */
::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px grey; 
  border-radius: 5px;
}

/* Handle */
::-webkit-scrollbar-thumb {
  background: #343a40; 
  border-radius: 10px;
}
</style>	
<title>Retype password</title>
</head>
<body>
	<form action="Seller_retype_password_insert">
			<div>
			<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		  		<!-- Brand -->
			<img id="logo" src="Image/Gsmall.png">
		
		  	<!-- Links -->
		  
			  <ul class="navbar-nav ml-auto">
			    <li class="nav-item">
			      <a class="nav-link" href="Seller_login.jsp" style="font-size:20px">Home</a>
			    </li>
			  </ul>
		
			</nav>
		</div>
			<div class="container" style="margin-top:20px">
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<h1 align="center" style="margin-top:10px">Seller Retype Password</h1>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Enter New Password:</label>
								<input type="text" class="form-control" name="newpassword" id="newpassword" align="center">
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Retype  Password:</label>
								<input type="text" class="form-control" name="retypepassword" id="retypepassword" align="center">
							</div>
						</div>
				</div>
				
				<div class="row">
					<div class="col-lg-4"></div>
					<div class="col-lg-4">
						<div class="form-group">
							<button type="submit" class="form-control btn btn-primary" >Submit</button>
						</div>
					</div>
				</div>
				
			</div>
		</form>	
</body>
</html>