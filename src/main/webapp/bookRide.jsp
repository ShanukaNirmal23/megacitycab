

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mega City Cab | Book a Ride</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="icon.png">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body class="bookride-bg">

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-dark px-3">
        <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab</a>
        <div>
            <a href="customerHome.jsp" class="text-white me-3">Dashboard</a>
            <a href="index.html" class="btn btn-danger btn-sm">Logout</a>
        </div>
    </nav>

    <!-- Booking Form Container -->
    <div class="container mt-3">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <h3 class="text-center">📌 Book Your Ride</h3>
                        <form id="rideForm">
                            <div class="mb-3">
                                <label class="form-label">Pickup Location</label>
                                
                                <input type="text" id="pickup" class="form-control" placeholder="Enter pickup location" required>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d63372.5010609498!2d79.8482628!3d6.9167283!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae253d10f7a7003%3A0x320b2e4d32d3838d!2sColombo!5e0!3m2!1sen!2slk!4v1741890441728!5m2!1sen!2slk" width="600" height="250" style="border:0; margin-top: 5px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Drop Location</label>
                                <input type="text" id="drop" class="form-control" placeholder="Enter drop location" required>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2406643.9855233873!2d79.88193078901783!3d7.830627881078105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2593cf65a1e9d%3A0xe13da4b400e2d38c!2sSri%20Lanka!5e0!3m2!1sen!2slk!4v1741890644246!5m2!1sen!2slk" width="600" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Select Ride Type</label>
                                <select id="rideType" class="form-select">
                                    <option value="Mini">🚗 Mini - Rs.30/km</option>
                                    <option value="Sedan">🚙 Sedan - Rs.50/km</option>
                                    <option value="SUV">🚘 SUV - Rs.70/km</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Estimated Fare</label>
                                <input type="text" id="fare" class="form-control" disabled>
                            </div>
                            <button type="button" class="btn btn-warning w-100" onclick="calculateFare()">📍 Get Fare</button>
                            <button type="submit" class="btn btn-success w-100 mt-2">🚖 Confirm Booking</button>
                        </form>
                    </div>
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
    <script>
        function calculateFare() {
            let rideType = document.getElementById("rideType").value;
            let fare = 0;

            // Setting fare per km based on ride type
            if (rideType === "Mini") fare = 30;
            else if (rideType === "Sedan") fare = 50;
            else if (rideType === "SUV") fare = 70;

            // Random distance for demo (can be integrated with Google Maps API)
            let distance = Math.floor(Math.random() * 20) + 5; // Random distance between 5-25 km

            let totalFare = distance * fare;
            document.getElementById("fare").value = "Rs. " + totalFare + " (Estimated)";
        }

        document.getElementById("rideForm").onsubmit = function(event) {
            event.preventDefault();
            alert("🚖 Your ride has been booked successfully!");
        };
    </script>
</body>
</html>

