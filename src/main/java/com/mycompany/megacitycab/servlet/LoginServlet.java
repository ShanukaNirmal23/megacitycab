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
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

 @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Retrieve form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection conn = null;
    try {
        // Get a database connection
        conn = DBConnection.getConnection();

        // Step 1: Authenticate the user using the `user` table
        String sqlAuthenticateUser = "SELECT userId, role FROM user WHERE username = ? AND password = ?";
        try (PreparedStatement stmtAuthenticateUser = conn.prepareStatement(sqlAuthenticateUser)) {
            stmtAuthenticateUser.setString(1, username);
            stmtAuthenticateUser.setString(2, password);

            ResultSet rs = stmtAuthenticateUser.executeQuery();
            if (rs.next()) {
                // Login successful
                int userId = rs.getInt("userId");
                String role = rs.getString("role");

                // Create a session and store user details
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("role", role);
                session.setAttribute("userId", userId);

                // Redirect based on role
                if (role.equals("customer")) {
                    response.sendRedirect("customerHome.jsp");
                } else if (role.equals("driver")) {
                    response.sendRedirect("driverHome.jsp");
                }
            } else {
                // Login failed
                request.setAttribute("errorMessage", "Invalid username or password.");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        request.setAttribute("errorMessage", "An error occurred. Please try again.");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    } finally {
        // Close the connection
        DBConnection.closeConnection(conn);
    }
}
    
}