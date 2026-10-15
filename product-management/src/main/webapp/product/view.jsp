<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Chi Ti?t S?n Ph?m</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; margin: 30px; background-color: #f8fafc; }
        .detail-container { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); max-width: 500px; margin: auto; }
        h2 { color: #1b2a7a; text-align: center; border-bottom: 2px solid #1b2a7a; padding-bottom: 10px; }
        table { width: 100%; margin-top: 15px; }
        td { padding: 10px; font-size: 16px; }
        .label { font-weight: bold; color: #555; width: 35%; }
        .value { color: #333; }
        .price { color: #27ae60; font-weight: bold; font-size: 18px; }
        .link-back { display: block; text-align: center; margin-top: 25px; color: #1b2a7a; text-decoration: none; font-weight: bold; }
    </style>
</head>
<body>
    <div class="detail-container">
        <h2>Chi Ti?t S?n Ph?m</h2>
        <table>
            <tr>
                <td class="label">Mã s?n ph?m:</td>
                <td class="value"></td>
            </tr>
            <tr>
                <td class="label">Tên s?n ph?m:</td>
                <td class="value"></td>
            </tr>
            <tr>
                <td class="label">Giá s?n ph?m:</td>
                <td class="value price"><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Xác Nh?n Xóa S?n Ph?m</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; margin: 30px; background-color: #f8fafc; }
        .delete-container { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); max-width: 500px; margin: auto; text-align: center; }
        h2 { color: #c0392b; }
        p { font-size: 16px; color: #555; line-height: 1.5; }
        .btn-group { margin-top: 20px; }
        .btn { display: inline-block; padding: 10px 20px; text-decoration: none; border-radius: 4px; font-weight: bold; margin: 0 10px; cursor: pointer; }
        .btn-confirm { background-color: #c0392b; color: white; border: none; font-size: 16px; }
        .btn-confirm:hover { background-color: #a93226; }
        .btn-cancel { background-color: #bdc3c7; color: #333; text-decoration: none; }
        .btn-cancel:hover { background-color: #95a5a6; }
    </style>
</head>
<body>
    <div class="delete-container">
        <h2>XÁC NH?N XÓA S?N PH?M</h2>
        <p>B?n có ch?c ch?n mu?n xóa s?n ph?m này kh?i h? th?ng?</p>
        <p><strong>Tên s?n ph?m:</strong> ${requestScope.product.name}<br>
           <strong>Nhà s?n xu?t:</strong> ${requestScope.product.manufacturer}</p>
        
        <form action="${pageContext.request.contextPath}/products?action=delete" method="POST">
            <input type="hidden" name="id" value="${requestScope.product.id}" />
            <div class="btn-group">
                <button type="submit" class="btn btn-confirm">Ð?ng ý xóa</button>
                <a href="${pageContext.request.contextPath}/products" class="btn btn-cancel">H?y b?</a>
            </div>
        </form>
    </div>
</body>
</html>{requestScope.product.price}</td>
            </tr>
            <tr>
                <td class="label">Mô t?:</td>
                <td class="value"></td>
            </tr>
            <tr>
                <td class="label">Nhà s?n xu?t:</td>
                <td class="value"></td>
            </tr>
        </table>
        <a href="/products" class="link-back">Quay l?i danh sách</a>
    </div>
</body>
</html>
