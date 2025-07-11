package com.Db;

import java.sql.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@SuppressWarnings("serial")
public class DBConnectionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection cn = null;
        PreparedStatement ps = null;
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
			/* database connectivity :) */
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver loaded successfully!");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamtrail?allowPublicKeyRetrieval=true&useSSL=false&user=root&password=123456");
            System.out.println("Connection established successfully!");
			/* storing values */
            String sql = "INSERT INTO Users (username, email, password) VALUES (?, ?, ?)";
            ps = cn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            int result = ps.executeUpdate();

            if (result > 0) {
                // Registration successful, store username in session
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                // Redirect to second.jsp
                response.sendRedirect("second.jsp");
            } else {
                request.setAttribute("error", "Registration failed. Please try again.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request, response);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Database connection error
            request.setAttribute("error", "Database connection error: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        } finally {
            try {
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}