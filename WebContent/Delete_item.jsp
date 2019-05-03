<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
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
		
		<title>Delete Item</title>
	</head>
	<body>
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
  <a href="AddItem.jsp">AddItem</a> 
</div>
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
			<table class="table table-hover" id="myTable">
    			<thead>
    				  <tr style="text-align:center">
				        <th>Item Id</th>
				        <th>Item Brand</th>
				        <th>Item Category</th>
				        <th>Item Name</th>
				        <th>Package Of</th>
				        <th>Price</th>
				        <th>Remaining Stock</th>
				        <th>Delete Item</th>
				
      				</tr>
    			</thead>
    			<tbody class="text-center">
	
    			</tbody>
  			</table>
</div>
		<div>
			<input type="hidden" id="hiddenuname" name="selleruname" value="<%=(String)session.getAttribute("username") %>"/>
		</div>
		<script>
    					$(document).ready(function(){
							
    						var selleruname=$("#hiddenuname").val();
    						$.ajax({
    							type:'POST',
    							url:'delete_item',
    							data:{
    								username:selleruname,
    							},
    							success : function(responceText){
    								console.log(responceText);
    								var index;
    								for(index=0;index<responceText.length;index++)
    									{
    										console.log(responceText[index]);
    										$('#myTable tbody').append('<tr><td>'+responceText[index].item_id+'</td><td>'+responceText[index].brand+'</td><td>'+responceText[index].category+'</td><td>'+responceText[index].item_name+'</td><td>'+responceText[index].package_of+'</td><td>'+responceText[index].remaining_item+'</td><td>'+responceText[index].remaining_stock+'</td><td> <button type="button" class="btn btn-danger">Detele</button></td></tr>');
    									}
    							}
    						})
    					
    						$("#myTable").on("click","tbody tr td>button",function(){
    							taskid = $(this).closest('tr').children('td:first').text();
    							
    							var message="Item deleted successful";
    							var result = confirm("Want to delete?");
									if (result) 
									{
										alert(taskid)	  
										$.ajax({
    												type:'POST',
    												url:'Delete_item_modal',
    												data:{
    														itemid:taskid	
    													 },
    												success :function(responceText){
    												alert(responceText.message);
    												window.location.href="Seller_deshboard.jsp";
    															
    												}
    											})
    											
									}
    							
    						});
    						
    					 
    					});
    </script>
	</body>
</html>