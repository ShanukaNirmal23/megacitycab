/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.megacitycab.servlet;

import com.mycompany.megacitycab.util.DBConnection;
import jakarta.mail.event.StoreEvent;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String nic = request.getParameter("nic");
        String mobile = request.getParameter("mobile");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        


        Connection conn = null;
        try {
            conn = DBConnection.getConnection();

           
            String sqlInsertUser = "INSERT INTO user (username, password, role) VALUES (?, ?, 'customer')";
            int userId = 0;
            try (PreparedStatement stmtInsertUser = conn.prepareStatement(sqlInsertUser, PreparedStatement.RETURN_GENERATED_KEYS)) {
                stmtInsertUser.setString(1, username);
                stmtInsertUser.setString(2, password); 

                int rowsInserted = stmtInsertUser.executeUpdate();
                if (rowsInserted > 0) {
                
                    ResultSet rs = stmtInsertUser.getGeneratedKeys();
                    if (rs.next()) {
                        userId = rs.getInt(1); 
                    }
                } else {
                
                    request.setAttribute("errorMessage", "Signup failed. Please try again.");
                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                    return;
                }
            }

            
            if (userId > 0) {
                String sqlInsertCustomer = "INSERT INTO customer (userId, firstname, lastname, email, nic, mobile) VALUES (?, ?, ?, ?, ?, ?)";
                try (PreparedStatement stmtInsertCustomer = conn.prepareStatement(sqlInsertCustomer)) {
                    stmtInsertCustomer.setInt(1, userId);
                    stmtInsertCustomer.setString(2, firstname);
                    stmtInsertCustomer.setString(3, lastname);
                    stmtInsertCustomer.setString(4, email);
                    stmtInsertCustomer.setString(5, nic);
                    stmtInsertCustomer.setString(6, mobile);

                    int rowsInserted = stmtInsertCustomer.executeUpdate();
                    if (rowsInserted > 0) {
                        // Signup successful
                        response.sendRedirect("index.jsp?success=1"); 
                    } else {
                       
                        request.setAttribute("errorMessage", "Signup failed. Please try again.");
                        request.getRequestDispatcher("signup.jsp").forward(request, response);
                    }
                }
            } else {
               
                request.setAttribute("errorMessage", "Signup failed. Please try again.");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } finally {

            DBConnection.closeConnection(conn);
        }
    }

   

}
