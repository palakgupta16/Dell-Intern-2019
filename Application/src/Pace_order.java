

import java.io.IOException;
import java.io.PrintWriter;
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

import com.mysql.jdbc.Statement;


@WebServlet("/Pace_order")
public class Pace_order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Pace_order() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
PrintWriter pw=response.getWriter();
		
		String processor=request.getParameter("slct1");
		String connecters=request.getParameter("slct2");
		String laptopcharger=request.getParameter("slct3");
		String ram=request.getParameter("slct4");
		String graphiccard=request.getParameter("slct5");
		String battries=request.getParameter("slct6");
		String internalstorage=request.getParameter("slct7");
        try 
        {
            Class.newInstance("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dell", "root", "root");
            java.sql.Statement st=conn.createStatement();
           PreparedStatement pst=null;
          int i=  st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+processor+"')");
         
          
          if (i>0) 
          {
          	pw.println("updated");
          }
        
	}
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }	
        
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		/*PrintWriter pw=response.getWriter();
		
		String processor=request.getParameter("slct1");
		String connecters=request.getParameter("slct2");
		String laptopcharger=request.getParameter("slct3");
		String ram=request.getParameter("slct4");
		String graphiccard=request.getParameter("slct5");
		String battries=request.getParameter("slct6");
		String internalstorage=request.getParameter("slct7");
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dell", "root", "root");
            Statement st=null;
           PreparedStatement pst=null;
          int i=  st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+processor+"')");
         
          
          if (i>0) 
          {
          	out.p
          }
        }*/
        /*  if(i>0)
            PreparedStatement pst= conn.prepareStatement("Select part_id from e_bom where part_description = processor ");
            pst.setString(1,processor);
            ResultSet rs = pst.executeQuery();
            while(rs.next())
            {
            	
            	
            	 st.execute("insert into barcelona_m_bom values('"+(  conn.prepareStatement("Select part_description from e_bom where part_description = processor "))+"', null, null, null, null)");
            }
       
            PreparedStatement pst1 = conn.prepareStatement("Select part_id from e_bom where part_description = ?");
            pst1.setString(1,connecters);
            
            PreparedStatement pst2 = conn.prepareStatement("Select part_id from e_bom where part_description = ?");
            pst2.setString(1,laptopcharger);
            
            PreparedStatement pst3 = conn.prepareStatement("Select part_id from e_bom where part_description = ?");
            pst3.setString(1,ram);
            
            PreparedStatement pst4 = conn.prepareStatement("Select part_id from e_bom where part_description = ?");
            pst4.setString(1,graphiccard);
 
            PreparedStatement pst5 = conn.prepareStatement("Select part_id from e_bom where part_description = ?");
            pst5.setString(1,battries);
 
            PreparedStatement pst6 = conn.prepareStatement("Select part_id from e_bom where part_description = ?");
            pst6.setString(1,internalstorage);
           
            
            ResultSet rs = pst.executeQuery();
            String a=rs.getString(1);
            ResultSet rs1 = pst1.executeQuery();
            String b=rs1.getString(1);
            ResultSet rs2 = pst2.executeQuery();
            String c=rs2.getString(1);
            ResultSet rs3 = pst3.executeQuery();
            String d=rs3.getString(1);
            ResultSet rs4 = pst4.executeQuery();
            String e=rs4.getString(1);
            ResultSet rs5 = pst5.executeQuery();
            String f=rs5.getString(1);
            ResultSet rs6 = pst6.executeQuery();
            String g=rs6.getString(1);
            
          
            Statement st=(Statement) conn.createStatement();
            st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+processor+"')");
            st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+connecters+"')");
            st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+laptopcharger+"')");
            st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+ram+"')");
            st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+graphiccard+")");
            st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+battries+"')");
            st.executeUpdate("insert into barcelona_m_bom(part_description) values('"+internalstorage+"')");
            
        }*/
           
	}  
      
	
	
	
}





