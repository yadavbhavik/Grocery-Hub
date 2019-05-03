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
  
<title>Drop down demo</title>
	<script>
			$(document).ready(function() {
		
				  $("#source").change(function() {
		
				    var el = $(this) ;
		
				    if(el.val() === "ONLINE" ) {
				    $("#status").append("<option>SHIPPED</option>");
				    }
				      else if(el.val() === "MANUAL" ) {
				        $("#status option:last-child").remove() ; }
				  });
		
				});
	</script>
</head>
<body>
		<div class="form-group container">
					Source:   <select id="source" name="source" class="form-control">
		     <option>MANUAL</option>
		     <option>ONLINE</option> </select>
			</br>
					Status:<select id="status" name="status" class="form-control">
		    <option>OPEN</option>
		    <option>DELIVERED</option></select> 
		</div>
</body>
</html>