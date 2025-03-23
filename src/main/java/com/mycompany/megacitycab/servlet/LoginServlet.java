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

 private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = null;
        try {
            conn = DBConnection.getConnection();
            String sql = "SELECT userId, role FROM user WHERE username = ? AND password = ?";

            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, username);
                stmt.setString(2, password);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    int userId = rs.getInt("userId");
                    String role = rs.getString("role");

                    
                    HttpSession oldSession = request.getSession(false);
                    if (oldSession != null) {
                        oldSession.invalidate();
                    }

                    HttpSession session = request.getSession(true);
                    session.setMaxInactiveInterval(30 * 60); // Session timeout (30 minutes)

                   
                    session.setAttribute("username", username);
                    session.setAttribute("role", role);
                    session.setAttribute("userId", userId);

                    
                    if (role.equals("customer")) {
                        response.sendRedirect("customerHome.jsp");
                    } else if (role.equals("driver")) {
                        response.sendRedirect("driverHome.jsp");
                    } else if (role.equals("admin")) {
                        response.sendRedirect("adminDashboard.jsp");
                    } else {
                        session.invalidate(); 
                        request.setAttribute("errorMessage", "Unauthorized access.");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                } else {
                    request.setAttribute("errorMessage", "Invalid username or password.");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } finally {
            DBConnection.closeConnection(conn);
        }
    }
    
}