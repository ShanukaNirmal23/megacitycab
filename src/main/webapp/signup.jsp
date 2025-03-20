<!DOCTYPE html>
<html>
    <head>
        <title>Mega City Cab | Sign Up</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="style.css">
        <!-- Favicon -->
        <link rel="icon" href="icon.png">
    </head>
    <body class="signupback">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="signup-container mt-5 p-4 border rounded shadow bg-white">
                        <h2 class="mb-4 text-center">SIGN UP</h2>
                        <!-- Sign Up Form -->
                        <form action="SignUpServlet" method="post">
                            <!-- First Name -->
                            <div class="mb-3">
                                <input type="text" name="firstname" class="form-control" placeholder="First Name" required>
                            </div>
                            <!-- Last Name -->
                            <div class="mb-3">
                                <input type="text" name="lastname" class="form-control" placeholder="Last Name" required>
                            </div>
                            <!-- Email -->
                            <div class="mb-3">
                                <input type="email" name="email" class="form-control" placeholder="Email" required>
                            </div>
                            <!-- NIC -->
                            <div class="mb-3">
                                <input type="text" name="nic" class="form-control" placeholder="NIC" required>
                            </div>
                            <!-- Mobile -->
                            <div class="mb-3">
                                <input type="tel" name="mobile" class="form-control" placeholder="Mobile" required>
                            </div>
                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-primary w-100">Sign Up</button>
                        </form>
                        <!-- Login Link -->
                        <div class="login-link mt-3 text-center">
                            <p>Already have an account? <a href="index.jsp" class="text-primary fw-bold">Log In</a></p>
                        </div>
                        <!-- Error Message Display -->
                        <p id="errorMessage" class="text-danger text-center mt-2">
                            <% if (request.getAttribute("errorMessage") != null) { %>
                                <%= request.getAttribute("errorMessage") %>
                            <% } %>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>