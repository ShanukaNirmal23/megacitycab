package com.mycompany.megacitycab.servlet;


import com.mycompany.megacitycab.util.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            try (Connection conn = DBConnection.getConnection();) {
                // Query to check user credentials and role
                String sql = "SELECT * FROM user WHERE username = ? AND password = ? AND role = ?";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, username);
                    stmt.setString(2, password); // In real-world apps, use hashed passwords
                    stmt.setString(3, role);

                    ResultSet rs = stmt.executeQuery();
                    if (rs.next()) {
                        // Login successful
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);
                        session.setAttribute("role", role);

                        // Redirect based on role
                        switch (role) {
                            case "customer":
                                response.sendRedirect("customerHome.jsp");
                                break;
                            case "driver":
                                response.sendRedirect("driverHome.jsp");
                                break;
                            default:
                                response.sendRedirect("index.jsp");
                                break;
                        }
                    } else {
                        // Login failed
                        request.setAttribute("errorMessage", "Invalid username, password, or role.");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    
}