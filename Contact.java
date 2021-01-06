import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phoneNo=request.getParameter("phoneNo");
		String subject=request.getParameter("subject");
		String loc=request.getParameter("location");
		String feedback=request.getParameter("feed");
		PrintWriter out=response.getWriter();
	    response.setContentType("text/html;charset=UTF-8");
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	String DB_URL = "jdbc:mysql://localhost:3306/feedback";
	    	String USER = "root";
	    	String PASS = "4574658";
	    	String query="insert into feed values(?,?,?,?,?,?)";
	    	Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
	    	PreparedStatement stmt = conn.prepareStatement(query);	
	    	stmt.setString(1,name);
	    	stmt.setString(2,email);
	    	stmt.setString(3,phoneNo);
	    	stmt.setString(4,subject);
	    	stmt.setString(5,loc);
	    	stmt.setString(6,feedback);
	    	stmt.executeUpdate();
	    	stmt.close();
	    	conn.close();
	    	out.println("its done");
	    }
	    catch(Exception e){
	    	out.println(e);
	    }
	    request.setAttribute("feedMessage","Thanks for your Feedback!");
	    request.getRequestDispatcher("/contact.jsp").forward(request,response);
	}

}
