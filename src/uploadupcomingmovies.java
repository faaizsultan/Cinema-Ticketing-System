import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/uploadupcomingmovies")
public class uploadupcomingmovies extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m = request.getParameter("movie");
        String im = request.getParameter("image");
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
            start.setString(2,im);
            start.setString(3,d);
            start.setString(4,c);


            start.executeUpdate();
//            out.println(e);
//            out.println(mno);
//           int rs=st.executeUpdate(strQuery);
            con.close();
            request.setAttribute("updated", "The record has been updated.");
            request.getRequestDispatcher("/admin.jsp").forward(request, response);
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

