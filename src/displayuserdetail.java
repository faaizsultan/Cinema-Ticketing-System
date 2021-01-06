
import java.io.PrintWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
@WebServlet("/displayuserdetail")
public class displayuserdetail extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String userName=request.getParameter("username");
		
		try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	String DB_URL = "jdbc:mysql://localhost:3306/cinemadb";
	    	String USER = "root";
	    	String PASS = "1234";
	    	String query="Select * from user where userName='" + userName +"'";
	    	Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
	    	Statement stmt = conn.createStatement();	
	    	ResultSet rs=stmt.executeQuery(query);
	        String res="";
	    	while(rs.next()) {
	    		res+="{\"UserName\":\""+ rs.getString("userName")+ "\", \"TicketsCount\" : \"" + rs.getString("quantity")+  "\", \"MovieName\":\"" + rs.getString("movie")+ "\", \"Type\":\"" + rs.getString("screentype") +"\", \"Time\":\"" + rs.getString("time")+"\"}";
	    	}
	    	 
	            out.println(res);
	    	rs.close();
	    	stmt.close();
	    	conn.close();
	    	
	    }
	    catch(Exception e){
	    	out.println(e);
	    }
	}

}
