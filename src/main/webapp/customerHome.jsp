

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
                <h4>Dashboard</h4>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="bookRide.jsp" class="nav-link">📌 Book a Ride</a></li>
                    <li class="nav-item"><a href="rideHistory.jsp" class="nav-link">📜 Ride History</a></li>
                    <li class="nav-item"><a href="customerProfile.jsp" class="nav-link">👤 Profile</a></li>
                    <li class="nav-item"><a href="index.html" class="nav-link text-danger">🚪 Logout</a></li>
                </ul>
            </nav>

            <!-- Main Content -->
            <div class="col-md-9 ms-sm-auto p-4 ">
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>


</html>


