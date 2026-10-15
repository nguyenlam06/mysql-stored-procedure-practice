<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xác nh?n Xóa User</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; margin: 30px; background-color: #f8fafc; text-align: center; }
        .container { width: 40%; max-width: 450px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        h2 { color: #c0392b; margin-top: 0; }
        .info-box { background: #f9f9f9; padding: 15px; border-radius: 4px; margin-bottom: 20px; text-align: left; }
        .btn { padding: 10px 20px; color: white; border: none; cursor: pointer; text-decoration: none; border-radius: 4px; font-weight: bold; margin: 0 5px; display: inline-block;}
        .btn-delete { background-color: #c0392b; }
        .btn-delete:hover { background-color: #a93226; }
        .btn-cancel { background-color: #95a5a6; }
        .btn-cancel:hover { background-color: #7f8c8d; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Xác Nh?n Xóa User!</h2>
        <p>B?n có ch?c ch?n mu?n xóa User này kh?i h? th?ng co s? d? li?u vinh vi?n không?</p>
        
        <div class="info-box">
            <p><strong>Tên:</strong> </p>
            <p><strong>Email:</strong> </p>
            <p><strong>Qu?c gia:</strong> </p>
        </div>
        
        <form action="/users?action=delete" method="post">
            <input type="hidden" name="id" value="" />
            <button type="submit" class="btn btn-delete">Ð?ng ý Xóa</button>
            <a href="/users" class="btn btn-cancel">H?y b?</a>
        </form>
    </div>
</body>
</html>
