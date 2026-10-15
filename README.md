# Bài th?c hành: Th?c thi SQL Không S? D?ng Transaction (Non-Transaction)

## N?i dung th?c hi?n:
- **Thu m?c d? án \user-management/\**:
  - **Co s? d? li?u MySQL**: Thêm b?ng \Employee\ (id, name, salary, created_Date).
  - \IUserDAO.java\ & \UserDAO.java\:
    - Tri?n khai phuong th?c \insertUpdateWithoutTransaction()\.
    - Th?c thi xóa/t?o l?i b?ng \Employee\, chèn 2 b?n ghi cho "Quynh" và "Ngan" thành công.
    - C? tình thi?t l?p sai ch? s? tham s? câu l?nh Update làm phát sinh l?i \SQLException: No value specified for parameter 1\.
    - Minh ch?ng cho vi?c do không dùng Transaction (\uto-commit=true\ m?c d?nh), 2 b?n ghi Insert v?n b? ghi nh?n vinh vi?n vào CSDL dù câu l?nh Update phía sau g?p s? c?.
  - \UserServlet.java\: Thêm endpoint \/users?action=test-without-tran\ kích ho?t hàm ki?m th?.
