# BÁO CÁO PHÂN TÍCH C?I TI?N B? C?C (LAYOUT REFACTORING)

## 1. Tác h?i c?a Float & Absolute Positioning c? di?n
- **\position: absolute\ & height c? d?nh:** Làm ph?n t? b? tách kh?i lu?ng hi?n th? (Normal Flow), không dóng góp chi?u cao vào khung cha, gây ra dè b?p ch? phía du?i khi co giãn màn hình.
- **\loat\:** Không t? can gi?a d?c du?c, b?t bu?c có co ch? xóa lu?ng (\clear\ / \overflow: hidden\) d? tránh vi?n cha b? co s?t.

## 2. Gi?i pháp C?u cánh
- **Flexbox (Author Info):** Can gi?a tuy?t d?i (\lign-items: center\), co giãn mu?t theo dung lu?ng n?i dung.
- **CSS Grid (Mosaic Gallery):** B? trí 2D b?t d?i x?ng v?i \grid-template-columns: 2fr 1fr\ và \object-fit: cover\, chuy?n mu?t v? 1 c?t trên Mobile.
- **Bootstrap Grid (Recommended):** Chia 4 c?t linh ho?t RWD b?ng \.col-12 .col-md-6 .col-lg-3\.

## 3. V?n dáp Art Director
- **Author Info ch?n Flexbox:** Do là b? c?c 1 chi?u, kích thu?c ch?/nút không c? d?nh nên dùng Flexbox (\content-first\) t?i uu hon dùng chia c?t c? d?nh.
- **Float collapse:** Float rút ph?n t? ra kh?i lu?ng b? c?c nên th? cha s?t chi?u cao v? 0.
- **Grid thêm ?nh m?i:** Kích ho?t co ch? Implicit Grid t? d?ng t?o các hàng m?i.
