

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Edited_item
 */
@WebServlet("/Edited_item")
public class Edited_item extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edited_item() {
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
		try {
			HttpSession httpSession=request.getSession();
			System.out.println(request.getParameter("myobj"));
			JsonElement jElement = new JsonParser().parse(request.getParameter("myobj"));
			JsonObject jsonObject = jElement.getAsJsonObject();
			System.out.println(jsonObject.get("itemname").getAsString());
			String taskname=jsonObject.get("itemname").getAsString();
			String itembrand=jsonObject.get("itembrand").getAsString();
			String itemcategory=jsonObject.get("itemcategory").getAsString();
			String packageof=jsonObject.get("itempackof").getAsString();
			String price=jsonObject.get("itemprice").getAsString();
			String remainingstock=jsonObject.get("itemremaining").getAsString();
			String itemid=jsonObject.get("itemid").getAsString();
			
			Statement statement;
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
			String mobile=(String)httpSession.getAttribute("username");
			statement=(Statement)conn.createStatement();
			int i=statement.executeUpdate("UPDATE selleritem SET item_name='"+taskname+"',brand='"+itembrand+"',mrp='"+price+"',category='"+itemcategory+"',package_of='"+packageof+"',quantity='"+remainingstock+"',duplicate_quantity='"+remainingstock+"' where  item_id='"+itemid+"'");
			JSONObject jsonObject2=new JSONObject();
			if(i==1)
			{
				jsonObject2.put("success","success");
				System.out.println("update successfull..");
				
			}
			else
			{
				jsonObject2.put("fail","fail");
				System.out.println("not update...");
			}
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().println(jsonObject2.toString());
			}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		
	}

}
