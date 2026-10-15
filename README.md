# Bài th?c hành: ?ng D?ng T? Ði?n Ðon Gi?n - Servlet

## N?i dung th?c hi?n:
- **Thu m?c d? án \jsp-servlet-dictionary/\**:
  - \pom.xml\: Khai báo các thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) tuong thích chu?n v?i **Tomcat 10+**.
  - \index.jsp\: Form tra c?u t? v?ng ti?ng Anh truy?n qua phuong th?c \POST\ t?i endpoint \/translate\.
  - \DictionaryServlet.java\: Servlet kh?i t?o s?n kho t? v?ng (\Map<String, String>\), x? lý tra c?u t? khóa không phân bi?t hoa thu?ng và xu?t nghia ti?ng Vi?t ho?c thông báo l?i n?u không tìm th?y.
