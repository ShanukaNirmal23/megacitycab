<%@page import="com.mycompany.megacitycab.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%
    // Retrieve the session and user details from the session
    HttpSession session1 = request.getSession();
    String username = (String) session.getAttribute("username");
    String role = (String) session.getAttribute("role");
    Integer userId = (Integer) session.getAttribute("userId");

    // Fetch user profile details from the database using the userId
    String Name = "";
    String license = "";
    String phone = "";


    if (userId != null) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT name, licenseNo,mobile FROM driver WHERE userId = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, userId);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    Name = rs.getString("name");
                    license = rs.getString("licenseNo");
                    phone = rs.getString("mobile");

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mega City Cab | Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="icon.png">
</head>
<body class="profile-bg">

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-dark px-3">
        <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab</a>
        <div>
            <a href="customerHome.jsp" class="text-white me-3">Dashboard</a>
            <a href="logoutServlet" class="btn btn-danger btn-sm">Logout</a>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg p-4">
                    <div class="text-center">
                        <img src="IMAGES/pp.png" class="rounded-circle border border-3 border-primary" width="120" height="120" alt="Profile Picture">
                        <h2 class="mt-2"><%= Name %></h2>
                        <p class="text-muted"><%= role %></p>
                    </div>
                    <form>
                        <div class="mb-3">
                            <label class="form-label">First Name</label>
                            <input type="text" class="form-control" value="<%= Name %>" readonly>
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">License No</label>
                            <input type="email" class="form-control" value="<%= license %>" readonly>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Phone Number</label>
                            <input type="text" class="form-control" value="<%= phone %>" readonly>
                        </div>
                        
                        <div class="text-center">
                            <button type="submit" class="btn btn-success w-100" disabled>Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="footer mt-auto py-4 bg-dark text-white">
        <div class="container-fluid">
            <div class="row">
                <!-- Help Center -->
                <div class="col-md-3">
                    <h5>Help Center</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white text-decoration-none">FAQs</a></li>
                        <li><a href="#" class="text-white text-decoration-none">Terms & Conditions</a></li>
                        <li><a href="support.html" class="text-white text-decoration-none">Customer Support</a></li>
                    </ul>
                </div>

                <!-- Contact Details -->
                <div class="col-md-3">
                    <h5>Contact Us</h5>
                    <p><i class="fas fa-phone"></i> Hotline: +94 11 234 5678</p>
                    <p><i class="fas fa-envelope"></i> Email: support@megacitycab.com</p>
                    <p><i class="fas fa-map-marker-alt"></i> 123 Main Street, Colombo, Sri Lanka</p>
                </div>

                <!-- Social Media Links -->
                <div class="col-md-2">
                    <h5>Follow Us</h5>
                    <a href="https://www.facebook.com" class="text-white me-2"><img src="IMAGES/fb.png" style="height: 40px"/></a>
                    <a href="https://twitter.com" class="text-white me-2"><img src="IMAGES/x.png" style="height: 40px"/></a>
                    <a href="https://www.instagram.com" class="text-white me-2"><img src="IMAGES/ins.png" style="height: 40px"/></a>
                    <a href="https://www.linkedin.com" class="text-white"><img src="IMAGES/in.png" style="height: 40px"/></a>
                </div>

                <!-- Office Location Map -->
                <div class="col-md-3">
                    <h5>Office Location</h5>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126743.6321540671!2d79.77380331342476!3d6.9218315609222705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae253d10f7a7003%3A0x320b2e4d32d3838d!2sColombo!5e0!3m2!1sen!2slk!4v1741921654029!5m2!1sen!2slk" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>

            <div class="text-center mt-3">
                <p class="mb-0">© 2025 Mega City Cab. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
