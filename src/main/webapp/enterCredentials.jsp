<!DOCTYPE html>
<html>
    <head>
        <title>Mega City Cab | Enter Credentials</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="style.css">
        <!-- Favicon -->
        <link rel="icon" href="icon.png">
    </head>
    <body class="credentialsback">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-4 mt-5">
                    <div class="credentials-container mt-5 p-4 border rounded shadow bg-white">
                        <h2 class="mb-4 text-center">Enter Credentials</h2>
                        <!-- Credentials Form -->
                        <form action="SaveCredentialsServlet" method="post">
                            <!-- Username -->
                            <div class="mb-3">
                                <input type="text" name="username" class="form-control" placeholder="Username" required>
                            </div>
                            <!-- Password -->
                            <div class="mb-3">
                                <input type="password" name="password" class="form-control" placeholder="Password" required>
                            </div>
                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-primary w-100">Save Credentials</button>
                        </form>
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