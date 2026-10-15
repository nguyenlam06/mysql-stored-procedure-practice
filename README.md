# Bài t?p: G?i MySQL Stored Procedures t? JDBC (CallableStatement)

## N?i dung th?c hi?n:
- **Thu m?c d? án \user-management/\**:
  - **Co s? d? li?u MySQL**:
    - \get_all_users()\: Stored Procedure l?y toàn b? danh sách ngu?i dùng.
    - \update_user(IN p_id, IN p_name, IN p_email, IN p_country)\: Stored Procedure c?p nh?t thông tin ngu?i dùng.
    - \delete_user(IN p_id)\: Stored Procedure xóa ngu?i dùng theo ID.
  - \IUserDAO.java\ & \UserDAO.java\:
    - Khai báo và tri?n khai 3 phuong th?c: \getUserByProcedure()\, \updateUserProcedure(User user)\, \deleteUserProcedure(int id)\.
    - S? d?ng \CallableStatement\ v?i cú pháp \{CALL <procedure_name>(...)}\ d? th?c thi tr?c ti?p các Stored Procedures trong CSDL MySQL.
    - C?p nh?t các hàm chu?n \selectAllUsers()\, \updateUser()\, \deleteUser()\ chuy?n hu?ng g?i thông qua Stored Procedures.
