

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/storeData")
public class storeData extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public storeData() {
		super();

	}


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter() ;
		String userid=request.getParameter("id");
		String pass=request.getParameter("pass");
		String loc=request.getParameter("location");
		String tseats=request.getParameter("totalseats");
		String mname=request.getParameter("moviename");
		String seatType=request.getParameter("sttype");
		String mttime=request.getParameter("movietime");
		String date=request.getParameter("date");
		out.println(userid);
		out.println(pass);
		out.println(loc);
		out.println(tseats);
		out.println(mname);

		try {

			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection kon=DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
			java.sql.PreparedStatement ust=kon.prepareStatement("select userName,password from user where userName=? AND password=?");
			ust.setString(1,userid);
			ust.setString(2,pass);
			ResultSet urs=ust.executeQuery();
			urs.next();
			if(urs.getString(1).equals(userid) && !(urs.getString(2).equals(pass)))//not valid..
			{
				request.setAttribute("error", "Your Paswrod is Wrong!Pease Rennter..");
				request.getRequestDispatcher("login.jsp").forward(request,response);

			}
			else if(urs.getString(1).equals(userid) && urs.getString(2).equals(pass)) // user is a valid user..
			{

				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
				java.sql.PreparedStatement st=con.prepareStatement("update user set movie=? , location=? ,screentype=? ,quantity=? ,time=? where userName=?");
				st.setString(1,mname);
				st.setString(2,loc);
				st.setString(3,seatType);
				st.setString(4,tseats);
				st.setString(5,mttime);
				st.setString(6,userid);
				st.executeUpdate();
				con.close();
				//updated the users tickets table...



				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection pon=DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
				String query="";
				if(seatType.equals("gold")) {
					query="select goldseats from currentmovies where moviename=?";
				}
				else
				{
					query="select silverseats from currentmovies where moviename=?";
				}
				java.sql.PreparedStatement stmt=pon.prepareStatement(query);
				stmt.setString(1,mname);
				ResultSet rs=stmt.executeQuery();
				rs.next();
				String num=rs.getString(1);
				int seatsinDB=Integer.parseInt(num);
				int leftseats=seatsinDB-(Integer.parseInt(tseats));
				pon.close();
				String newLeftseats="";
				newLeftseats=Integer.toString(leftseats);
				// calculated the left seats..

				Class.forName("com.mysql.jdbc.Driver");
				String updQuery="";
				if(seatType.equals("gold")) {
					updQuery="update currentmovies set goldseats=?";
				}
				else {
					updQuery="update currentmovies set silverseats=?";
				}
				java.sql.Connection don=DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
				java.sql.PreparedStatement nstmt=don.prepareStatement(updQuery);
				nstmt.setString(1,newLeftseats);
				nstmt.executeUpdate();
				response.sendRedirect("displayuserdetail.jsp");

				//updated the seats left in the table.
			}
			else
			{
				System.out.println("User Doesnt Exist");
				response.sendRedirect("login.jsp");
			}
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
