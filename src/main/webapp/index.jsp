<!DOCTYPE html>
<html>
    <head>
        <title>Mega City Cab | LOG IN</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="style.css">
        <!-- Favicon -->
        <link rel="icon" href="icon.png">
    </head>
    <body class="loginback">
        <div class="container">
            <div class="row justify-content-center">
                <div class="mt-3"></div>
                <div class="col-md-4 mt-5">
                    <!-- Login Container -->
                    <div class="login-container mt-5 p-4 border rounded shadow bg-white">
                        <h2 class="mb-4 text-center">LOG IN</h2>
                        <!-- Login Form -->
                        <form id="loginForm" action="LoginServlet" method="post">
                            <!-- Username Field -->
                            <div class="mb-3">
                                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
                            </div>
                            <!-- Password Field -->
                            <div class="mb-3">
                                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                            </div>
                            <!-- Role Selection -->
                            <div class="mb-3">
                                <select id="role" name="role" class="form-select" required>
                                    <option value="">Select User Role</option>
                                    <option value="customer">Customer</option>
                                    <option value="driver">Driver</option>
                                </select>
                            </div>
                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-success w-100">Login</button>
                        </form>
                        <!-- Sign Up Link -->
                        <div class="signup-link mt-3 text-center">
                            <p>Not a member? <a href="signup.jsp" class="text-primary fw-bold">Sign Up Now</a></p>
                        </div>
                        <!-- Error Message Display -->
                        <p id="errorMessage" class="text-danger text-center mt-2">
                            <% if (request.getAttribute("errorMessage") != null) {%>
                            <%= request.getAttribute("errorMessage")%>
                            <% }%>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>