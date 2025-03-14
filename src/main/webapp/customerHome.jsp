

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Mega City Cab | Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
        <link rel="icon" href="icon.png">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>
    <body class="cusdash">

        <!-- Navbar -->
        <nav class="navbar navbar-dark bg-dark px-3 ">
            <button class="btn btn-light" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling"><img src="IMAGES/lines.png" style="height: 35px;" alt="alt"/></button>
            <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab</a>
            <div>
                <a href="#" class="text-white me-3">Profile</a>
                <a href="index.html" class="btn btn-danger btn-sm">Logout</a>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                

                <div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Dashboard</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="nav flex-column">
                        <li class="nav-item"><a href="bookRide.jsp" class="nav-link">📌 Book a Ride</a></li>
                        <li class="nav-item"><a href="rideHistory.jsp" class="nav-link">📜 Ride History</a></li>
                        <li class="nav-item"><a href="customerProfile.jsp" class="nav-link">👤 Profile</a></li>
                        <li class="nav-item"><a href="index.html" class="nav-link text-danger">🚪 Logout</a></li>
                    </ul>
                    </div>
                </div>
                

                <!-- Main Content -->
                <div class="col-md-12 ms-sm-auto p-4 ">
                    <h2 class="text-white">Welcome to Mega City Cabs!</h2>
                    <p class="text-white">Your personalized riders!</p>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="card bg-primary text-white shadow">
                                <div class="card-body">
                                    <h5>🚗 Last Ride</h5>
                                    <p>Colombo to Negombo - Rs.1200</p>
                                    <small>Status: Completed</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card bg-warning text-dark shadow">
                                <div class="card-body">
                                    <h5>Upcoming Ride</h5>
                                    <p>Colombo to Galle at 5:00 PM</p>
                                    <button class="btn btn-dark btn-sm">View Details</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card bg-success text-white shadow">
                                <div class="card-body">
                                    <h5>🎁 Offers for You</h5>
                                    <p>Flat 10% off on your next ride</p>
                                    <button class="btn btn-light btn-sm">Claim Now</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mt-4">
                        <a href="#" class="btn btn-success btn-lg w-100">🚖 Book a Ride Now</a>
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

        <!-- FontAwesome for Icons -->
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>


</html>


