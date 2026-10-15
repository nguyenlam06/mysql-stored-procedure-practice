# Bài t?p: ?ng D?ng Calculator - Java Servlet & JSP

## N?i dung th?c hi?n:
- **Thu m?c d? án \jsp-servlet-calculator/\**:
  - \pom.xml\: Khai báo các thu vi?n Jakarta EE (\jakarta.servlet-api\ 6.0.0, \jakarta.servlet.jsp-api\ 3.1.1) tuong thích chu?n v?i **Tomcat 10+**.
  - \Calculator.java\ (Model): Ð?nh nghia phuong th?c tinh \calculate(firstOperand, secondOperand, operator)\. B?n ra ngo?i l? \ArithmeticException\ khi \secondOperand == 0\.
  - \CalculatorServlet.java\ (Controller): Nh?n tham s? t? form POST, x? lý ngo?i l? chia cho 0 ho?c l?i d?nh d?ng s?, sau dó chuy?n hu?ng request t?i \esult.jsp\.
  - \index.jsp\: Form nh?p toán h?ng 1, toán h?ng 2 và ch?n phép tính (\+\, \-\, \*\, \/\).
  - \esult.jsp\: Hi?n th? bi?u th?c k?t qu? tính toán ho?c thông báo l?i d? sinh d?ng.
