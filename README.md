# Bài t?p: View, Index, Stored Procedure (Database: demo)

## N?i dung th?c hi?n:
1. **T?o CSDL & B?ng Products**: T?o CSDL demo, b?ng Products và chèn 5 b?n ghi m?u.
2. **Index & Performance Tuning**:
   - T?o Unique Index idx_productCode trên c?t productCode.
   - T?o Composite Index idx_name_price trên 2 c?t productName và productPrice.
   - Phân tích hi?u nang b?ng l?nh EXPLAIN tru?c và sau khi t?o Index.
3. **View**:
   - T?o View w_products, c?p nh?t View v?i CREATE OR REPLACE VIEW và xóa View v?i DROP VIEW.
4. **Stored Procedure**:
   - getAllProducts(): L?y t?t c? s?n ph?m.
   - ddNewProduct(...): Thêm s?n ph?m m?i.
   - updateProductById(...): C?p nh?t s?n ph?m theo Id.
   - deleteProductById(...): Xóa s?n ph?m theo Id.
