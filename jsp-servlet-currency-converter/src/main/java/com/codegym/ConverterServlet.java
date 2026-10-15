package com.codegym;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ConverterServlet", urlPatterns = {"/convert"})
public class ConverterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            try {
                float rate = Float.parseFloat(request.getParameter("rate"));
                float usd = Float.parseFloat(request.getParameter("usd"));
                
                float vnd = rate * usd;
                
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head><title>Result</title></head>");
                out.println("<body style='font-family: Arial, sans-serif; text-align: center; margin-top: 100px;'>");
                out.println("<h2 style='color: #1b2a7a;'>K?T QU? CHUY?N Ð?I</h2>");
                out.println("<p style='font-size: 18px;'>T? giá: " + rate + " VND/USD</p>");
                out.println("<p style='font-size: 18px;'>S? ti?n USD: $" + usd + "</p>");
                out.println("<h3 style='color: #27ae60; font-size: 24px;'>Thành ti?n VNÐ: " + vnd + " VNÐ</h3>");
                out.println("<br><a href='index.jsp' style='text-decoration: none; padding: 10px 20px; background-color: #1b2a7a; color: white; border-radius: 4px;'>Quay l?i</a>");
                out.println("</body>");
                out.println("</html>");
                
            } catch (NumberFormatException e) {
                out.println("<!DOCTYPE html>");
                out.println("<html><body>");
                out.println("<h2 style='color: red; text-align: center; margin-top: 100px;'>L?i: Vui lòng nh?p s? h?p l?!</h2>");
                out.println("<div style='text-align: center;'><a href='index.jsp'>Quay l?i</a></div>");
                out.println("</body></html>");
            }
        }
    }
}
