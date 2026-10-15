# BÁO CÁO ÐÁNH GIÁ TÀI NGUYÊN VÀ HI?U NANG H? TH?NG QUICKFEED

## 1. Phân Tích Nguyên Nhân S? C?
- **Ghi ch?m (Timeout):** M?i l?n INSERT, MySQL ph?i c?p nh?t d?ng th?i 5 cây B-Tree, gây ngh?n I/O dia.
- **Phình to ? c?ng:** Index idx_content trên c?t TEXT t?n dung lu?ng l?n; các Index idx_post_type và idx_is_visible có Cardinality r?t th?p gây lãng phí b? nh?.

## 2. Quy?t Ð?nh T?i Uu Index
- **Gi? l?i:** PRIMARY, idx_user_id, idx_created_at (C?n thi?t cho truy v?n l?c và s?p x?p).
- **Xóa b?:** 
  - idx_content: T?n dung lu?ng, thay th? b?ng FULLTEXT Index n?u c?n.
  - idx_post_type: Low Cardinality (ch? 3 giá tr?).
  - idx_is_visible: Very Low Cardinality (ch? 2 giá tr? 0/1).

## 3. Tr? L?i V?n Ðáp
- **T?ng v?t lý khi INSERT 5 Index:** Engine ph?i c?p nh?t 5 cây B-Tree, gây tranh ch?p ghi dia và tách trang (Page Split), làm kéo dài th?i gian ph?n h?i.
- **Cardinality là gì:** Là d? phân bi?t c?a d? li?u. C?t ít giá tr? duy nh?t khi?n Query Optimizer uu tiên quét toàn b?ng (Full Table Scan) thay vì dùng B-Tree Index.
