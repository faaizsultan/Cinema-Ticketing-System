import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/signup")
public class signup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("username");
        String password = request.getParameter("password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb", "root", "1234");
            Statement st=con.createStatement();
            String strQuery = "SELECT count(userName) from user where userName='"+uname+"' group by userName";
            ResultSet rs=st.executeQuery(strQuery);

            if(rs.next()) {
                st=con.createStatement();
                String sq = "SELECT password FROM user where userName='" + uname + "'";
                ResultSet rs1 = st.executeQuery(sq);
                rs1.next();
                if (rs1.getString(1).equals(password)) {
                    response.sendRedirect("index.jsp");
                }
                else {
                    request.setAttribute("error","username or password is incorrect!!!");
                    PreparedStatement start = con.prepareStatement("INSERT into user(loggedIn) value (?)");
                    start.setString(1,"true");
                    request.getRequestDispatcher("login.jsp").forward(request,response);
                }
            }
            else {
                request.setAttribute("error","First create an account!!!");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        } catch (ClassNotFoundException | SQLException b) {
            PrintWriter out=response.getWriter();
            out.println(b);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

