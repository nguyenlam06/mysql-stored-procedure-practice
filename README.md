# Bài t?p: ?ng D?ng Qu?n Lý S?n Ph?m (MVC Architecture)

## N?i dung th?c hi?n:
- **Thu m?c d? án \product-management/\**:
  - \pom.xml\: Khai báo thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) và JSTL Core 3.0 (\jakarta.servlet.jsp.jstl\) tuong thích chu?n v?i **Tomcat 10+**.
  - **T?ng Model (\com.codegym.model\)**:
    - \Product.java\: Ð?nh nghia th?c th? s?n ph?m (id, name, price, description, manufacturer).
  - **T?ng Service (\com.codegym.service\)**:
    - \ProductService.java\: Interface khai báo các phuong th?c CRUD và tìm ki?m theo tên (\indByName\).
    - \ProductServiceImpl.java\: L?p tri?n khai nghi?p v? v?i co s? d? li?u gi? l?p (\Map<Integer, Product>\).
  - **T?ng Controller (\com.codegym.controller\)**:
    - \ProductServlet.java\: Ði?u hu?ng các thao tác GET/POST theo tham s? \ction\ (\create\, \edit\, \delete\, \iew\, \search\, \list\).
  - **T?ng View (\src/main/webapp/\)**:
    - \product/list.jsp\: B?ng danh sách s?n ph?m k?t h?p thanh tìm ki?m theo tên và th? JSTL \<c:forEach>\.
    - \product/create.jsp\: Giao di?n thêm m?i s?n ph?m.
    - \product/edit.jsp\: Giao di?n ch?nh s?a thông tin s?n ph?m.
    - \product/delete.jsp\: Trang xác nh?n xóa s?n ph?m.
    - \product/view.jsp\: Trang hi?n th? thông tin chi ti?t s?n ph?m.
    - \error-404.jsp\: Trang báo l?i 404 khi s?n ph?m không t?n t?i.
