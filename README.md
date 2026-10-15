# Bài t?p: Hi?n Th? Danh Sách Khách Hàng - JSTL JSP

## N?i dung th?c hi?n:
- **Thu m?c d? án \jsp-jstl-customer-list/\**:
  - \pom.xml\: Khai báo thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) và JSTL Core 3.0 (\jakarta.servlet.jsp.jstl\) tuong thích hoàn toàn v?i **Tomcat 10+**.
  - \Customer.java\: Class JavaBean d?nh nghia thông tin khách hàng (tên, ngày sinh, d?a ch?, ?nh d?i di?n).
  - \index.jsp\:
    - Khai báo directive taglib JSTL chu?n Jakarta: \<%@taglib prefix="c" uri="jakarta.tags.core"%>'\.
    - T?o danh sách khách hàng m?u (\List<Customer>\) và dính kèm vào \equest.setAttribute("customers", customerList)\.
    - S? d?ng th? JSTL \<c:forEach>\ d? l?p qua danh sách và hi?n th? d? li?u b?ng HTML kèm ?nh avatar s?c nét.
