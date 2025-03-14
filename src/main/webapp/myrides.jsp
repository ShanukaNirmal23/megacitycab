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
            <a href="index.html" class="btn btn-danger btn-sm">Logout</a>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
