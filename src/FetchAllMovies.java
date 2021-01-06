import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
@WebServlet("/FetchAllMovies")
public class FetchAllMovies extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public FetchAllMovies() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {																																																	
		PrintWriter out=response.getWriter();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
			Statement stmt=con.createStatement();
			String statement="select * from currentmovies";
			java.sql.ResultSet rs=stmt.executeQuery(statement);
			
			
			String json="[";
			while(rs.next()) {
			   json+="{\"moviename\":\""+ rs.getString("moviename")+ "\", \"movieimg\" : \"" + rs.getString("movieimg")+  "\", \"goldtime\":\"" + rs.getString("goldtime")+ "\", \"silvertime\":\"" + rs.getString("silvertime") +"\", \"location\":\"" + rs.getString("location")+"\", \"goldseats\" : \"" + rs.getString("goldseats")+"\", \"silverseats\" : \"" + rs.getString("silverseats")+ "\" }";
			   if(!rs.isLast()){
			        json += ",";
			   	}
			}
			json+="]";
			
			out.println(json);
			
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
