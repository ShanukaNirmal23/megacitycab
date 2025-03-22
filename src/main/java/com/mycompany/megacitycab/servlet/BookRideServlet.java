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
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/BookRideServlet")
public class BookRideServlet extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve username from the session
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        // Check if the user is logged in
        if (username == null) {
            response.sendRedirect("index.jsp"); // Redirect to login page if the user is not logged in
            return;
        }

        // Retrieve form data
        String pickupLocation = request.getParameter("pickupLocation");
        String dropLocation = request.getParameter("dropLocation");
        String rideType = request.getParameter("rideType");
        String fare = request.getParameter("fare");

        Connection conn = null;
        try {
            // Get a database connection
            conn = DBConnection.getConnection();

            // Fetch customer ID from the database using the username
            int customerId = 0;
            String sqlFetchCustomerId = "SELECT id FROM user WHERE username = ?";
            try (PreparedStatement stmtFetchCustomerId = conn.prepareStatement(sqlFetchCustomerId)) {
                stmtFetchCustomerId.setString(1, username);
                ResultSet rs = stmtFetchCustomerId.executeQuery();
                if (rs.next()) {
                    customerId = rs.getInt("id");
                } else {
                    // Customer not found
                    request.setAttribute("errorMessage", "Customer not found. Please log in again.");
                    request.getRequestDispatcher("bookride.jsp").forward(request, response);
                    return;
                }
            }

            // Default values for driver_id and status
            int driverId = 1; // Assign a default driver (e.g., driver with ID 1)
            String status = "Pending"; // Default status

            // Insert booking details into the database
            String sqlInsertBooking = "INSERT INTO booking (customerId, driverId, pickup, drop, ride_type, fare, status) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmtInsertBooking = conn.prepareStatement(sqlInsertBooking)) {
                stmtInsertBooking.setInt(1, customerId);
                stmtInsertBooking.setInt(2, driverId);
                stmtInsertBooking.setString(3, pickupLocation);
                stmtInsertBooking.setString(4, dropLocation);
                stmtInsertBooking.setString(5, rideType);
                stmtInsertBooking.setString(6, fare);
                stmtInsertBooking.setString(7, status);

                int rowsInserted = stmtInsertBooking.executeUpdate();
                if (rowsInserted > 0) {
                    // Booking successful
                    response.sendRedirect("bookingConfirmation.jsp");
                } else {
                    // Booking failed
                    request.setAttribute("errorMessage", "Booking failed. Please try again.");
                    request.getRequestDispatcher("bookride.jsp").forward(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("bookride.jsp").forward(request, response);
        } finally {
            // Close the connection
            DBConnection.closeConnection(conn);
        }
    }

}
