<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login | Mega City Cab</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body class="admin-login-bg">
    
    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="card p-4 shadow-lg rounded" style="width: 400px;">
            <div class="text-center">
                <h3 class="mb-3 fw-bold">Admin Login</h3>
                <p class="text-muted">Sign in to manage Mega City Cab</p>
            </div>
            
            <!-- Login Form -->
            <form action="adminLoginServlet" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" name="username" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" required>
                </div>
                
                <!-- Display Error Message if Login Fails -->
                <% if (request.getAttribute("errorMessage") != null) { %>
                    <p class="text-danger text-center"><%= request.getAttribute("errorMessage") %></p>
                <% } %>
                
                <button type="submit" class="btn btn-dark w-100">Login</button>
            </form>
        </div>
    </div>

    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
