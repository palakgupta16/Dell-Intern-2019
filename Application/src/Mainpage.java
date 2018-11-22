

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Mainpage")
public class Mainpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Mainpage() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 String email_id = request.getParameter("email");
	        String password = request.getParameter("psw");
	        try 
	        {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dell", "root", "root");
	            PreparedStatement pst = conn.prepareStatement("Select email_id,password from login where email_id = ? and password = ? ");
	            
	            pst.setString(1, email_id);
	            pst.setString(2, password);
	            
	            ResultSet rs = pst.executeQuery();
	            
	            if (rs.next()) 
	            {
	            	RequestDispatcher reqDispatcher = getServletConfig().getServletContext().getRequestDispatcher("/specification.jsp");
	        		reqDispatcher.forward(request,response);
	            } 
	            else
	            {
	            	RequestDispatcher reqDispatcher = getServletConfig().getServletContext().getRequestDispatcher("/naaaa.jsp");
	        		reqDispatcher.forward(request,response);
	            }
	           
	        } 
	        catch (ClassNotFoundException | SQLException e)
	        {
	            e.printStackTrace();
	        }	
			
		
		doGet(request, response);
	}

}
