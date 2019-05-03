

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.sql.*;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@WebServlet("/Seller_registration")
@MultipartConfig(maxFileSize = 16177215) 
public class Seller_registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Seller_registration() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		PrintWriter pw = response.getWriter();
		try
		{
			String Sellername = request.getParameter("sellername");
			String Selleremail = request.getParameter("sellermobileno");
			String Sellerconfirmemail = request.getParameter("sellerconfirmemail");
			String Selleraddress = request.getParameter("selleraddress");
			String Shopname = request.getParameter("shopname");
			String Shopaddress = request.getParameter("shopaddress");
			String Shopemail = request.getParameter("shopemail");
			String Sellerbankholdername = request.getParameter("sellerbankholdername");
			String Ifscno = request.getParameter("ifscno");
			String Gstno = request.getParameter("gstno");
			String Pancardno = request.getParameter("pancardno");
			
			int Sellermobileno = Integer.parseInt(request.getParameter("sellermobileno"));
			int Alternativemobileno = Integer.parseInt(request.getParameter("alternativemobileno"));
			int Shopmobileno = Integer.parseInt(request.getParameter("shopmobileno"));
			int Aadharcardno = Integer.parseInt(request.getParameter("aadharcardno"));
			int Bankaccountno = Integer.parseInt(request.getParameter("bankaccountno"));
			
			
	        InputStream inputStream1,inputStream2 = null;
	        Part filePart1 = request.getPart("imgaadhar");
	        Part filePart2 = request.getPart("imgpancard");
	      
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
			PreparedStatement pst = conn.prepareStatement("insert into sellerregistration(sellername,sellermobileno,alternativemobileno,email,confirmemail,selleraddress,shopname,shopaddress,shopemail,shopmobileno,aadharcardno,aadharcardimage,gstno,pancardno,pancardimage,bankaccountno,sellerbankholdername,ifscno) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1,Sellername);
			pst.setInt(2,Sellermobileno);
			pst.setInt(3,Alternativemobileno);
			pst.setString(4,Selleremail);
			pst.setString(5,Sellerconfirmemail);
			pst.setString(6,Selleraddress);
			pst.setString(7,Shopname);
			pst.setString(8,Shopaddress);
			pst.setString(9,Shopemail);
			pst.setInt(10,Shopmobileno);
			pst.setInt(11,Aadharcardno);
			pst.setString(13,Gstno);
			pst.setString(14,Pancardno);
			pst.setInt(16,Bankaccountno);
			pst.setString(17,Sellerbankholdername);
			pst.setString(18,Ifscno);
			
			 if (filePart1 != null) 
		        {
		            // obtains input stream of the upload file
		            inputStream1 = filePart1.getInputStream();
		          
		            if (inputStream1 != null) 
		            {
		                // fetches input stream of the upload file for the blob column
		                pst.setBlob(12, inputStream1);
		            }
		        }
			 
			 if (filePart2 != null) 
		        {
		            // obtains input stream of the upload file
		            inputStream2 = filePart2.getInputStream();
		          
		            if (inputStream2 != null) 
		            {
		                // fetches input stream of the upload file for the blob column
		                pst.setBlob(15, inputStream2);
		            }
		        }

			
			int i = pst.executeUpdate();
			if(i!=0)
			{
				pw.println("Data Inserted Successful");
			}
			else
			{
				pw.println("Data not Inserted!!!");				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
