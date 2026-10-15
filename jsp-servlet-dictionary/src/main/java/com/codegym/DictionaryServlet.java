package com.codegym;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "DictionaryServlet", urlPatterns = {"/translate"})
public class DictionaryServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Th? nào");
        dictionary.put("book", "Quy?n sách");
        dictionary.put("computer", "Máy tính");
        dictionary.put("student", "Sinh viên");

        String searchWord = request.getParameter("word");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head><title>K?t qu? tra c?u</title></head>");
            out.println("<body style='font-family: Arial, sans-serif; text-align: center; margin-top: 100px;'>");
            
            if (searchWord != null && !searchWord.trim().isEmpty()) {
                String result = dictionary.get(searchWord.trim().toLowerCase());
                
                if (result != null) {
                    out.println("<h2 style='color: #1b2a7a;'>T? khóa: " + searchWord + "</h2>");
                    out.println("<h3 style='color: #27ae60;'>Nghia ti?ng Vi?t: " + result + "</h3>");
                } else {
                    out.println("<h2 style='color: red;'>Không tìm th?y t?: " + searchWord + "</h2>");
                }
            } else {
                out.println("<h2 style='color: orange;'>Vui lòng nh?p t? khóa h?p l?!</h2>");
            }
            
            out.println("<br><a href='index.jsp' style='text-decoration: none; padding: 10px 20px; background-color: #1b2a7a; color: white; border-radius: 4px;'>Quay l?i</a>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
