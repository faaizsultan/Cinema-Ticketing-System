
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;



@WebServlet("/deleteMovie")
public class deleteMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public deleteMovie() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();

		String moviename= request.getParameter("mn");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
			java.sql.PreparedStatement st=con.prepareStatement("delete from currentmovies where moviename=?");
            st.setString(1,moviename);
			int rs= st.executeUpdate();
			
			
			
			
			
			out.println(moviename);
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
