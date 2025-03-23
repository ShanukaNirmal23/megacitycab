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
                                <input type="text" id="username" name="username" class="form-control" placeholder="Username" aria-label="Username" required>
                            </div>
                            <!-- Password Field -->
                            <div class="mb-3">
                                <input type="password" id="password" name="password" class="form-control" placeholder="Password" aria-label="Password" required>
                            </div>
                            <!-- Remember Me Checkbox -->
                            <div class="mb-3 form-check">
                                <input type="checkbox" id="rememberMe" name="rememberMe" class="form-check-input">
                                <label class="form-check-label" for="rememberMe">Remember Me</label>
                            </div>
                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-success w-100">Login</button>
                        </form>
                        <!-- Forgot Password Link -->
                        <div class="forgot-password mt-2 text-center">
                            <p><a href="forgot-password.jsp" class="text-primary">Forgot Password?</a></p>
                        </div>
                        <!-- Sign Up Link (Only for Customers) -->
                        <div class="signup-link mt-3 text-center">
                            <p>Not a member? <a href="signup.jsp" class="text-primary fw-bold">Sign Up Now</a></p>
                        </div>
                        <!-- Error Message Display -->
                        <div id="errorMessage" class="text-center mt-2">
                            <% if (request.getAttribute("errorMessage") != null) {%>
                            <div class="alert alert-danger" role="alert">
                                <%= request.getAttribute("errorMessage")%>
                            </div>
                            <% }%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Optional: Add JavaScript for Remember Me functionality -->
        <script>
            // Check if "Remember Me" was previously checked and populate the username field
            document.addEventListener("DOMContentLoaded", function() {
                const rememberMe = localStorage.getItem("rememberMe") === "true";
                if (rememberMe) {
                    document.getElementById("username").value = localStorage.getItem("username");
                    document.getElementById("rememberMe").checked = true;
                }
            });

            // Save username to localStorage if "Remember Me" is checked
            document.getElementById("loginForm").addEventListener("submit", function() {
                const rememberMe = document.getElementById("rememberMe").checked;
                const username = document.getElementById("username").value;
                if (rememberMe) {
                    localStorage.setItem("rememberMe", "true");
                    localStorage.setItem("username", username);
                } else {
                    localStorage.removeItem("rememberMe");
                    localStorage.removeItem("username");
                }
            });
        </script>
    </body>
</html>