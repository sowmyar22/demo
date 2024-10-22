package example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/admin_login")
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/courier_management", "root", "sowmyasql123");
            String query = "SELECT * FROM admins WHERE username = ? AND password = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password); // Directly comparing password
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                resp.sendRedirect("admin_dashboard.jsp");
            } else {
                resp.sendRedirect("admin_login.jsp?error=Invalid credentials");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("admin_login.jsp?error=An error occurred");
        }
    }
}
