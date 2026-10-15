# Case Study: ?ng d?ng Qu?n Lý Ghi Chú iNotes (Strategy Pattern Architecture)

## N?i dung th?c hi?n:
- **Thu m?c \inotes-app/\**:
  - **Co s? d? li?u MySQL (\inotes_db\)**:
    - B?ng \
ote_type\ (id, name, description).
    - B?ng \
otes\ (id, title, content, type_id - Khóa ngo?i).
  - **Thi?t k? Pattern (\Strategy Pattern\)**:
    - Interface \NoteStrategy\: Quy chu?n t?p h?p giao th?c luu tr? (\save\, \delete\, \indAll\, \search\).
    - L?p \NoteDBStrategy\: Th?c thi k?t n?i ghi nh?n d? li?u trên MySQL qua JDBC.
    - L?p \NoteFileStrategy\: Th?c thi luu d? li?u ra File Flat Text (\
otes.txt\) v?i d?nh d?ng phân tách \id|title|content|typeId\.
    - L?p \NoteManagement\: Context linh ho?t chuy?n d?i t?ng luu tr? lúc Runtime (\setStrategy\).
  - **MVC Interface**:
    - Dashboard danh sách ghi chú, form t?o m?i, c?p nh?t, chi ti?t và nút chuy?n d?i linh ho?t t?ng luu tr? Database/File.
