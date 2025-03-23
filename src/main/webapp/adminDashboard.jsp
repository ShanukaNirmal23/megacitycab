<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%
//    HttpSession sessionAdmin = request.getSession(false);
//    if (sessionAdmin == null || sessionAdmin.getAttribute("admin") == null) {
//        response.sendRedirect("adminLogin.jsp"); // Redirect to login if not authenticated
//    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Mega City Cab | Admin Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
        <link rel="icon" href="icon.png">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>
    <body class="cusdash">

        <!-- Navbar -->
        <nav class="navbar navbar-dark bg-dark px-3">
            <button class="btn btn-light" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling">
                <img src="IMAGES/lines.png" style="height: 35px;" alt="Menu"/>
            </button>
            <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab - Admin</a>
            <div>
                <span class="text-white me-3">👤 Admin</span>
                <a href="logoutServlet" class="btn btn-danger btn-sm">Logout</a>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Admin Dashboard</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="nav flex-column">
                            <li class="nav-item"><a href="manageRides.jsp" class="nav-link">🚖 Manage Rides</a></li>
                            <li class="nav-item"><a href="manageDrivers.jsp" class="nav-link">👨‍✈️ Manage Drivers</a></li>
                            <li class="nav-item"><a href="manageCustomers.jsp" class="nav-link">👥 Manage Customers</a></li>
                            <li class="nav-item"><a href="reports.jsp" class="nav-link">📊 Reports</a></li>
                            <li class="nav-item"><a href="AdminLogoutServlet" class="nav-link text-danger">🚪 Logout</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Main Content -->
                <div class="col-md-12 ms-sm-auto p-4">
                    <h2 class="text-white">Welcome, Admin</h2>
                    <p class="text-white">Manage your operations efficiently.</p>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="card bg-primary text-white shadow">
                                <div class="card-body">
                                    <h5>🚗 Total Rides</h5>
                                    <p>1,250 Completed</p>
                                    <a href="manageRides.jsp" class="btn btn-light btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card bg-warning text-dark shadow">
                                <div class="card-body">
                                    <h5>👨‍✈️ Active Drivers</h5>
                                    <p>120 Available</p>
                                    <a href="manageDrivers.jsp" class="btn btn-dark btn-sm">Manage Drivers</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card bg-success text-white shadow">
                                <div class="card-body">
                                    <h5>👥 Registered Customers</h5>
                                    <p>5,600 Users</p>
                                    <a href="manageCustomers.jsp" class="btn btn-light btn-sm">View Customers</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mt-4">
                        <a href="reports.jsp" class="btn btn-secondary btn-lg w-100">📊 View Reports</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="footer mt-auto py-4 bg-dark text-white">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <h5>Help Center</h5>
                        <ul class="list-unstyled">
                            <li><a href="#" class="text-white text-decoration-none">FAQs</a></li>
                            <li><a href="#" class="text-white text-decoration-none">Terms & Conditions</a></li>
                            <li><a href="support.html" class="text-white text-decoration-none">Customer Support</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h5>Contact Us</h5>
                        <p>📞 Hotline: +94 11 234 5678</p>
                        <p>✉ Email: support@megacitycab.com</p>
                        <p>📍 123 Main Street, Colombo, Sri Lanka</p>
                    </div>
                    <div class="col-md-2">
                        <h5>Follow Us</h5>
                        <a href="#" class="text-white me-2"><img src="IMAGES/fb.png" style="height: 40px"/></a>
                        <a href="#" class="text-white me-2"><img src="IMAGES/x.png" style="height: 40px"/></a>
                        <a href="#" class="text-white me-2"><img src="IMAGES/ins.png" style="height: 40px"/></a>
                        <a href="#" class="text-white"><img src="IMAGES/in.png" style="height: 40px"/></a>
                    </div>
                    <div class="col-md-3">
                        <h5>Office Location</h5>
                        <iframe src="https://www.google.com/maps/embed?..." width="400" height="300" style="border:0;" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="text-center mt-3">
                    <p>© 2025 Mega City Cab. All Rights Reserved.</p>
                </div>
            </div>
        </footer>

        <!-- Bootstrap Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
