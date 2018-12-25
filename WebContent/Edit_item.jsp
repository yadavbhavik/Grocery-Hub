<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Item</title>
<meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="">
			<div class="container" style="margin-top:20px">
			<div class="row">
			<div class="col-lg-4"><img alt="Logo" src="Image\GroceryHub.png" style="width:250px;height:100px"></img></div>
			<div class="col-lg-4"></div>
			<div class="col-lg-4" style="margin-top:60px"><ul align="center"><a href="Header.jsp">Home</a><a href="Header.jsp" style="padding:10px;">Log Out</a></ul></div>
			</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<h1 align="center">Edit Item Records</h1>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Item Name:</label>
								<input type="text" class="form-control" name="edititem_itemname" id="edititem_itemname" align="center">
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Price:</label>
								<input type="text" class="form-control" name="edititem_brand" id="edititem_brand" align="center">
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Discount:</label>
								<input type="text" class="form-control" name="edititem_mrp" id="edititem_mrp" align="center">
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="form-group">
								<label align="center">Quantity:</label>
								<input type="text" class="form-control" name="edititem_alert" id="edititem_alert" align="center">
							</div>
						</div>
				</div>
				<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
						<label align="center">Package Of</label>
					<select class="form-control" id="package of">
					  <option value="volvo">500 Gm</option>
					  <option value="saab">1 Kg</option>
					  <option value="opel">500 Ml</option>
					  <option value="audi">1 Liter</option>
					</select>
 					</div>
				</div>
				<div class="row"></div>
				<div class="row" style="padding-top :20px">
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