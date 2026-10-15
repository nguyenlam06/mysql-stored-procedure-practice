# Bài th?c hành: MySQL JDBC Transaction (User Management)

## N?i dung th?c hi?n:
- **Thu m?c d? án \user-management/\**:
  - **Co s? d? li?u MySQL**: T?o các b?ng m?i \permission\ và \user_permission\ (b?ng trung gian gán quy?n ngu?i dùng).
  - \IUserDAO.java\ & \UserDAO.java\:
    - Tri?n khai phuong th?c \ddUserTransaction(User user, int[] permissionIds)\.
    - S? d?ng \connection.setAutoCommit(false)\ d? b?t d?u m?t Transaction.
    - Th?c thi chèn User vào b?ng \users\ v?i \Statement.RETURN_GENERATED_KEYS\ d? l?y ID sinh t? d?ng.
    - Duy?t m?ng \permissionIds\ d? chèn các quy?n tuong ?ng vào b?ng \user_permission\.
    - G?i \connection.commit()\ n?u t?t c? thao tác thành công ho?c \connection.rollback()\ trong kh?i \catch\ n?u có s? c? d? b?o d?m tính toàn v?n d? li?u.
  - \UserServlet.java\: Ti?p nh?n m?ng \permissions\ g?i t? form t?o m?i và chuy?n d? li?u t?i \ddUserTransaction\.
  - \user/create.jsp\: B? sung danh sách Checkbox phân quy?n (\Add\, \Edit\, \Delete\, \View\).
