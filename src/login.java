import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "login", urlPatterns = "/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("ufname");
        String lname = request.getParameter("ulname");
        String uname = request.getParameter("uname");
        String e = request.getParameter("email");
        String mno;
        mno = request.getParameter("mobile");
        String password = request.getParameter("pass1");
        PrintWriter out=response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cinemadb", "root", "1234");
            PreparedStatement st=con.prepareStatement("SELECT * FROM user where userName=?");
            st.setString(1,uname);
            ResultSet rs=st.executeQuery();
            if(!rs.next()){
                String query = "INSERT INTO user(firstName, lastName, userName, email, mobileno, password,loggedIn) VALUES (?,?,?,?,?,?,?)";
                PreparedStatement start = con.prepareStatement(query);
                start.setString(1,fname);
                start.setString(2,lname);
                start.setString(3,uname);
                start.setString(4,e);
                start.setString(5,mno);
                start.setString(6,password);
                start.setString(7,"false");
                start.executeUpdate();
                request.setAttribute("successmessage","Sucessfully Registered");
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
            else {
                request.setAttribute("errormessage","Choose another username!!!");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
            }
        } catch (ClassNotFoundException | SQLException b) {
            out.println(b);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
