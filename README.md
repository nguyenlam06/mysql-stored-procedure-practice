# Bài t?p: ?ng D?ng Product Discount Calculator - Java Servlet

## N?i dung th?c hi?n:
- **Thu m?c d? án \jsp-servlet-product-discount/\**:
  - \pom.xml\: Khai báo các thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) tuong thích chu?n v?i **Tomcat 10+**.
  - \index.jsp\: Form giao di?n nh?n các thông tin:
    - \description\: Mô t? s?n ph?m.
    - \price\: Giá niêm y?t (List Price).
    - \discount\: T? l? chi?t kh?u (%) (Discount Percent).
    - Phuong th?c g?i data: \POST\ t?i endpoint \/display-discount\.
  - \DiscountServlet.java\: Servlet nh?n request POST, th?c hi?n tính toán:
    - \Discount Amount = List Price * Discount Percent * 0.01\
    - \Discount Price = List Price - Discount Amount\
    - Hi?n th? d?y d? thông tin mô t?, giá g?c, chi?t kh?u và giá sau cùng.
