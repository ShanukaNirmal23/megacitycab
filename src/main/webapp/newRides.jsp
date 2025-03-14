<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mega City Cab | New Rides</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="icon.png">
</head>
<body class="new-rides-bg">

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-dark px-3">
        <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab</a>
        <div>
            <a href="driverHome.jsp" class="text-white me-3">Dashboard</a>
            <a href="index.html" class="btn btn-danger btn-sm">Logout</a>
        </div>
    </nav>

    <div class="container mt-4">
        <h2 class="text-center text-white">🚗 New Ride Requests</h2>

        <!-- Ride Request Cards -->
        <div class="row justify-content-center mt-3">
            <!-- Ride 1 -->
            <div class="col-md-6 mt-3">
                <div class="card shadow-lg p-3">
                    <h5 class="card-title">🛑 Pickup: Colombo</h5>
                    <h6 class="card-subtitle text-muted">📍 Drop: Negombo</h6>
                    <p class="card-text mt-2">Customer: <b>Ashen Silva</b></p>
                    <p class="card-text">📞 Contact: +94 77 123 4567</p>
                    <p class="card-text">💰 Fare: Rs. 2500</p>
                    <div class="d-flex justify-content-between">
                        <button class="btn btn-success">✅ Accept</button>
                        <button class="btn btn-danger">❌ Reject</button>
                    </div>
                </div>
            </div>

            <!-- Ride 2 -->
            <div class="col-md-6 mt-3">
                <div class="card shadow-lg p-3">
                    <h5 class="card-title">🛑 Pickup: Kandy</h5>
                    <h6 class="card-subtitle text-muted">📍 Drop: Galle</h6>
                    <p class="card-text mt-2">Customer: <b>Sarah Perera</b></p>
                    <p class="card-text">📞 Contact: +94 71 987 6543</p>
                    <p class="card-text">💰 Fare: Rs. 5500</p>
                    <div class="d-flex justify-content-between">
                        <button class="btn btn-success">✅ Accept</button>
                        <button class="btn btn-danger">❌ Reject</button>
                    </div>
                </div>
            </div>

            <!-- More rides can be dynamically loaded -->
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
