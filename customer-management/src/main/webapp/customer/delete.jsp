<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Xác nh?n xóa khách hàng</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f8fafc; }
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
        <h2>XÁC NH?N XÓA KHÁCH HÀNG</h2>
        <p>B?n có ch?c ch?n mu?n xóa khách hàng sau kh?i danh sách h? th?ng?</p>
        <p><strong>H? và tên:</strong> <br>
           <strong>Email:</strong> </p>
        
        <form action="/customers?action=delete" method="POST">
            <input type="hidden" name="id" value="" />
            <div class="btn-group">
                <button type="submit" class="btn btn-confirm">Ð?ng ý xóa</button>
                <a href="/customers" class="btn btn-cancel">H?y b?</a>
            </div>
        </form>
    </div>
</body>
</html>
