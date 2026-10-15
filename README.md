# Bài th?c hành: Th?c thi SQL Có S? D?ng Transaction (JDBC Transaction)

## N?i dung th?c hi?n:
- **Thu m?c d? án \user-management/\**:
  - \IUserDAO.java\ & \UserDAO.java\:
    - Tri?n khai phuong th?c \insertUpdateUseTransaction()\.
    - S? d?ng \conn.setAutoCommit(false)\ d? b?t ch? d? ki?m soát giao d?ch Transaction.
    - Th?c thi chèn 2 b?n ghi cho "Quynh" và "Ngan" và c?p nh?t m?c luong cho "Quynh" thành 999.99.
    - G?i \conn.commit()\ và \conn.setAutoCommit(true)\ ? cu?i kh?i x? lý d? ghi nh?n d? li?u d?ng b?.
    - Ð?m b?o nguyên lý ACID (All-or-Nothing): n?u b?t k? câu l?nh nào b? l?i trong Transaction block, JDBC s? t? d?ng hu? b? (rollback) toàn b? các thao tác tru?c dó, b?o v? tính toàn v?n CSDL.
  - \UserServlet.java\: B? sung endpoint \/users?action=test-use-tran\ d? th?c thi hàm ki?m th?.
