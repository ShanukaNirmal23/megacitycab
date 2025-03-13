/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import com.mycompany.megacitycab.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {
private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Get login form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT * FROM users WHERE username=? AND password=? AND role=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, role);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                // Create session for logged-in user
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("role", role);

                // Redirect based on role
                if ("1".equals(role)) {
                    response.sendRedirect("home.jsp");
                } else if ("2".equals(role)) {
                    response.sendRedirect("driverDashboard.jsp");
                } else {
                    response.sendRedirect("customerHome.jsp");
                }
            } else {
                // Redirect to login page with error message
                response.sendRedirect("index.html?error=Invalid credentials");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.html?error=Database error");
        }
    }

}
