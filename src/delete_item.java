

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Delete_item
 */
@WebServlet("/delete_item")
public class delete_item extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete_item() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("username");
		System.out.println(uname);
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
			String sql="select * from selleritem where seller_username='"+uname+"'";
			Statement statement=(Statement)conn.createStatement();
			ResultSet resultSet=(ResultSet)statement.executeQuery(sql);
		
			JSONArray array=new JSONArray();
			while(resultSet.next())
			{   
				JSONObject jsonObject=new JSONObject();
				jsonObject.put("item_id",resultSet.getString("item_id"));
				jsonObject.put("brand",resultSet.getString("brand"));
				jsonObject.put("category",resultSet.getString("category"));
				jsonObject.put("item_name",resultSet.getString("item_name"));
				jsonObject.put("package_of",resultSet.getString("package_of"));
				jsonObject.put("remaining_item",resultSet.getString("mrp"));
				jsonObject.put("remaining_stock",resultSet.getString("quantity"));
				
				array.add(jsonObject);
			}
		
			response.setContentType("application/json");
			response.getWriter().println(array);
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		

	}

}
