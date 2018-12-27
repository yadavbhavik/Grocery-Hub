

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Seller_additem
 */
@WebServlet("/Seller_additem")
public class Seller_additem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Seller_additem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String category=request.getParameter("category");
		String additemitemname=request.getParameter("additem_itemname");
		String additembrand=request.getParameter("additem_brand");
		String additemmrp=request.getParameter("additem_mrp");
		String additemalert=request.getParameter("additem_alert");
		String package_of=request.getParameter("package_of");
		String additem_quantity=request.getParameter("additem_quantity");
		HttpSession httpSession=request.getSession();
		String seller_id=(String)httpSession.getAttribute("username");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
			
			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO selleritem(seller_username,category,item_name,brand,mrp,remaining_item,package_of,quantity) VALUES(?,?,?,?,?,?,?,?)");

			pstmt.setString(1,seller_id);
			pstmt.setString(2,category);
			pstmt.setString(3,additemitemname);
			pstmt.setString(4,additembrand);
			pstmt.setFloat(5,Float.parseFloat(additemmrp));
			pstmt.setInt(6, Integer.parseInt(additemalert));
			pstmt.setString(7,package_of);
			pstmt.setInt(8,Integer.parseInt(additem_quantity));

			int i = pstmt.executeUpdate();
			
			if(i>0)
			{
				response.sendRedirect("Seller_deshboard.jsp");
			}
			else
			{
				response.sendRedirect("AddItem.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
