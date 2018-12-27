

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;


@WebServlet("/Seller_retype_password_insert")
public class Seller_retype_password_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Seller_retype_password_insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String newpassword=request.getParameter("newpassword");
		String retypepassword=request.getParameter("retypepassword");
		Statement statement;
		
		if(newpassword.equals(retypepassword))
		{
			try
			{
				HttpSession httpSession=request.getSession();
				
				String mobile=(String)httpSession.getAttribute("username");
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
				String sql="select * from sellerregistration where username='"+mobile+"'";
				statement=(Statement)conn.createStatement();
				int i=statement.executeUpdate("UPDATE sellerlogin SET password='"+newpassword+"' where  username='"+mobile+"'");
				if(i==1)
				{
					System.out.println("update successfull..");
				}
				else
				{
					System.out.println("not update...");
				}
			}
			catch (Exception e) {
				// TODO: handle exception
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
