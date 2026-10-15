<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <p><strong>Tên s?n ph?m:</strong> <br>
           <strong>Nhà s?n xu?t:</strong> </p>
        
        <form action="/products?action=delete" method="POST">
            <input type="hidden" name="id" value="" />
            <div class="btn-group">
                <button type="submit" class="btn btn-confirm">Ð?ng ý xóa</button>
                <a href="/products" class="btn btn-cancel">H?y b?</a>
            </div>
        </form>
    </div>
</body>
</html>
