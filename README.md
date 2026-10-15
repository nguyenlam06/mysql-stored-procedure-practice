# Bài th?c hành: ?ng D?ng T? Ði?n Ðon Gi?n - JSP

## N?i dung th?c hi?n:
- **Thu m?c d? án \jsp-pure-dictionary/\**:
  - \pom.xml\: Khai báo các thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) tuong thích chu?n v?i **Tomcat 10+**.
  - \index.jsp\: Form tra c?u t? v?ng ti?ng Anh g?i d? li?u b?ng phuong th?c \POST\ t?i trang \dictionary.jsp\.
  - \dictionary.jsp\: Trang x? lý tra c?u b?ng mã nhúng Java JSP:
    - Kh?i t?o kho t? v?ng gi? l?p (\Map<String, String>\).
    - Nh?n t? khóa qua \equest.getParameter("search")\.
    - S? d?ng th? Scriptlet (\<% %>\) d? th?c hi?n tra c?u.
    - S? d?ng th? Expression (\<%= %>\) d? xu?t k?t qu? nghia ti?ng Vi?t ho?c thông báo không tìm th?y tr?c ti?p ra HTML.
