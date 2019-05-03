<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin Show Shop Request</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- modal -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<h1 align="center">Shop Request Details</h1><hr/>
			<table class="table table-hover">
      				<tr>
        				<th>Seller Name</th>
        				<th>Seller Mobile No</th>
        				<th>Alternative Mobile No</th>
        				<th>Email</th>
        				<th>Seller Address</th>
        				<th>Shop Name</th>
        				<th>Shop Address</th>
        				<th>Shop Category</th>
        				<th>Shop Mobile No</th>
        				<th>Shop Payment Method</th>
        				<th>Aadharcard No</th>
        				<th>Aadharcard Image</th>
        				<th>GST No</th>
        				<th>Pancard No</th>
        				<th>Pancard Image</th>
        				<th>Bank Account No</th>
        				<th>Seller Bank Holder Name</th>
        				<th>IFSC No</th>
        				<th>Status</th>
      				</tr>
      				
      				<%
      					int i=1;
      					try
      					{
      						Class.forName("com.mysql.jdbc.Driver");
      						Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
      						Statement stmt = conn.createStatement();
      						String sql = "select * from sellerregistration";
      						ResultSet rs = stmt.executeQuery(sql);
      						while(rs.next())
      						{
      				%>
      	
      					<tr onclick="buttontrack(this)">
      						<td><%=rs.getString("sellername") %></td>
      						<td><%=rs.getInt("sellermobileno") %></td>
      						<td><%=rs.getInt("alternativemobileno") %></td>
      						<td><%=rs.getString("email") %></td>
      						<td><%=rs.getString("selleraddress") %></td>
      						<td><%=rs.getString("shopname") %></td>
      						<td><%=rs.getString("shopaddress") %></td>
      						<td><%=rs.getString("shopcategory") %></td>
      						<td><%=rs.getInt("shopmobileno") %></td>
      						<td><%=rs.getString("shoppaymentmethod") %></td>
      						<td><%=rs.getString("aadharcardno") %></td>
      						<td><%=rs.getBlob("aadharcardimage") %></td>
      						<td><%=rs.getString("gstno") %></td>
      						<td><%=rs.getString("pancardno") %></td>
      						<td><%=rs.getBlob("pancardimage") %></td>
      						<td><%=rs.getString("bankaccountno") %></td>
      						<td><%=rs.getString("sellerbankholdername") %></td>
      						<td><%=rs.getString("ifscno") %></td>
      						<td style="color:red"><%=rs.getString("status") %></td>
      						<td><button class="btn btn-primary">Verified</button></td>
      						 <%i++; %>
      					</tr>
      					
      				<% 
      					}
      						conn.close();
      					}
      					catch(Exception e)
      					{
      						e.printStackTrace();
      					}
      				%>
      				<script type="text/javascript">
						function buttontrack(x) 
						{
							var id = x.rowIndex;	
							//var url = "Shop_verify_by_admin.jsp?id="+id;
							//window.location.href = url;
							
							$(document).ready(function(){
								$.ajax({
									type:"POST",
									url:"Shop_verify_by_admin.jsp",
									data:{sellerid:id},
									success:function(responseText){
										$("#Sellermobileno").html(responseText.sellermobileno);	
									}
								});
							});
						}
					</script>
      			</table>
      		</div>
      	</div>
      	<!-- modal -->
      	<div class="modal fade" id="myModal">
    	<div class="modal-dialog">
     	<div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Shop Verification</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <label>Seller Mobile No:</label><input type="text" readonly="readonly" id="Sellermobileno">
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
      	
</body>
</html>