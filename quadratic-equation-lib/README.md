# Bài t?p: Ðóng Gói Thu Vi?n Gi?i Phuong Trình B?c 2 (.jar Packaging)

## N?i dung th?c hi?n:
- **Thu m?c \quadratic-equation-lib/\ (Module Thu vi?n)**:
  - Khai báo l?p \QuadraticSolver.java\ x? lý thu?t toán gi?i phuong trình b?c 2 (^2 + bx + c = 0$).
  - L?p \QuadraticResult.java\ dóng gói k?t qu?: Vô s? nghi?m, Vô nghi?m, Nghi?m duy nh?t/kép, và 2 Nghi?m phân bi?t.
  - Biên d?ch và dóng gói thành công file \quadratic-equation-lib-1.0-SNAPSHOT.jar\.
- **Thu m?c \quadratic-equation-app/\ (Module S? d?ng Thu vi?n)**:
  - Tích h?p file \quadratic-lib.jar\ vào thu m?c \lib/\.
  - Khai báo dependency trong \pom.xml\ v?i \<scope>system</scope>\.
  - Th?c thi l?p \com.codegym.Main\ ki?m th? toàn b? các tru?ng h?p phuong trình b?c 2 thành công.
