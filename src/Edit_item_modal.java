

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
 * Servlet implementation class Edit_item_modal
 */
@WebServlet("/Edit_item_modal")
public class Edit_item_modal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit_item_modal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String itemid=request.getParameter("itemid");
		System.out.println(itemid);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
			String sql="select * from selleritem where item_id='"+itemid+"'";
			Statement statement=(Statement)conn.createStatement();
			ResultSet resultSet=(ResultSet)statement.executeQuery(sql);
		
			JSONObject jsonObject=new JSONObject();
			while(resultSet.next())
			{   
				
				jsonObject.put("item_id",resultSet.getString("item_id"));
				jsonObject.put("brand",resultSet.getString("brand"));
				jsonObject.put("category",resultSet.getString("category"));
				jsonObject.put("item_name",resultSet.getString("item_name"));
				jsonObject.put("package_of",resultSet.getString("package_of"));
				jsonObject.put("MRP",resultSet.getString("mrp"));
				jsonObject.put("remaining_stock",resultSet.getString("quantity"));
				
			}
		
			response.setContentType("application/json");
			System.out.println(jsonObject);
			response.getWriter().println(jsonObject);
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}

	}

}
