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
  
<title>AddItem</title>
</head>
<body>
	<form action="Seller_additem">
			<div class="container" style="margin-top:20px">
			<div class="row">
			<div class="col-lg-4"><img alt="Logo" src="Image\GroceryHub.png" style="width:250px;height:100px"></img></div>
			<div class="col-lg-4"></div>
			<div class="col-lg-4" style="margin-top:60px"><ul align="center"><a href="Header.jsp">Home</a><a href="Header.jsp" style="padding:10px;">Log Out</a></ul></div>
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
			</div>
		</form>	
</body>
</html>