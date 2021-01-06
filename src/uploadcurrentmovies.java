import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/uploadcurrentmovies")
public class uploadcurrentmovies extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m = request.getParameter("movie");
        String im = request.getParameter("image");
        String c = request.getParameter("cinema");
        String d = request.getParameter("date");
        String gt = request.getParameter("gtime");
        String sit = request.getParameter("stime");
        String gS = request.getParameter("gq");
        String sS = request.getParameter("sq");
        String dy = request.getParameter("day");
        String gP = request.getParameter("price1");
        String sP = request.getParameter("price2");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb", "root", "1234");
            Statement st=con.createStatement();
//            String strQuery = "SELECT COUNT(*) FROM user where username='"+name+"'  and password='"+password+"'";
            //request.getRequestDispatcher("cinemas.jsp").forward(request,response);
            String strQuery = "INSERT INTO currentmovies(moviename, movieimg, location, date, goldseats, goldtime, silverseats, silvertime, goldprice, silverprice, day) value (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement start = con.prepareStatement(strQuery);
            start.setString(1,m);
            start.setString(2,im);
            start.setString(3,c);
            start.setString(4,d);
            start.setString(5,gS);
            start.setString(6,gt);
            start.setString(7,sS);
            start.setString(8,sit);
            start.setString(9,gP);
            start.setString(10,sP);
            start.setString(11,dy);

            start.executeUpdate();
            PrintWriter out=response.getWriter();
            request.setAttribute("updated", "The record has been updated.");
            request.getRequestDispatcher("/admin.jsp").forward(request, response);
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
