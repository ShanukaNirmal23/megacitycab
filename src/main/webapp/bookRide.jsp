<%-- 
    Document   : bookRide
    Created on : Mar 13, 2025, 10:33:37 PM
    Author     : ASUS
--%>

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
            <a href="dashboard.jsp" class="text-white me-3">Dashboard</a>
            <a href="index.html" class="btn btn-danger btn-sm">Logout</a>
        </div>
    </nav>

    <!-- Booking Form Container -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <h3 class="text-center">📌 Book Your Ride</h3>
                        <form id="rideForm">
                            <div class="mb-3">
                                <label class="form-label">Pickup Location</label>
                                <input type="text" id="pickup" class="form-control" placeholder="Enter pickup location" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Drop Location</label>
                                <input type="text" id="drop" class="form-control" placeholder="Enter drop location" required>
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
                            <button type="button" class="btn btn-primary w-100" onclick="calculateFare()">📍 Get Fare</button>
                            <button type="submit" class="btn btn-success w-100 mt-2">🚖 Confirm Booking</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

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

