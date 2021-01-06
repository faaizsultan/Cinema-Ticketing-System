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

@WebServlet(name = "currentmovies", urlPatterns = "/currentmovies")
public class currentmovies extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String mDay1;
        mDay1 = request.getParameter("mDay");
//        out.println(mDay1);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb","root","1234");
            PreparedStatement st=con.prepareStatement("SELECT * FROM currentmovies where day=?");
            st.setString(1,mDay1);
            ResultSet rs=st.executeQuery();
            String res="[";
            while (rs.next()){
             res+="{\"movien\":\""+ rs.getString("moviename")+ "\", \"img\" : \"" + rs.getString("movieimg")+  "\", \"gt\":\"" + rs.getString("goldtime")+ "\", \"silt\":\"" + rs.getString("silvertime") +"\", \"loc\":\"" + rs.getString("location")+"\" }";
//                res +="{\"movien\":\"" + rs.getString("moviename") + "\", \"img\" : \"" + rs.getString("movieimg") + "\", \"loc\":\"" + rs.getString("location") + "\", \"d\":\"" + rs.getString("date") + "\", \"gs\":\"" + rs.getString("goldseats") + "\", \"gt\":\"" + rs.getString("goldtime") + "\", \"ss\":\"" + rs.getString("silverseats") + "\", \"silt\":\"" + rs.getString("silvertimr") + "\", \"gp\":\"" + rs.getString("goldprice") + "\", \"sp\":\"" + rs.getString("silverprice") + "\", \"dy\":\"" + rs.getString("day")+"\" }";
                if(!rs.isLast()){
                    res += ",";
                }
            }
            res+="]";
            out.println(res);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

