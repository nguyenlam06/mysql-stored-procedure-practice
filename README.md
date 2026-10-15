# Bài th?c hành: T?o Trang Web Ð? Ðang Nh?p Và Hi?n Th? L?i Chào

## N?i dung th?c hi?n:
- **Thu m?c d? án \jsp-servlet-login/\**:
  - \pom.xml\: Khai báo thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) tuong thích v?i **Tomcat 10+**.
  - \index.jsp\: Trang ch?a Form dang nh?p truy?n d? li?u qua phuong th?c \POST\ t?i endpoint \/login\.
  - \LoginServlet.java\: Class x? lý request POST:
    - N?u \username\ và \password\ kh?p v?i \dmin\ / \dmin\: In ra thông báo **"Welcome admin to website"**.
    - Ngu?c l?i: In ra thông báo l?i **"Login Error"**.
