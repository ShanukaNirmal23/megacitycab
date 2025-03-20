/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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

/**
 *
 * @author ASUS
 */
@WebServlet("/SignUpServlet")
public class signUpServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String nic = request.getParameter("nic");
        String mobile = request.getParameter("mobile");


        Connection conn = null;
        try {
            // Get a database connection
            conn = DBConnection.getConnection();

            // Insert user into the database
            String sql = "INSERT INTO customer (firstname, lastname, nic, mobile,email) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, firstname);
                stmt.setString(2, lastname);
                stmt.setString(3, nic);
                stmt.setString(4, mobile);
                stmt.setString(5, email);


                int rowsInserted = stmt.executeUpdate();
                if (rowsInserted > 0) {
                    // Signup successful
                    response.sendRedirect("enterCredentials.jsp");
                } else {
                    // Signup failed
                    request.setAttribute("errorMessage", "Signup failed. Please try again.");
                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } finally {
            // Close the connection
            DBConnection.closeConnection(conn);
        }
    }

    
   

}
