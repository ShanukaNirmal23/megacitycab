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
        // Retrieve form data
        String pickup = request.getParameter("pickup");
        String drop = request.getParameter("drop");
        String rideType = request.getParameter("rideType");
        String fare = request.getParameter("fare");

//        // Get customer ID from session
//        HttpSession session = request.getSession();
        Integer customerId = 1;
//
//        if (customerId == null) {
//            // Redirect to login if customer is not logged in
//            response.sendRedirect("index.jsp");
//            return;
//        }

        Connection conn = null;
        try {
            // Get a database connection
            conn = DBConnection.getConnection();

            // Step 1: Assign a driver (randomly for now)
            int driverId = assignDriver(conn);

            if (driverId == -1) {
                // No available drivers
                request.setAttribute("errorMessage", "No drivers available at the moment. Please try again later.");
                request.getRequestDispatcher("bookRide.jsp").forward(request, response);
                return;
            }

            // Step 2: Insert booking into the database
            String sqlInsertBooking = "INSERT INTO booking (customerId, driverId, pickup, drop, ride_type, fare, status) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmtInsertBooking = conn.prepareStatement(sqlInsertBooking)) {
                stmtInsertBooking.setInt(1, customerId);
                stmtInsertBooking.setInt(2, driverId);
                stmtInsertBooking.setString(3, pickup);
                stmtInsertBooking.setString(4, drop);
                stmtInsertBooking.setString(5, rideType);
                stmtInsertBooking.setString(6, fare);
                stmtInsertBooking.setInt(7, 1); // Status ID 1 = "Pending"

                int rowsInserted = stmtInsertBooking.executeUpdate();
                if (rowsInserted > 0) {
                    // Booking successful
                    response.sendRedirect("bookingConfirmation.jsp");
                } else {
                    // Booking failed
                    request.setAttribute("errorMessage", "Failed to book the ride. Please try again.");
                    request.getRequestDispatcher("bookRide.jsp").forward(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("bookRide.jsp").forward(request, response);
        } finally {
            // Close the connection
            DBConnection.closeConnection(conn);
        }
    }

    /**
     * Assigns a driver randomly (for demo purposes).
     * In a real application, this should check driver availability and proximity.
     */
    private int assignDriver(Connection conn) throws SQLException {
        String sqlGetDriver = "SELECT driverId FROM driver ORDER BY RAND() LIMIT 1";
        try (PreparedStatement stmtGetDriver = conn.prepareStatement(sqlGetDriver)) {
            ResultSet rs = stmtGetDriver.executeQuery();
            if (rs.next()) {
                return rs.getInt("driverId");
            }
        }
        return -1; // No drivers available
    }

}
