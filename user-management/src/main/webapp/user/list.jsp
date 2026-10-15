<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Qu?n lý User</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; margin: 30px; background-color: #f8fafc; }
        h2 { color: #1b2a7a; text-align: center; margin-bottom: 20px; }
        table { width: 80%; margin: 20px auto; border-collapse: collapse; background: white; box-shadow: 0 4px 6px rgba(0,0,0,0.05); border-radius: 8px; overflow: hidden; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #1b2a7a; color: white; }
        tr:hover { background-color: #f1f5f9; }
        .btn { padding: 8px 12px; text-decoration: none; border-radius: 4px; color: white; font-weight: bold; font-size: 14px; }
        .btn-add { background-color: #27ae60; margin-left: 10%; display: inline-block; margin-bottom: 15px; }
        .btn-edit { background-color: #2980b9; margin-right: 5px; }
        .btn-delete { background-color: #c0392b; }
    </style>
</head>
<body>
    <h2>Danh Sách Ngu?i Dùng (Users)</h2>
    <a href="/users?action=create" class="btn btn-add">+ Thêm m?i User</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên User</th>
            <th>Email</th>
            <th>Qu?c gia</th>
            <th>Hành d?ng</th>
        </tr>
        <c:forEach var="user" items="">
            <tr>
                <td><c:out value="" /></td>
                <td><c:out value="" /></td>
                <td><c:out value="" /></td>
                <td><c:out value="" /></td>
                <td>
                    <a href="/users?action=edit&id=" class="btn btn-edit">S?a</a>
                    <a href="/users?action=delete&id=" class="btn btn-delete">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
