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
        .toolbar { width: 80%; margin: 0 auto 20px auto; display: flex; justify-content: space-between; align-items: center; }
        .search-box { display: flex; gap: 10px; }
        .search-box input { padding: 8px 12px; border: 1px solid #ccc; border-radius: 4px; font-size: 14px; width: 220px; }
        .search-box button { background-color: #1b2a7a; color: white; border: none; padding: 8px 15px; border-radius: 4px; cursor: pointer; font-weight: bold; }
        table { width: 80%; margin: 0 auto; border-collapse: collapse; background: white; box-shadow: 0 4px 6px rgba(0,0,0,0.05); border-radius: 8px; overflow: hidden; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #1b2a7a; color: white; }
        tr:hover { background-color: #f1f5f9; }
        .btn { padding: 8px 12px; text-decoration: none; border-radius: 4px; color: white; font-weight: bold; font-size: 14px; display: inline-block; }
        .btn-add { background-color: #27ae60; }
        .btn-sort { background-color: #8e44ad; }
        .btn-edit { background-color: #2980b9; margin-right: 5px; }
        .btn-delete { background-color: #c0392b; }
    </style>
</head>
<body>
    <h2>Danh Sách Ngu?i Dùng (Users)</h2>

    <div class="toolbar">
        <div>
            <a href="/users?action=create" class="btn btn-add">+ Thêm m?i User</a>
            <a href="/users?action=sort" class="btn btn-sort">S?p x?p theo Tên (A-Z)</a>
            <c:if test="">
                <a href="/users" class="btn" style="background-color: #7f8c8d;">Xem t?t c?</a>
            </c:if>
        </div>

        <form action="/users" method="GET" class="search-box">
            <input type="hidden" name="action" value="search" />
            <input type="text" name="country" placeholder="Nh?p qu?c gia c?n tìm..." value="" required />
            <button type="submit">Tìm ki?m</button>
        </form>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên User</th>
                <th>Email</th>
                <th>Qu?c gia</th>
                <th>Hành d?ng</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="">
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
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="5" style="text-align: center; color: #777;">Không tìm th?y ngu?i dùng nào!</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
</body>
</html>
