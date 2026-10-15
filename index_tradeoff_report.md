# BÁO CÁO ÐÁNH GIÁ HI?U NANG H? TH?NG IoT SMARTFACTORY

## 1. Phân Tích Nguyên Nhân S? C?
- **Write Bottleneck (Chèn ch?m):** idx_fat_covering dua quá nhi?u c?t vào B-Tree. Khi 10.000 c?m bi?n g?i d? li?u liên t?c, m?i l?nh INSERT bu?c MySQL ph?i c?p nh?t và chia trang (Page Split) trên cây B-Tree l?n, gây ngh?n lu?ng chèn.
- **T?n Storage:** Kích thu?c Index vu?t quá d? li?u th?c do ch?a các c?t d? li?u thay d?i liên t?c.

## 2. Gi?i Pháp V?i Lean Index
- Thay th? idx_fat_covering b?ng idx_lean_search(sensor_id, recorded_at).
- **Ðánh d?i:** T?c d? SELECT ch?m hon m?t chút do ph?i Bookmark Lookup v? Clustered Index l?y 	emperature, humidity, status. Ð?i l?i, dung lu?ng Index gi?m >70% và t?c d? INSERT tang 4-5 l?n.

## 3. Tr? L?i V?n Ðáp
- **Write Penalty:** Thêm c?t vào Index làm tang kích thu?c node B-Tree, bu?c dia I/O ph?i ho?t d?ng nhi?u hon khi ghi.
- **TINYINT vs VARCHAR(20):** Thay VARCHAR(20) thành TINYINT giúp ti?t ki?m hàng ch?c bytes trên m?i b?n ghi, gi?i phóng hàng Gigabyte b? nh? dia và RAM.
