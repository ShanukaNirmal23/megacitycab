<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mega City Cab | Ride History</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="icon.png">
</head>
<body class="ride-history-bg">

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-dark px-3">
        <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab</a>
        <div>
            <a href="customerHome.jsp" class="text-white me-3">Dashboard</a>
            <a href="index.html" class="btn btn-danger btn-sm">Logout</a>
        </div>
    </nav>

    <div class="container mt-4">
        <h2 class="text-center text-black">📜 Your Ride History</h2>
        <div class="table-responsive mt-3">
            <table class="table table-striped table-hover bg-white shadow">
                <thead class="bg-dark text-white">
                    <tr>
                        <th>Date</th>
                        <th>Pickup Location</th>
                        <th>Drop Location</th>
                        <th>Fare</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>12 Mar 2025</td>
                        <td>Colombo</td>
                        <td>Negombo</td>
                        <td>Rs.2000</td>
                        <td><span class="badge bg-success">Completed</span></td>
                    </tr>
                    <tr>
                        <td>10 Mar 2025</td>
                        <td>Galle</td>
                        <td>Kandy</td>
                        <td>Rs.7000</td>
                        <td><span class="badge bg-danger">Cancelled</span></td>
                    </tr>
                    <tr>
                        <td>8 Mar 2025</td>
                        <td>Colombo</td>
                        <td>Jaffna</td>
                        <td>Rs.12500</td>
                        <td><span class="badge bg-warning text-dark">Pending</span></td>
                    </tr>
                    <tr>
                        <td>5 Mar 2025</td>
                        <td>Kandy</td>
                        <td>Nuwara Eliya</td>
                        <td>Rs.2000</td>
                        <td><span class="badge bg-success">Completed</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
