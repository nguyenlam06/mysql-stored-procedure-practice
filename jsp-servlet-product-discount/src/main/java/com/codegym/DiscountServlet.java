package com.codegym;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "DiscountServlet", urlPatterns = {"/display-discount"})
public class DiscountServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String description = request.getParameter("description");
        
        try (PrintWriter out = response.getWriter()) {
            try {
                double price = Double.parseDouble(request.getParameter("price"));
                double discountPercent = Double.parseDouble(request.getParameter("discount"));
                
                // Công th?c tính chi?t kh?u
                double discountAmount = price * discountPercent * 0.01;
                double discountPrice = price - discountAmount;
                
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Discount Calculation Result</title>");
                out.println("<style>");
                out.println("body { font-family: Arial, sans-serif; display: flex; justify-content: center; margin-top: 60px; background-color: #f4f6f9; }");
                out.println(".result-container { background: white; padding: 30px 40px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); width: 450px; }");
                out.println("h2 { color: #1b2a7a; text-align: center; margin-bottom: 25px; }");
                out.println(".result-row { display: flex; justify-content: space-between; padding: 10px 0; border-bottom: 1px solid #eee; font-size: 16px; }");
                out.println(".label { font-weight: bold; color: #555; }");
                out.println(".value { color: #2c3e50; font-weight: 600; }");
                out.println(".highlight { color: #27ae60; font-size: 18px; }");
                out.println(".btn-back { display: block; text-align: center; margin-top: 25px; padding: 10px 20px; background-color: #1b2a7a; color: white; text-decoration: none; border-radius: 4px; font-weight: bold; }");
                out.println(".btn-back:hover { background-color: #121c54; }");
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");
                out.println("<div class='result-container'>");
                out.println("<h2>Discount Calculation Result</h2>");
                
                out.println("<div class='result-row'><span class='label'>Product Description:</span><span class='value'>" + description + "</span></div>");
                out.println("<div class='result-row'><span class='label'>List Price:</span><span class='value'>$" + String.format("%.2f", price) + "</span></div>");
                out.println("<div class='result-row'><span class='label'>Discount Percent:</span><span class='value'>" + String.format("%.2f", discountPercent) + "%</span></div>");
                out.println("<div class='result-row'><span class='label'>Discount Amount:</span><span class='value'>$" + String.format("%.2f", discountAmount) + "</span></div>");
                out.println("<div class='result-row'><span class='label'>Discount Price:</span><span class='value highlight'>$" + String.format("%.2f", discountPrice) + "</span></div>");
                
                out.println("<a href='index.jsp' class='btn-back'>Calculate Another Product</a>");
                out.println("</div>");
                out.println("</body>");
                out.println("</html>");
                
            } catch (NumberFormatException e) {
                out.println("<!DOCTYPE html>");
                out.println("<html><body>");
                out.println("<h2 style='color: red; text-align: center; margin-top: 100px;'>L?i: Vui lòng nh?p thông s? s? h?p l?!</h2>");
                out.println("<div style='text-align: center;'><a href='index.jsp'>Quay l?i</a></div>");
                out.println("</body></html>");
            }
        }
    }
}
