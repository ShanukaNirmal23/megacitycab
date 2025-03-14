<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mega City Cab | Driver Earnings</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="icon.png">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="driver-earnings-bg">

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-dark px-3">
        <a class="navbar-brand fw-bold" href="#">🚖 Mega City Cab</a>
        <div>
            <a href="driverDashboard.jsp" class="text-white me-3">Dashboard</a>
            <a href="index.html" class="btn btn-danger btn-sm">Logout</a>
        </div>
    </nav>

    <div class="container mt-4">
        <h2 class="text-center text-white">💰 My Earnings</h2>

        <!-- Earnings Summary -->
        <div class="row text-center mt-4">
            <div class="col-md-4">
                <div class="card bg-success text-white p-3 shadow">
                    <h5>Today's Earnings</h5>
                    <h3>Rs. 3,500</h3>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-primary text-white p-3 shadow">
                    <h5>This Week</h5>
                    <h3>Rs. 21,000</h3>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-warning text-dark p-3 shadow">
                    <h5>This Month</h5>
                    <h3>Rs. 85,000</h3>
                </div>
            </div>
        </div>

        <!-- Earnings Chart -->
        <div class="card shadow-lg mt-4 p-4">
            <h4 class="text-center">📊 Earnings Trend</h4>
            <canvas id="earningsChart"></canvas>
        </div>

        <!-- Recent Rides Earnings -->
        <div class="card shadow-lg mt-4 p-4">
            <h4 class="text-center">📜 Recent Rides</h4>
            <table class="table table-striped mt-3">
                <thead class="table-dark">
                    <tr>
                        <th>Date</th>
                        <th>Customer</th>
                        <th>Pickup</th>
                        <th>Drop</th>
                        <th>Fare (Rs.)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Mar 13, 2025</td>
                        <td>Shanuka Nirmal</td>
                        <td>Colombo</td>
                        <td>Negombo</td>
                        <td>1,500</td>
                    </tr>
                    <tr>
                        <td>Mar 12, 2025</td>
                        <td>Ashen Silva</td>
                        <td>Kandy</td>
                        <td>Galle</td>
                        <td>4,500</td>
                    </tr>
                    <tr>
                        <td>Mar 11, 2025</td>
                        <td>Nirodha Fernando</td>
                        <td>Jaffna</td>
                        <td>Colombo</td>
                        <td>9,000</td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        // Chart for earnings trend
        var ctx = document.getElementById('earningsChart').getContext('2d');
        var earningsChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4'],
                datasets: [{
                    label: 'Earnings (Rs.)',
                    data: [18000, 22000, 25000, 19000],
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 2
                }]
            },
            options: {
                responsive: true
            }
        });
    </script>

</body>
</html>
