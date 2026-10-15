# Bài th?c hành: ?ng D?ng Chuy?n Ð?i Ti?n T? - Servlet

## N?i dung th?c hi?n:
- **Thu m?c d? án \jsp-servlet-currency-converter/\**:
  - \pom.xml\: C?u hình thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) tuong thích hoàn toàn v?i **Tomcat 10+**.
  - \index.jsp\: Form giao di?n nh?n d?u vào T? giá (\ate\) và Lu?ng USD (\usd\), g?i d? li?u qua phuong th?c \POST\ t?i endpoint \/convert\.
  - \ConverterServlet.java\: Servlet nh?n request POST, tính toán \VND = rate * usd\ và xu?t k?t qu? tr?c ti?p ra màn hình trình duy?t v?i d?y d? x? lý ngo?i l? \NumberFormatException\.
