<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ch?nh S?a User</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; margin: 30px; background-color: #f8fafc; }
        .container { width: 50%; max-width: 500px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        h2 { color: #1b2a7a; text-align: center; }
        .form-group { margin-bottom: 15px; }
        label { font-weight: bold; display: block; margin-bottom: 5px; color: #333; }
        input[type="text"], input[type="email"] { width: 100%; padding: 10px; box-sizing: border-box; border: 1px solid #ccc; border-radius: 4px; }
        .btn { padding: 12px; background-color: #2980b9; color: white; border: none; cursor: pointer; border-radius: 4px; font-weight: bold; width: 100%; margin-top: 10px; font-size: 16px; }
        .btn:hover { background-color: #2471a3; }
        a { display: block; text-align: center; margin-top: 15px; color: #1b2a7a; text-decoration: none; font-weight: bold; }
    </style>
</head>
<body>
    <div class="container">
        <h2>C?p Nh?t Thông Tin User</h2>
        <form action="/users?action=edit" method="post">
            <input type="hidden" name="id" value="<c:out value='' />" />
            <div class="form-group">
                <label>Tên d?y d?:</label>
                <input type="text" name="name" value="<c:out value='' />" required />
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" name="email" value="<c:out value='' />" required />
            </div>
            <div class="form-group">
                <label>Qu?c gia:</label>
                <input type="text" name="country" value="<c:out value='' />" required />
            </div>
            <button type="submit" class="btn">C?p nh?t ngay</button>
        </form>
        <a href="/users">Quay l?i danh sách</a>
    </div>
</body>
</html>
