import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/upcomingmovies")
public class upcomingmovies extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m = request.getParameter("movie");
        String c = request.getParameter("cinema");
        String d = request.getParameter("date");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb", "root", "1234");
            Statement st=con.createStatement();
//            String strQuery = "SELECT COUNT(*) FROM user where username='"+name+"'  and password='"+password+"'";
            //request.getRequestDispatcher("cinemas.jsp").forward(request,response);
            String strQuery = "INSERT INTO upcomingmovies(moviename, movieimg, date, location) VALUES (?,?,?,?)";
            PreparedStatement start = con.prepareStatement(strQuery);
            start.setString(1,m);
            start.setString(2,m);
            start.setString(3,c);
            start.setString(4,d);


            start.executeUpdate();
            PrintWriter out=response.getWriter();
            out.println("fuck off");
//            out.println(e);
//            out.println(mno);
//           int rs=st.executeUpdate(strQuery);
            con.close();
//            rs.next();
//            String Countrow = rs.getString(1);
//            if(Countrow.equals("1")){
//                response.sendRedirect("BookTicket");
//            }
//            else {
//                request.setAttribute("error1","username or password incorrect");
//                request.getRequestDispatcher("cinemas.jsp").forward(request,response);
//            }
        } catch (ClassNotFoundException | SQLException b) {
            PrintWriter out=response.getWriter();
            out.println(b);
//            out.println(password);
//            out.println(e);
//            out.println(mno);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

