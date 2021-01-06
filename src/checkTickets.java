import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/checkTickets")
public class checkTickets extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m = request.getParameter("mn");
        String c = request.getParameter("l");
        String mt = request.getParameter("t");
        String ty = request.getParameter("type");
        PrintWriter out=response.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb", "root", "1234");
            ResultSet rs;
            Statement st=con.createStatement();
            if(ty.equals("silver")){
                String strQuery = "SELECT silverseats from currentmovies where moviename='"+m+"' AND location='"+c+"' AND silvertime='"+mt+"'";
                 rs=st.executeQuery(strQuery);
                 rs.next();
                String res = "{\"seats\":\""+ rs.getString("silverseats")+"\"}";
                out.println(res);
            }
            else {
                String strQuery = "SELECT goldseats from currentmovies where moviename='"+m+"' AND location='"+c+"' AND goldtime='"+mt+"'";
                rs=st.executeQuery(strQuery);
                rs.next();
                String res = "{\"seats\":\""+ rs.getInt("goldseats")+"\"}";
                out.println(res);
            }
            con.close();
        } catch (ClassNotFoundException | SQLException b) {
            out=response.getWriter();
            out.println(b);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
