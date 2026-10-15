# Bài th?c hành: Ðóng Gói Thu Vi?n Java (.jar Packaging & Dependency System Scope)

## N?i dung th?c hi?n:
- **Thu m?c \math-lib/\ (D? án Thu vi?n)**:
  - Khai báo \com.codegym.Calculator\ ch?a các hàm static \sum\, \sub\, \mul\, và \divide\.
  - Ðóng gói thành công file thu vi?n \math-lib-1.0-SNAPSHOT.jar\ b?ng l?nh \mvn clean package\.
- **Thu m?c \calculator-app/\ (D? án S? d?ng Thu vi?n)**:
  - Copy file thu vi?n vào thu m?c \lib/math-lib.jar\.
  - Nhúng dependency vào \pom.xml\ v?i c?u hình \<scope>system</scope>\ và \<systemPath>\/lib/math-lib.jar</systemPath>\.
  - Th?c thi l?p \com.codegym.Main\ g?i tr?c ti?p các phuong th?c tinh t? file \.jar\ thành công.
