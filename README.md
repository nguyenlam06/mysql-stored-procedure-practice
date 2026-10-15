# Bài th?c hành: Qu?n Lý User S? D?ng JSP-Servlet-JDBC-MySQL (MVC Architecture)

## N?i dung th?c hi?n:
- **Thu m?c d? án \user-management/\**:
  - \pom.xml\: Khai báo Jakarta Servlet API, JSP API, JSTL Core 3.0 và \mysql-connector-j\ 8.3.0 tuong thích **Tomcat 10+**.
  - **Co s? d? li?u MySQL**: S? d?ng Database \demo\, b?ng \users\ (id, name, email, country).
  - **T?ng Model (\com.codegym.model\)**:
    - \User.java\: Th?c th? ngu?i dùng tuong ?ng v?i b?ng \users\ trong CSDL.
  - **T?ng DAO (\com.codegym.dao\)**:
    - \IUserDAO.java\: Interface khai báo các hàm CRUD.
    - \UserDAO.java\: Th?c thi JDBC Driver k?t n?i MySQL (\DriverManager.getConnection\), th?c thi các câu l?nh \PreparedStatement\ (\INSERT\, \SELECT\, \UPDATE\, \DELETE\).
  - **T?ng Controller (\com.codegym.controller\)**:
    - \UserServlet.java\: X? lý di?u hu?ng request qua URL \/users\.
  - **T?ng View (\src/main/webapp/user/\)**:
    - \list.jsp\: Hi?n th? b?ng danh sách User l?y tr?c ti?p t? CSDL MySQL.
    - \create.jsp\: Form thêm m?i User.
    - \edit.jsp\: Form c?p nh?t thông tin User.
    - \delete.jsp\: Trang xác nh?n xóa User.
