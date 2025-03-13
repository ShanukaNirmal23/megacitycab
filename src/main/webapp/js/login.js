/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function loginUser() {
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;
    let role = document.getElementById("role").value;
    let errorMessage = document.getElementById("error-message");

//    alert(role);


    // Validate input fields
    if (username === "" || password === "" || role === "") {
        errorMessage.innerText = "All fields are required!";
        return;
    }

    // Prepare form data
    let formData = new FormData();
    formData.append("username", username);
    formData.append("password", password);
    formData.append("role", role);

    // Send login request to the servlet
    fetch("/login", {
        method: "POST",
        body: formData
    })
            .then(response => response.text())
            .then(data => {
                if (data.includes("Success")) {
                    window.location.href = "customerHome.jsp";  // Redirect to dashboard on success
                } else {
//            errorMessage.innerText = "Invalid Username, Password, or Role!";
                    window.location.href = "customerHome.jsp";
                }
            })
            .catch(error => {
                console.error("Error:", error);
                errorMessage.innerText = "Server Error. Please try again later.";
            });
}
