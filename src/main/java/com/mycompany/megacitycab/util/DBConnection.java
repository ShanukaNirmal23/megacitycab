package com.mycompany.megacitycab.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    // Database credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/mega_city_cab";
    private static final String DB_USER = "root"; // Replace with your MySQL username
    private static final String DB_PASSWORD = "Shanuka@123"; // Replace with your MySQL password

    // Method to get a database connection
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        // Load MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish and return the connection
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

    // Method to close the database connection
    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static Connection initializeDatabase() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}