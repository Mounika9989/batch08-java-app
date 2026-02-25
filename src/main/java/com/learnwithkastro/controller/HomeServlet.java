package com.learnwithkastro.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        // Set dynamic data
        req.setAttribute("currentYear", java.time.Year.now().getValue());
        req.setAttribute("enrolledCount", "3,568");
        req.setAttribute("successRate", "98.7%");
        req.setAttribute("rating", "4.00");
        
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
