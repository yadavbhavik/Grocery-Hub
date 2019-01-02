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
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script><title>Seller Deshboard</title>
<title>deshboard</title>
</head>
<body>         
		<div  style="margin:20px 20px 20px 20px  ;margin-right:20px; ">
		<div class="row">
			<div class="col-lg-4"><img alt="Logo" src="Image\GroceryHub.png" style="width:250px;height:100px"></img></div>
			<div class="col-lg-4"></div>
			<div class="col-lg-4" style="margin-top:60px"><ul align="center"><a href="#">Home</a><a href="Header.jsp" style="padding:10px;">Log Out</a></ul></div>
		</div>
		<div class="row" style="margin-top:20px">
			<div class="col-lg-3">
			<a href="Online_order_show.jsp"><button class="form-control btn-primary" id="#online_order">Online Order</button></a>
			</div>
			<div class="col-lg-3">
			<a href="Offline_billing.jsp"><button class="form-control btn-primary" id="#offline_billing">Offline Billing</button></a>
			</div>
			<div class="col-lg-3">
			<a href="Delete_item.jsp"><button class="form-control btn-primary" id="#item_add">Detele item</button></a>
			</div>
			<div class="col-lg-3">
			<a href="AddItem.jsp"><button class="form-control btn-primary" id="#item_add">Add Item</button></a>
			</div>
		</div>
		<div class="row"></div>
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
      				</tr>
    			</thead>
    				<script>
    					$(document).ready(function(){
							
    						var selleruname=$("#hiddenuname").val();
    						$.ajax({
    							type:'POST',
    							url:'Ajaxsellerdeshboard',
    							data:{
    								username:selleruname,
    							},
    							success : function(responceText){
    								console.log(responceText);
    								var index;
    								for(index=0;index<responceText.length;index++)
    									{
    										console.log(responceText[index]);
    										$('#myTable').append('<tr><td>'+responceText[index].item_id+'</td><td>'+responceText[index].brand+'</td><td>'+responceText[index].category+'</td><td>'+responceText[index].item_name+'</td><td>'+responceText[index].package_of+'</td><td>'+responceText[index].remaining_item+'</td><td>'+responceText[index].remaining_stock+'</td></tr>');
    									}
    							}
    						})
    					});
    				</script>
    			
    			<tbody class="text-center">
	
    			</tbody>
  			</table>
		</div>
		<div>
			<input type="hidden" id="hiddenuname" name="selleruname" value="<%=(String)session.getAttribute("username") %>"/>
		</div>
	</div>
</body>
</html>