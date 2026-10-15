<%@taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>C?p nh?t thông tin khách hàng</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f8fafc; }
        .form-container { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); max-width: 500px; margin: auto; }
        h2 { color: #1b2a7a; text-align: center; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; color: #333; }
        input[type="text"], input[type="email"] { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .btn-submit { background-color: #2980b9; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-weight: bold; width: 100%; margin-top: 10px; }
        .btn-submit:hover { background-color: #2471a3; }
        .link-back { display: block; text-align: center; margin-top: 15px; color: #1b2a7a; text-decoration: none; }
        .message { background-color: #e8f5e9; color: #27ae60; padding: 10px; border-radius: 4px; text-align: center; margin-bottom: 15px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>C?p Nh?t Khách Hàng</h2>
        
        <c:if test="">
            <div class="message"></div>
        </c:if>

        <form action="/customers?action=edit" method="POST">
            <input type="hidden" name="id" value="" />
            <div class="form-group">
                <label for="name">H? và Tên:</label>
                <input type="text" id="name" name="name" value="" required />
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="" required />
            </div>
            <div class="form-group">
                <label for="address">Ð?a ch?:</label>
                <input type="text" id="address" name="address" value="" required />
            </div>
            <button type="submit" class="btn-submit">C?p nh?t</button>
        </form>
        <a href="/customers" class="link-back">Quay l?i danh sách</a>
    </div>
</body>
</html>
