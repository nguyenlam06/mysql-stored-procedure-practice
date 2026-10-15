<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh Sách S?n Ph?m</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; margin: 30px; background-color: #f8fafc; }
        .header-container { display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; }
        h1 { color: #1b2a7a; margin: 0; }
        .search-box { display: flex; gap: 10px; }
        .search-box input { padding: 8px 12px; border: 1px solid #ccc; border-radius: 4px; font-size: 14px; width: 250px; }
        .search-box button { background-color: #1b2a7a; color: white; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer; font-weight: bold; }
        table { border-collapse: collapse; width: 100%; background: white; border-radius: 8px; overflow: hidden; box-shadow: 0 4px 6px rgba(0,0,0,0.05); }
        th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #ddd; }
        th { background-color: #1b2a7a; color: white; }
        tr:hover { background-color: #f1f5f9; }
        .btn { display: inline-block; padding: 8px 16px; text-decoration: none; border-radius: 4px; font-weight: bold; font-size: 14px; }
        .btn-create { background-color: #27ae60; color: white; margin-bottom: 15px; }
        .btn-edit { color: #2980b9; text-decoration: none; margin-right: 10px; }
        .btn-delete { color: #c0392b; text-decoration: none; }
        .btn-view { color: #1b2a7a; text-decoration: none; font-weight: bold; }
        .price { font-weight: bold; color: #27ae60; }
    </style>
</head>
<body>
    <div class="header-container">
        <h1>Qu?n Lý S?n Ph?m</h1>
        <form action="/products" method="GET" class="search-box">
            <input type="hidden" name="action" value="search" />
            <input type="text" name="search" placeholder="Nh?p tên s?n ph?m c?n tìm..." value="" />
            <button type="submit">Tìm ki?m</button>
        </form>
    </div>

    <a href="/products?action=create" class="btn btn-create">+ T?o s?n ph?m m?i</a>
    
    <table>
        <thead>
            <tr>
                <th>STT</th>
                <th>Tên s?n ph?m</th>
                <th>Giá ($)</th>
                <th>Mô t?</th>
                <th>Nhà s?n xu?t</th>
                <th>Hành d?ng</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="">
                    <c:forEach items="" var="product" varStatus="loop">
                        <tr>
                            <td></td>
                            <td>
                                <a href="/products?action=view&id=" class="btn-view"></a>
                            </td>
                            <td class="price">package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.ProductService;
import com.codegym.service.ProductServiceImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
public class ProductServlet extends HttpServlet {

    private ProductService productService = new ProductServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "edit":
                updateProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            case "search":
                searchProduct(request, response);
                break;
            default:
                break;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "view":
                viewProduct(request, response);
                break;
            case "search":
                searchProduct(request, response);
                break;
            default:
                listProducts(request, response);
                break;
        }
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = this.productService.findAll();
        request.setAttribute("products", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("product/edit.jsp");
        }
        dispatcher.forward(request, response);
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("product/delete.jsp");
        }
        dispatcher.forward(request, response);
    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("product/view.jsp");
        }
        dispatcher.forward(request, response);
    }

    private void searchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("search");
        List<Product> products = this.productService.findByName(keyword);
        request.setAttribute("products", products);
        request.setAttribute("searchKeyword", keyword);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/list.jsp");
        dispatcher.forward(request, response);
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String manufacturer = request.getParameter("manufacturer");
        int id = (int) (Math.random() * 10000);

        Product product = new Product(id, name, price, description, manufacturer);
        this.productService.save(product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/create.jsp");
        request.setAttribute("message", "S?n ph?m m?i dã du?c t?o thành công!");
        dispatcher.forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String manufacturer = request.getParameter("manufacturer");
        
        Product product = this.productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            product.setName(name);
            product.setPrice(price);
            product.setDescription(description);
            product.setManufacturer(manufacturer);
            this.productService.update(id, product);
            request.setAttribute("product", product);
            request.setAttribute("message", "C?p nh?t thông tin s?n ph?m thành công!");
            dispatcher = request.getRequestDispatcher("product/edit.jsp");
        }
        dispatcher.forward(request, response);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
            dispatcher.forward(request, response);
        } else {
            this.productService.remove(id);
            response.sendRedirect(request.getContextPath() + "/products");
        }
    }
}{product.price}</td>
                            <td></td>
                            <td></td>
                            <td>
                                <a href="/products?action=edit&id=" class="btn-edit">S?a</a>
                                <a href="/products?action=delete&id=" class="btn-delete">Xóa</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="6" style="text-align: center; color: #777;">Không tìm th?y s?n ph?m nào!</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
</body>
</html>
