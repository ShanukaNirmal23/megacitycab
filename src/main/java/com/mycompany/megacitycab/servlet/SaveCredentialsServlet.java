package com.mycompany.megacitycab.servlet;

import com.mycompany.megacitycab.util.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet(urlPatterns = {"/SaveCredentialsServlet"})
public class SaveCredentialsServlet extends HttpServlet {

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

            // Insert username and password into the database
            String sql = "INSERT INTO user (username, password, role) VALUES (?, ?, 'customer')";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, username);
                stmt.setString(2, password); // In real-world apps, use hashed passwords

                int rowsInserted = stmt.executeUpdate();
                if (rowsInserted > 0) {
                    // Credentials saved successfully
                    response.sendRedirect("index.jsp?success=1");
                } else {
                    // Failed to save credentials
                    request.setAttribute("errorMessage", "Failed to save credentials. Please try again.");
                    request.getRequestDispatcher("enterCredentials.jsp").forward(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("enterCredentials.jsp").forward(request, response);
        } finally {
            // Close the connection
            DBConnection.closeConnection(conn);
        }
    }
}
