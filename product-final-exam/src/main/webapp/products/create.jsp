<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm S?n Ph?m M?i</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5" style="max-width: 550px;">
    <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Thêm S?n Ph?m M?i</h4>
        </div>
        <div class="card-body">
            <form action="products" method="post">
                <input type="hidden" name="action" value="create">

                <div class="mb-3">
                    <label class="form-label">Tên s?n ph?m:</label>
                    <input type="text" name="name" class="form-control" placeholder="Nh?p tên s?n ph?m..." required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Giá ($):</label>
                    <input type="number" step="0.01" name="price" class="form-control" placeholder="0.00" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">S? lu?ng:</label>
                    <input type="number" name="quantity" class="form-control" placeholder="0" required>
                </div>

                <div class="d-flex justify-content-end gap-2">
                    <a href="products" class="btn btn-secondary">H?y b?</a>
                    <button type="submit" class="btn btn-primary">Luu S?n Ph?m</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
