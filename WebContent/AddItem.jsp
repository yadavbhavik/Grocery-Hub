<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script><title>Insert title here</title>
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		<script type="text/javascript">/* Set the width of the side navigation to 250px */
		function openNav() {
			  document.getElementById("mySidenav").style.width = "250px";
			}

			/* Set the width of the side navigation to 0 */
			function closeNav() {
			  document.getElementById("mySidenav").style.width = "0";
			}</script>
	  
<title>AddItem</title>
</head>
<body>

	<form action="Seller_additem">

	<div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
	<img id="logo" src="Image/Gsmall.png">

  <!-- Links -->
  
  <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <a class="nav-link" href="#" style="font-size:20px">Home</a>
    </li>
   

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="font-size:20px">
        Account
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#" style="font-size:20px">Info</a>
        <a class="dropdown-item" href="#" style="font-size:20px">Logout</a>
        
      </div>
    </li>
  </ul>

</nav>
</div>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="Seller_deshboard.jsp">Dashbord</a>
  <a href="Edit_item.jsp">Edit Item</a>
  <a href="Delete_item.jsp">Delete Item</a>
 
</div>

<!-- Use any element to open the sidenav -->


<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<div id="main">
  <div class="raw">
    <button class="navbar-toggler ml-1" type="button" data-toggle="collapse" data-target="#collapsingNavbar2">
        <span class="navbar-toggler-icon"></span>
    </button>
    <span onclick="openNav()"><i class="fa fa-bars mr-1"></i></span>
    
</nav>

</div>
</div>

				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<h1 align="center">Add Item</h1>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
						<label align="center">Category :</label>
					<select class="form-control" id="category" name="category">
					  <option value="volvo">selected category 1</option>
					  <option value="saab">selected category 1</option>
					  <option value="opel">selected category 3</option>
					  <option value="audi">selected category 4</option>
					</select>
 					</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Item Name:</label>
								<input type="text" class="form-control" name="additem_itemname" id="additem_itemname" align="center">
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Brand:</label>
								<input type="text" class="form-control" name="additem_brand" id="additem_brand" align="center">
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">MRP:</label>
								<input type="text" class="form-control" name="additem_mrp" id="additem_mrp" align="center">
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Remaining Item Alert:</label>
								<input type="text" class="form-control" name="additem_alert" id="additem_alert" align="center">
							</div>
						</div>
				</div>
				<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
						<label align="center">Package Of</label>
					<select class="form-control" id="package_of" name="package_of">
					  <option value="volvo">500 GM</option>
					  <option value="saab">1 KG</option>
					  <option value="opel">500 Ml</option>
					  <option value="audi">1 liter</option>
					</select>
 					</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label ajign="center">Quantity:</label>
								<input type="text" class="form-control" name="additem_quantity" id="additem_quantity" align="center">
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
					<div class="col-lg-4">
						<div class="form-group">
							<button type="submit" class="form-control btn btn-primary" >Add</button>
						</div>
					</div>
				</div>
	</form>	
</body>
</html>