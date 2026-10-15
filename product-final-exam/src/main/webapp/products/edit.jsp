<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ch?nh S?a S?n Ph?m</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5" style="max-width: 550px;">
    <div class="card shadow-sm">
        <div class="card-header bg-warning text-white">
            <h4 class="mb-0">C?p Nh?t Thông Tin S?n Ph?m</h4>
        </div>
        <div class="card-body">
            <form action="products" method="post">
                <input type="hidden" name="action" value="edit">
                <input type="hidden" name="id" value="">

                <div class="mb-3">
                    <label class="form-label">Tên s?n ph?m:</label>
                    <input type="text" name="name" value="" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Giá ($):</label>
                    <input type="number" step="0.01" name="price" value="" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">S? lu?ng:</label>
                    <input type="number" name="quantity" value="" class="form-control" required>
                </div>

                <div class="d-flex justify-content-end gap-2">
                    <a href="products" class="btn btn-secondary">Quay l?i</a>
                    <button type="submit" class="btn btn-warning text-white">Luu Thay Ð?i</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
