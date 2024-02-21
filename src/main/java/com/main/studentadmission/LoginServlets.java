package com.main.studentadmission;


import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginServlets")
public class LoginServlets extends HttpServlet {

    private static final long serialVersionUID = 1L;

    //Expected valid Username and Password
    private static final String VALID_USERNAME = "admin";
    private static final String VALID_PASSWORD = "admin@VB3";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve user inputs from the form
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if provided credentials match the expected values
        boolean isAuthenticated = VALID_USERNAME.equals(username) && VALID_PASSWORD.equals(password);

        // Prepare the response based on authentication result
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><body>");

        if (isAuthenticated) {
            out.println("<h2>Welcome, " + username + "!</h2>");
        } else {
            out.println("<h2>Authentication failed. Please try again!!</h2>");
            out.println("<a href=\"index.jsp\">Back to Login Page</a>");
        }

        out.println("</body></html>");
    }

}


