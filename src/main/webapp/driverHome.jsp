<%-- 
    Document   : driverHome
    Created on : Mar 13, 2025, 10:13:33 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mega City Cab | Driver Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="icon.png">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body class="driverdash">

    <div class="row container-fluid">
    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-dark px-3">
        <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab</a>
        <div>
            <a href="#" class="text-white me-3">Profile</a>
            <a href="index.html" class="btn btn-danger btn-sm">Logout</a>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 col-lg-2 d-md-block bg-light sidebar p-3">
                <h4>Driver Panel</h4>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="#" class="nav-link">📌 New Rides</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">🚗 My Rides</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">💰 Earnings</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">👤 Profile</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-danger">🚪 Logout</a></li>
                </ul>
            </nav>

            <!-- Main Content -->
            <div class="col-md-9 ms-sm-auto p-4">
                <h2 class="text-white">Welcome, Driver!</h2>
                <p class="text-white">Manage your rides and earnings easily.</p>

                <div class="row">
                    <div class="col-md-4">
                        <div class="card bg-info text-white shadow">
                            <div class="card-body">
                                <h5>🚗 Today's Rides</h5>
                                <p>3 Rides Assigned</p>
                                <button class="btn btn-light btn-sm">View Details</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card bg-success text-white shadow">
                            <div class="card-body">
                                <h5>💰 Total Earnings</h5>
                                <p>Rs. 5,800</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card bg-warning text-dark shadow">
                            <div class="card-body">
                                <h5>🚖 Available Ride</h5>
                                <p>Pickup: Colombo | Drop: Kandy</p>
                                <button class="btn btn-dark btn-sm">Accept</button>
                                <button class="btn btn-danger btn-sm">Reject</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="mt-4">
                    <a href="#" class="btn btn-primary btn-lg w-100">📌 Check for New Rides</a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </div>
</body>
</html>

