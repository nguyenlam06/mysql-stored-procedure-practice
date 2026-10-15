package com.codegym.controller;

import com.codegym.model.Calculator;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "CalculatorServlet", urlPatterns = {"/calculate"})
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        try {
            float firstOperand = Float.parseFloat(request.getParameter("first-operand"));
            float secondOperand = Float.parseFloat(request.getParameter("second-operand"));
            char operator = request.getParameter("operator").charAt(0);

            try {
                float result = Calculator.calculate(firstOperand, secondOperand, operator);
                request.setAttribute("firstOperand", firstOperand);
                request.setAttribute("secondOperand", secondOperand);
                request.setAttribute("operator", operator);
                request.setAttribute("result", result);
            } catch (ArithmeticException ex) {
                request.setAttribute("error", ex.getMessage());
            }

        } catch (NumberFormatException ex) {
            request.setAttribute("error", "Vui lòng nh?p toán h?ng là s? h?p l?!");
        }

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
