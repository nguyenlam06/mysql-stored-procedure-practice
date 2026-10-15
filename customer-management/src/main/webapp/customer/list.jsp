<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f8fafc; }
        h1 { color: #1b2a7a; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; background: white; border-radius: 8px; overflow: hidden; box-shadow: 0 4px 6px rgba(0,0,0,0.05); }
        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
        th { background-color: #1b2a7a; color: white; }
        tr:hover { background-color: #f1f5f9; }
        .btn { display: inline-block; padding: 8px 16px; text-decoration: none; border-radius: 4px; font-weight: bold; font-size: 14px; }
        .btn-create { background-color: #27ae60; color: white; margin-bottom: 15px; }
        .btn-edit { color: #2980b9; text-decoration: none; margin-right: 10px; }
        .btn-delete { color: #c0392b; text-decoration: none; }
        .btn-view { color: #1b2a7a; text-decoration: none; margin-right: 10px; font-weight: bold; }
    </style>
</head>
<body>
    <h1>Danh Sách Khách Hàng</h1>
    <a href="/customers?action=create" class="btn btn-create">Thêm khách hàng m?i</a>
    
    <table>
        <thead>
            <tr>
                <th>H? và Tên</th>
                <th>Email</th>
                <th>Ð?a ch?</th>
                <th>Hành d?ng</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="" var="customer">
                <tr>
                    <td>
                        <a href="/customers?action=view&id=" class="btn-view"></a>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                        <a href="/customers?action=edit&id=" class="btn-edit">S?a</a>
                        <a href="/customers?action=delete&id=" class="btn-delete">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
