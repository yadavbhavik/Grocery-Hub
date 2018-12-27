import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

@WebServlet("/seller_forgotpassword1")
public class seller_forgotpassword1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public seller_forgotpassword1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		
		
		Statement statement;
		String mobile=request.getParameter("username");
		HttpSession httpSession=request.getSession();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
			String sql="select * from sellerlogin where username='"+mobile+"'";
			statement=(Statement)conn.createStatement();
			ResultSet resultSet=(ResultSet)statement.executeQuery(sql);
			
			if(resultSet.next())
			{
				try
				{	
					Random rand = new Random();
					int no = rand.nextInt(9000)+1000;
					
					 //Your authentication key
			        String authkey = "141319AYoCTFO1hhVt58a2f318";
			        //Multiple mobiles numbers separated by comma
			        String mobiles =mobile;
			        //Sender ID,While using route4 sender id should be 6 characters long.
			        String senderId = "GHub";
			        //Your message to send, Add URL encoding here.
			        String message = "Your Verification code is i.e OTP "+no;
			        //define route
			        String route="4";

			        //Prepare Url
			        URLConnection myURLConnection=null;
			        URL myURL=null;
			        BufferedReader reader=null;

			        //encoding message
			        String encoded_message=URLEncoder.encode(message);

			        //Send SMS API
			        String mainUrl="http://api.msg91.com/api/sendhttp.php?";

			        //Prepare parameter string
			        StringBuilder sbPostData= new StringBuilder(mainUrl);
			        sbPostData.append("authkey="+authkey);
			        sbPostData.append("&mobiles="+mobiles);
			        sbPostData.append("&message="+encoded_message);
			        sbPostData.append("&route="+route);
			        sbPostData.append("&sender="+senderId);

			        //final string
			        mainUrl = sbPostData.toString();
			        
			        response.getWriter().println(mainUrl);
			            //prepare connection
			            myURL = new URL(mainUrl);
			            myURLConnection = myURL.openConnection();
			            myURLConnection.connect();
			            reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
			            //reading response
			            String res;
			            while ((res = reader.readLine()) != null)
			            //print response
			            System.out.println(res);

			            //finally close connection
			            reader.close();
			            
			            System.out.println(no);
			            
			            HttpSession ses = request.getSession();
			            ses.setAttribute("v_otp", no);
			            /*ses.setAttribute("name", name);
			            ses.setAttribute("mobile", mobileno);*/
			           
					}   
			        catch (IOException e1)
			        {
			                e1.printStackTrace();
			        }
				httpSession.setAttribute("username",mobile);
				response.sendRedirect("forgotpasswordotp.jsp");
			}
			else
			{
				response.sendRedirect("Seller_forgotpassword.jsp");
				
				
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
