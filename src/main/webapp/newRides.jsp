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
            <a href="driverDashboard.jsp" class="text-white me-3">Dashboard</a>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
