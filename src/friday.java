import com.sun.org.apache.bcel.internal.generic.ACONST_NULL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Arrays;

@WebServlet(name = "friday", urlPatterns = "/friday")
public class friday extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String mDay1;
        mDay1 = request.getParameter("mDay");
        try {
//
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
//            PreparedStatement st=con.prepareStatement("SELECT * FROM currentmovies where day='"+mDay1+"'");
            PreparedStatement st=con.prepareStatement("SELECT * FROM currentmovies where day='Friday'");
//            String query= "SELECT * FROM try WHERE rollno ='"+ roll +"'";
//            st.setString(1,roll);
            //+ roll + "'")\
            ResultSet rs=st.executeQuery();
            //            out.println(rs);

            String res="[";
//            String res="";
            while (rs.next()){

//                res +="{\"movien\":\"" + rs.getString("moviename") + "\", \"img\" : \"" + rs.getString("movieimg") + "\", \"loc\":\"" + rs.getString("location") + "\", \"d\":\"" + rs.getString("date") + "\", \"gs\":\"" + rs.getString("goldseats") + "\", \"t\":\"" + rs.getString("time") + "\", \"ss\":\"" + rs.getString("silverseats") + "\", \"gp\":\"" + rs.getString("goldprice") + "\", \"sp\":\"" + rs.getString("silverprice") + "\", \"dy\":\"" + rs.getString("day") +"\" }";
                res+="{\"movien\":\""+ rs.getString("moviename")+"\"}";

                if(!rs.isLast()){
                    res += ",";
                }
            }
            res+="]";
//            PrintWriter out=response.getWriter();
            out.println(res);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
//        PrintWriter out=response.getWriter();
//        out.write(roll);
    }
}

