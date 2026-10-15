<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Discount Calculator</title>
        <style>
            body { font-family: 'Arial', sans-serif; display: flex; justify-content: center; margin-top: 60px; background-color: #f4f6f9; }
            .form-container { background: white; padding: 30px 40px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); width: 400px; }
            h2 { color: #1b2a7a; text-align: center; margin-bottom: 25px; }
            .form-group { margin-bottom: 15px; }
            label { display: block; font-weight: bold; margin-bottom: 5px; color: #333; }
            input[type="text"], input[type="number"] { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; font-size: 14px; }
            button { background-color: #1b2a7a; color: white; padding: 12px 20px; border: none; border-radius: 4px; cursor: pointer; width: 100%; font-weight: bold; font-size: 16px; margin-top: 10px; }
            button:hover { background-color: #121c54; }
        </style>
    </head>
    <body>
        <div class="form-container">
            <h2>Product Discount Calculator</h2>
            <form action="display-discount" method="POST">
                <div class="form-group">
                    <label for="description">Product Description:</label>
                    <input type="text" id="description" name="description" placeholder="Mô t? s?n ph?m" required autofocus />
                </div>
                <div class="form-group">
                    <label for="price">List Price ($):</label>
                    <input type="number" id="price" name="price" placeholder="Giá niêm y?t" step="any" min="0" required />
                </div>
                <div class="form-group">
                    <label for="discount">Discount Percent (%):</label>
                    <input type="number" id="discount" name="discount" placeholder="T? l? chi?t kh?u (%)" step="any" min="0" max="100" required />
                </div>
                <button type="submit">Calculate Discount</button>
            </form>
        </div>
    </body>
</html>
