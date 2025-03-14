/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function loginUser() {
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;
    let role = document.getElementById("role").value;
     let errorMessage = document.getElementById("message");



//    alert(role);


    // Validate input fields
    if (username === "" || password === "" || role === "") {
        errorMessage.innerText = "All fields are required!";
        return;
    }

    // Prepare form data
    var form = new FormData();
    form.append("username", username);
    form.append("password", password);
    form.append("role", role);

    var r = new XMLHttpRequest();
    r.onreadystatechange = function () {
        if (r.readyState == 4) {
            var t = r.responseText;
            if (t == "Success") {
                window.location.href = "customerHome.jsp";
            } else {
                errorMessage.innerText = "Invalid Username, Password, or Role!";
            }
        }
    };

    r.open("POST", "login", true);
    r.send(form);

}
