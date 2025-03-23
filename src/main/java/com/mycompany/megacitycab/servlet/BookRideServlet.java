package com.mycompany.megacitycab.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.mycompany.megacitycab.util.DBConnection;

@WebServlet("/BookRideServlet")
public class BookRideServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        
        // Ensure customer is logged in
//        Integer customerId = (session != null) ? (Integer) session.getAttribute("customerId") : null;
//        if (customerId == null) {
//            response.sendRedirect("index.jsp");
//            return;
//        }

        // Retrieve form data
        String pickup = request.getParameter("pickup");
        String drop = request.getParameter("drop");
        String rideType = request.getParameter("rideType");
        String fareStr = request.getParameter("fare");

//        if (fareStr == null || fareStr.isEmpty()) {
//            request.setAttribute("errorMessage", "Please calculate the fare before booking.");
//            request.getRequestDispatcher("bookRide.jsp").forward(request, response);
//            return;
//        }

//        double fare = Double.parseDouble(fareStr.replaceAll("[^0-9.]", "")); // Extract numeric fare
        int statusId = 1; // Default status (e.g., "Pending" in status table)

        try (Connection conn = DBConnection.getConnection()) {
            // Assign a random driver (in real system, implement driver assignment logic)
            int driverId = getRandomDriver(conn);

            // Insert booking details
            String sql = "INSERT INTO booking (customerId, driverId, pickup, drop, ride_type, fare, status) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, 1);
            stmt.setInt(2, driverId);
            stmt.setString(3, pickup);
            stmt.setString(4, drop);
            stmt.setString(5, rideType);
            stmt.setDouble(6, 50);
            stmt.setInt(7, statusId);
            stmt.executeUpdate();

            response.sendRedirect("customerHome.jsp?message=Ride booked successfully!");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Booking failed! Try again later.");
            request.getRequestDispatcher("bookRide.jsp").forward(request, response);
        }
    }

    // Fetch a random driver from database (for simplicity, selects first available driver)
    private int getRandomDriver(Connection conn) throws SQLException {
        String sql = "SELECT id FROM driver ORDER BY RAND() LIMIT 1";
        PreparedStatement stmt = conn.prepareStatement(sql);
        var rs = stmt.executeQuery();
        return rs.next() ? rs.getInt("id") : 1; // Default to driver ID 1 if none found
    }
}
