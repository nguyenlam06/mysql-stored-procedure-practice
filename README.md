# Bài th?c hành: ?ng D?ng Qu?n Lý Khách Hàng (MVC Architecture)

## N?i dung th?c hi?n:
- **Thu m?c d? án \customer-management/\**:
  - \pom.xml\: Khai báo các thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) và JSTL Core 3.0 (\jakarta.servlet.jsp.jstl\) tuong thích chu?n v?i **Tomcat 10+**.
  - **T?ng Model (\com.codegym.model\)**:
    - \Customer.java\: Ð?nh nghia th?c th? khách hàng (id, name, email, address).
  - **T?ng Service (\com.codegym.service\)**:
    - \CustomerService.java\: Interface d?nh nghia các nghi?p v? CRUD.
    - \CustomerServiceImpl.java\: L?p tri?n khai nghi?p v? luu tr? d? li?u gi? l?p trong \Map<Integer, Customer>\.
  - **T?ng Controller (\com.codegym.controller\)**:
    - \CustomerServlet.java\: Ði?u hu?ng request (GET/POST) theo tham s? \ction\ (\create\, \edit\, \delete\, \iew\, \list\).
  - **T?ng View (\src/main/webapp/\)**:
    - \customer/list.jsp\: Hi?n th? b?ng danh sách khách hàng s? d?ng JSTL \<c:forEach>\.
    - \customer/create.jsp\: Form thêm m?i khách hàng.
    - \customer/edit.jsp\: Form s?a thông tin khách hàng.
    - \customer/delete.jsp\: Trang xác nh?n xóa khách hàng.
    - \customer/view.jsp\: Trang hi?n th? chi ti?t thông tin khách hàng.
    - \error-404.jsp\: Trang thông báo l?i khi không tìm th?y mã khách hàng.
