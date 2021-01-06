import java.io.PrintWriter;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/newOne")
public class newOne extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String m1=request.getParameter("movie1");
		String c1=request.getParameter("location1");
		String t1=request.getParameter("time1");
		String m2=request.getParameter("movie2");
		String c2=request.getParameter("location2");
		String path=request.getParameter("path");
		String day=request.getParameter("day");
		String date=request.getParameter("date2");
		String time2=request.getParameter("time2");
		String gold=request.getParameter("gs");
		String silver=request.getParameter("ss");
		String time3=request.getParameter("time3");
		String price=request.getParameter("price3");
		try {
			Class.forName("com.mysql.jdbc.Driver");
	    	String DB_URL = "jdbc:mysql://localhost:3306/cinemadb";
	    	String USER = "root";
	    	String PASS = "1234";
	    	String query="UPDATE currentmovies SET moviename=?,movieimg=?,location=?,date=?,day=?,goldseats=?,goldtime=?,silverseats=?,silvertime=?,goldprice=?,silverprice=? Where moviename='" +m1+ "' and location='" +c1+ "' and silvertime='" +t1+ "'";
	    	Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
	    	PreparedStatement stmt = conn.prepareStatement(query);
	    	stmt.setString(1,m2);
	    	stmt.setString(2,path);
	    	stmt.setString(3,c2);
	    	stmt.setString(4,date);
	    	stmt.setString(5,day);
	    	stmt.setString(6,gold);
	    	stmt.setString(7,time2);
	    	stmt.setString(8,silver);
			stmt.setString(9,time3);
			stmt.setString(10,price);
			stmt.setString(11,price);
	    	stmt.executeUpdate();
	    	stmt.close();
	    	conn.close();
			
		}
        catch (ClassNotFoundException | SQLException e) {
        	
            e.printStackTrace();
           }
	}

}
