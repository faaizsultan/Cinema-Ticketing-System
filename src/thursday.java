import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Arrays;

@WebServlet(name = "thursday", urlPatterns = "/thursday")
public class thursday extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String roll;
//        roll = request.getParameter("usrrollno");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
            PreparedStatement st=con.prepareStatement("SELECT * FROM currentmovies where day='Thursday'");
//            String query= "SELECT * FROM try WHERE rollno ='"+ roll +"'";
//            st.setString(1,roll);
            //+ roll + "'");
            ResultSet rs=st.executeQuery();

            if (rs.next()){
                PrintWriter out=response.getWriter();
                String res="{\"movien\":\"" + rs.getString("moviename") + "\", \"img\" : \"" + rs.getString("movieimg") + "\", \"loc\":\"" + rs.getString("location") + "\", \"d\":\"" + rs.getString("date") + "\", \"gs\":\"" + rs.getString("goldseats") + "\", \"t\":\"" + rs.getString("time") + "\", \"ss\":\"" + rs.getString("silverseats") + "\"}";
                out.println(res);
                //out.write("asdf");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
//        PrintWriter out=response.getWriter();
//        out.write(roll);
    }
}

