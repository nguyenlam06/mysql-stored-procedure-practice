<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Qu?n Lý S?n Ph?m - Final Exam</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>?? H? Th?ng Qu?n Lý S?n Ph?m</h2>
        <a href="products?action=create" class="btn btn-success">+ Thêm S?n Ph?m M?i</a>
    </div>

    <div class="card shadow-sm">
        <div class="card-body p-0">
            <table class="table table-hover align-middle mb-0">
                <thead class="table-dark">
                <tr>
                    <th style="width: 10%">ID</th>
                    <th style="width: 40%">Tên S?n Ph?m</th>
                    <th style="width: 20%">Ðon Giá ($)</th>
                    <th style="width: 15%">S? Lu?ng</th>
                    <th style="width: 15%" class="text-center">Thao Tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="p" items="">
                    <tr>
                        <td></td>
                        <td class="fw-bold"></td>
                        <td class="text-success fw-bold"><fmt:formatNumber value="" type="currency" currencySymbol="$"/></td>
                        <td><span class="badge bg-info text-dark"></span></td>
                        <td class="text-center">
                            <a href="products?action=edit&id=" class="btn btn-sm btn-warning text-white">S?a</a>
                            <a href="products?action=delete&id=" class="btn btn-sm btn-danger" onclick="return confirm('B?n có ch?c ch?n mu?n xóa s?n ph?m \'\' không?')">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
                <c:if test="">
                    <tr>
                        <td colspan="5" class="text-center py-4 text-muted">Chua có s?n ph?m nào trong co s? d? li?u.</td>
                    </tr>
                </c:if>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
