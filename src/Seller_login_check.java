

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Seller_login_check
 */
@WebServlet("/Seller_login_check")
public class Seller_login_check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Seller_login_check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Statement statement;
		String username=request.getParameter("selleruname");
		String password=request.getParameter("sellerpwd");
		HttpSession httpSession=request.getSession();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryhub","root","");
			String sql="select * from sellerlogin where username='"+username+"' and password='"+password+"'";
			statement=(Statement)conn.createStatement();
			java.sql.ResultSet resultSet=(ResultSet)statement.executeQuery(sql);
			if(resultSet.next())
			{
				response.sendRedirect("Seller_deshboard.jsp");
				httpSession.setAttribute("username",username);
			}
			else
			{
				response.sendRedirect("Seller_login.jsp");
			}
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
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
