

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Seller_verifyotp")
public class Seller_verifyotp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Seller_verifyotp() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String sotp=request.getParameter("sotp");
		HttpSession httpSession=request.getSession();
		String votp=httpSession.getAttribute("v_otp").toString();
		if(sotp.equals(votp))
		{
			response.sendRedirect("Sellerretypepassword.jsp");
		}
		else
		{
			response.sendRedirect("forgotpasswordotp.jsp");
			
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
