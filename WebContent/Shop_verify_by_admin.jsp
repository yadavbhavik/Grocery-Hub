
<%@page import="org.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop Verify By Admin</title>
</head>
<body>
	<%
		//PrintWriter pw = response.getWriter();
		//pw.print(request.getParameter("id"));
		int id = Integer.parseInt(request.getParameter("sellerid"));
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
			Statement stmt = conn.createStatement();
			String sql = "select sellermobileno from groceryhub where sellerid="+id;
			ResultSet rs = stmt.executeQuery(sql);
			JSONObject jsonObject = new JSONObject();
			if(rs.next())
			{
				int sellermobileno = rs.getInt("sellermobileno");
				
				jsonObject.put("sellermobileno", sellermobileno);
			}
			response.setContentType("application/json");
			response.getWriter().print(jsonObject);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	%>
</body>
</html>