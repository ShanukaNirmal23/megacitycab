package com.mycompany.megacitycab.servlet;

import com.mycompany.megacitycab.dao.UserDAO;
import com.mycompany.megacitycab.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Validate input
        if (username == null || username.trim().isEmpty() || 
            password == null || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Username and password are required");
            request.getRequestDispatcher("/index.html").forward(request, response);
            return;
        }
        
        UserDAO userDAO = new UserDAO();
        User user = userDAO.login(username, password);
        
        if (user != null) {
            // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("username", user.getUsername());
            session.setAttribute("role", user.getRole());
            
            // Redirect based on role
            if ("2".equals(user.getRole())) {
                response.sendRedirect("driverHome.jsp");
            } else {
                response.sendRedirect("customerHome.jsp");
            }
        } else {
            // Failed login
            request.setAttribute("errorMessage", "Invalid username or password");
            request.getRequestDispatcher("/index.html").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Check if user is already logged in
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            if ("2".equals(user.getRole())) {
                response.sendRedirect("driverHome.jsp");
            } else {
                response.sendRedirect("customerHome.jsp");
            }
            return;
        }
        
        // If not logged in, show login page
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
}