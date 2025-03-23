<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mega City Cab | My Rides</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="icon.png">
</head>
<body class="driver-rides-bg">

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-dark px-3">
        <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab</a>
        <div>
            <a href="driverHome.jsp" class="text-white me-3">Dashboard</a>
            <a href="logoutServlet" class="btn btn-danger btn-sm">Logout</a>
        </div>
    </nav>

    <div class="container mt-4">
        <h2 class="text-center text-white">📜 My Rides</h2>

        <!-- Tabs for New & Completed Rides -->
        <ul class="nav nav-tabs mt-3" id="rideTabs">
            <li class="nav-item ">
                <a class="nav-link active" data-bs-toggle="tab" href="#newRides">🆕 New Rides</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#completedRides">✅ Completed Rides</a>
            </li>
        </ul>

        <div class="tab-content mt-3">
            <!-- New Rides -->
            <div id="newRides" class="tab-pane fade show active">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card shadow-lg p-3">
                            <h5 class="card-title">👤 Customer: Ashen Silva</h5>
                            <h6 class="card-subtitle text-muted">🛑 Pickup: Colombo</h6>
                            <h6 class="card-subtitle text-muted">📍 Drop: Negombo</h6>
                            <p class="card-text mt-2">📅 Date: Mar 15, 2025</p>
                            <p class="card-text">💰 Fare: Rs. 2500</p>
                            <p class="text-warning">Status: Waiting for Driver</p>
                            <button class="btn btn-warning btn-sm">❌ Cancel</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Completed Rides -->
            <div id="completedRides" class="tab-pane fade">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card shadow-lg p-3">
                            <h5 class="card-title">👤 Customer: Sarah Lee</h5>
                            <h6 class="card-subtitle text-muted">🛑 Pickup: Kandy</h6>
                            <h6 class="card-subtitle text-muted">📍 Drop: Galle</h6>
                            <p class="card-text mt-2">📅 Date: Mar 10, 2025</p>
                            <p class="card-text">💰 Fare: Rs. 5500</p>
                            <p class="text-success">Status: Completed</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card shadow-lg p-3">
                            <h5 class="card-title">👤 Customer: Wasantha Fernando</h5>
                            <h6 class="card-subtitle text-muted">🛑 Pickup: Colombo</h6>
                            <h6 class="card-subtitle text-muted">📍 Drop: Galle</h6>
                            <p class="card-text mt-2">📅 Date: Mar 10, 2025</p>
                            <p class="card-text">💰 Fare: Rs. 10500</p>
                            <p class="text-success">Status: Completed</p>
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6">
                        <div class="card shadow-lg p-3">
                            <h5 class="card-title">👤 Customer: Kumari Perera</h5>
                            <h6 class="card-subtitle text-muted">🛑 Pickup: Colombo
                            <h6 class="card-subtitle text-muted">📍 Drop:Bambalapitiya
                            <p class="card-text mt-2">📅 Date: Mar 10, 2025</p>
                            <p class="card-text">💰 Fare: Rs. 1000</p>
                            <p class="text-success">Status: Completed</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card shadow-lg p-3">
                            <h5 class="card-title">👤 Customer: Nuwan Pradeep</h5>
                            <h6 class="card-subtitle text-muted">🛑 Pickup: Negombo</h6>
                            <h6 class="card-subtitle text-muted">📍 Drop: Colombo</h6>
                            <p class="card-text mt-2">📅 Date: Mar 10, 2025</p>
                            <p class="card-text">💰 Fare: Rs. 5500</p>
                            <p class="text-success">Status: Completed</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
    <footer class="footer mt-auto py-4 bg-dark text-white mt-4">
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
