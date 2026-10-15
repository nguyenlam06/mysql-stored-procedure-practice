# Bài t?p: C?p Nh?t ?ng D?ng Qu?n Lý User (Search by Country & Sort by Name)

## N?i dung c?p nh?t:
- **Thu m?c d? án \user-management/\**:
  - \IUserDAO.java\ & \UserDAO.java\:
    - B? sung phuong th?c \searchByCountry(String country)\: Tìm ki?m ngu?i dùng theo tên qu?c gia b?ng SQL \WHERE country LIKE ?\.
    - B? sung phuong th?c \selectAllUsersSortedByName()\: L?y danh sách ngu?i dùng s?p x?p theo th? t? b?ng ch? cái b?ng SQL \ORDER BY name ASC\.
  - \UserServlet.java\: B? sung di?u hu?ng \ction=search\ và \ction=sort\.
  - \user/list.jsp\: C?p nh?t giao di?n bao g?m khung tìm ki?m qu?c gia, nút s?p x?p theo tên A-Z và nút hi?n th? l?i t?t c? d? li?u.
