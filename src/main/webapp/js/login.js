function loginUser() {
    // Get form data
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;
    const role = document.getElementById("role").value;

    // Validate form inputs
    if (!username || !password || !role) {
        alert("Please fill in all fields.");
        return;
    }

    // Create an object to hold the form data
    const formData = {
        username: username,
        password: password,
        role: role
    };

    // Send the data to the server using AJAX
    fetch("LoginServlet", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(formData)
    })
    .then(response => response.json()) // Parse the JSON response
    .then(data => {
        if (data.success) {
            // Redirect based on the role
            if (data.role == 1) {
                window.location.href = "customerDashboard.jsp";
            } else if (data.role == 2) {
                window.location.href = "driverDashboard.jsp";
            }
        } else {
            // Display error message
            alert("Login failed: " + data.message);
        }
    })
    .catch(error => {
        console.error("Error:", error);
        alert("An error occurred while logging in.");
    });
}