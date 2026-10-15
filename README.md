# Bài t?p: Luy?n t?p MySQL JDBC Transaction (Rollback Verification)

## N?i dung th?c hi?n:
- **Thu m?c d? án \user-management/\**:
  - \UserDAO.java\:
    - C?p nh?t phuong th?c \ddUserTransaction(User user, int[] permissionIds)\ c? tình vi?t sai tên c?t SQL (\invalid_column\) d? t?o ra s? c? \SQLException\.
    - Th?c nghi?m vi?c ki?m soát Transaction qua kh?i \	ry-catch\: Khi câu l?nh chèn quy?n b? vang l?i, hàm \connection.rollback()\ du?c kích ho?t ngay l?p t?c.
    - K?t qu? ki?m ch?ng trên CSDL MySQL: B?n ghi ngu?i dùng ? bu?c chèn tru?c dó cung b? hu? b? hoàn toàn, d?m b?o tính toàn v?n d? li?u chu?n ACID.
