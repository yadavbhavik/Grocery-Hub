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
		<title>Delete Item</title>
	</head>
	<body>
		<div class="row">
			<table class="table table-hover" id="deleteTable">
    			<thead>
    				  <tr style="text-align:center">
				        <th>Item Id</th>
				        <th>Item Brand</th>
				        <th>Item Category</th>
				        <th>Item Name</th>
				        <th>Package Of</th>
				        <th>Price</th>
				        <th>Remaining Stock</th>
				        <th>Delete</th>
      				</tr>
    			</thead>
    				<script>
    					$(document).ready(function(){
							
    						var suname=$("#hiddenuname").val();
    						$.ajax({
    							type:'POST',
    							url:'Ajaxsellerdeshboard',
    							data:{
    								username:suname,
    							},
    							success : function(responceText){
    								console.log(responceText);
    								var index;
    								for(index=0;index<responceText.length;index++)
    									{
    										console.log(responceText[index]);
    										$('#deleteTable').append('<tr><td>'+responceText[index].item_id+'</td><td>'+responceText[index].brand+'</td><td>'+responceText[index].category+'</td><td>'+responceText[index].item_name+'</td><td>'+responceText[index].package_of+'</td><td>'+responceText[index].remaining_item+'</td><td>'+responceText[index].remaining_stock+'</td><td><input type="button" name="DeleteItem" id="btnOperate" class="btn btn-danger"/></td></tr>');
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
	</body>
</html>